## `gradle:jdk17-ubi9`

```console
$ docker pull gradle@sha256:ec40d97269753d7cbe36b781b3180dc7c6a086110b3fd2dd1fbf07bc3b0e7e47
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

### `gradle:jdk17-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:1b2368c743d85ef46a8ca3310a8104d07d45efe0fd434863116368c0d3ce0a60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.7 MB (403669546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1f1e1e5eaa5f328750be8a033f91388f04ea15e2ae410acb2128b8debb8fe1c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:34:11 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:34:11 GMT
ENV container oci
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:0bbd26efdf764fb2a803e39c5f9309efe9ad8dccb284af5b7fa3a1cebd98b694 in /      
# Mon, 26 Oct 2026 21:34:12 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:34:12 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:34:12 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
COPY dir:bccb91511254896ec73fa490978e787e07440fafd7ecf802fe25adcbef4f6383 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:34:13 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:33:49Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:33:49Z" "architecture"="x86_64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:33:49Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:43:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 17:43:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:43:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 17:43:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:43:43 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 27 Oct 2026 17:43:50 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 27 Oct 2026 17:43:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 17:43:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:43:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 17:43:51 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 18:10:26 GMT
CMD ["gradle"]
# Tue, 27 Oct 2026 18:10:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Oct 2026 18:10:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 27 Oct 2026 18:10:26 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Oct 2026 18:10:26 GMT
WORKDIR /home/gradle
# Tue, 27 Oct 2026 18:10:32 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 27 Oct 2026 18:10:32 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 27 Oct 2026 18:10:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 27 Oct 2026 18:10:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 27 Oct 2026 18:10:34 GMT
USER gradle
# Tue, 27 Oct 2026 18:10:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 27 Oct 2026 18:10:35 GMT
USER root
```

-	Layers:
	-	`sha256:8f4a4ef7ec87af1eb84ab8382222fe461e965d7d1c9f8b34dd0890b7009a51bb`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 40.7 MB (40654237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d6d759956e5e22c4eaeebf053eb3d4abbe14cd24c488d061e3a69b1e73540cd`  
		Last Modified: Tue, 27 Oct 2026 17:44:09 GMT  
		Size: 27.6 MB (27631195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75c091227e0dbbe68b106aa823e7cc8a189c5224865bebcbffbebe0b7e362703`  
		Last Modified: Tue, 27 Oct 2026 17:44:12 GMT  
		Size: 145.8 MB (145832729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed9ad21adb01c478762991b8d7f381dc028413402a9af938fcc3780e984a1da`  
		Last Modified: Tue, 27 Oct 2026 17:44:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc2512cc1f5b90d606d00fc8cd6492863473074ccceb3c43a87b6f5ac508df8c`  
		Last Modified: Tue, 27 Oct 2026 17:44:08 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f177463249ce5ed2dcb759e2f4e9f5e55bb5cf00785b0a4c42f6002d5728bd1`  
		Last Modified: Tue, 27 Oct 2026 18:10:51 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ea389f46a13285b4bdb7a000600978b843a1ba4be0bce2a298d31a61c6600e`  
		Last Modified: Tue, 27 Oct 2026 18:10:52 GMT  
		Size: 38.0 MB (37987849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:003c15077a99f3f692dfd68400af67f03f5e1ffbdf946d61765da20be43fdf84`  
		Last Modified: Tue, 27 Oct 2026 18:10:55 GMT  
		Size: 151.5 MB (151533615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b373b38e5f05a913551710a165d8609ba8e81a214b67c25141375d3d17bb52`  
		Last Modified: Tue, 27 Oct 2026 18:10:51 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:36af90d2985f4226557f75cd63687f60aba68e1aef440d665f6b9af0be07f02c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5448099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0cab10dbd46e58dc0f53f49a95d9d991390b5fbb7893789d0602156a1d63b13b`

```dockerfile
```

-	Layers:
	-	`sha256:9e6e56fc61ba63427611c53f6e887eaaeb9e8807c9fc2ae467ebf75972db23db`  
		Last Modified: Tue, 27 Oct 2026 18:10:51 GMT  
		Size: 5.4 MB (5424895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80b7544d5fb887296b260787fe08b695fad7ba0fb13479d958cc82cac662910a`  
		Last Modified: Tue, 27 Oct 2026 18:10:51 GMT  
		Size: 23.2 KB (23204 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b8d4cf3427c4497d5fe8775d8f56fbdf821dd24b683c8661a21661fab72d60de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.3 MB (400257243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cfed773c36a27cbb535ad5fdfb71cff1da83b56bf67bd783099cf5c3c41027f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:35:42 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:35:43 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:35:43 GMT
ENV container oci
# Mon, 26 Oct 2026 21:35:44 GMT
COPY dir:4514a7c12566dae98fd88118fcb921951dfe1c5fb68bcd967fa7403f502ed7b3 in /      
# Mon, 26 Oct 2026 21:35:44 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:35:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:35:45 GMT
COPY dir:c38a861e2747d356888cd619d2f45be75d2e7b4ef861b9622c424d2044b8abe0 in /root/buildinfo/      
# Mon, 26 Oct 2026 21:35:46 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:35:14Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:35:14Z" "architecture"="aarch64" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:35:14Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 17:40:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 17:40:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 17:40:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 17:40:48 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 27 Oct 2026 17:40:48 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 27 Oct 2026 17:40:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 27 Oct 2026 17:40:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 17:40:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 17:40:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 17:40:57 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 17:51:14 GMT
CMD ["gradle"]
# Tue, 27 Oct 2026 17:51:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Oct 2026 17:51:14 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 27 Oct 2026 17:51:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Oct 2026 17:51:14 GMT
WORKDIR /home/gradle
# Tue, 27 Oct 2026 17:51:20 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 27 Oct 2026 17:51:20 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 27 Oct 2026 17:51:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 27 Oct 2026 17:51:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 27 Oct 2026 17:51:23 GMT
USER gradle
# Tue, 27 Oct 2026 17:51:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 27 Oct 2026 17:51:24 GMT
USER root
```

-	Layers:
	-	`sha256:2b634c6fd82e08c6136245eb9edf17629696bc4de0436c0eaad35e2a1f3e8050`  
		Last Modified: Mon, 26 Oct 2026 23:50:49 GMT  
		Size: 38.7 MB (38703543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e010a7a2218e741d9c72bb26ea5e0f6a2eb38fd1edfbb5aaf48c9e3c8358b139`  
		Last Modified: Tue, 27 Oct 2026 17:41:16 GMT  
		Size: 28.1 MB (28068826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb4f58e8ac85e33b2830cc9e3dee5c3070baa16d434fde5d1911f608c738c07`  
		Last Modified: Tue, 27 Oct 2026 17:41:18 GMT  
		Size: 144.7 MB (144651973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3aace0b6a576fa519b426127477ddacbcb414782158d026c0e9371bd239191d`  
		Last Modified: Tue, 27 Oct 2026 17:41:14 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c08b5d133eed40e6347105d593108c3167cb82c053990dd7e5576142999f3a2c`  
		Last Modified: Tue, 27 Oct 2026 17:41:14 GMT  
		Size: 2.5 KB (2469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22e3d92e0dc5cffe359cd2c362eb849f1492ec87fca5e1fe1347b42c47ff497`  
		Last Modified: Tue, 27 Oct 2026 17:51:41 GMT  
		Size: 1.7 KB (1683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f6b210ac7c86952090aaa449d7dc70537e7635a6e021ca6070f81ca620dcd2`  
		Last Modified: Tue, 27 Oct 2026 17:51:43 GMT  
		Size: 37.3 MB (37265631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe532ecf95529047194f5e9df7655842d228d00917fbad2c8f4381ae0951f00`  
		Last Modified: Tue, 27 Oct 2026 17:51:45 GMT  
		Size: 151.5 MB (151533620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082e828b809d75f2f7d2125424287d9b51d60d3666a23e5b4098e1f2923c68bf`  
		Last Modified: Tue, 27 Oct 2026 17:51:41 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:d709a4905fb765db82197aad56b536c74428e34512aeb5c3da613cea41cb30ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5445884 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:127fd9f724aa1e9c0d0ebb619122884e8c2a6fb1679504a37ca73d4504a315ca`

```dockerfile
```

-	Layers:
	-	`sha256:adaac2041c4ac8faf17065eea0e490dc599ddb45222f1a55cfb2ffc45337ee7d`  
		Last Modified: Tue, 27 Oct 2026 17:51:42 GMT  
		Size: 5.4 MB (5422495 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f226df8493e94378ef546ebcf464a397cb224fad45849d044243a49d93f8abe3`  
		Last Modified: Tue, 27 Oct 2026 17:51:41 GMT  
		Size: 23.4 KB (23389 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:447a2ba2cd8cf7f68deeb0a30905e3e46b8c95b9f14c913c5c0a4e6187b78316
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.6 MB (411553637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80fe8472ec8e9010ffdc11858e4dc1f2c7b12ce89275559e07918b34b499908`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 26 Oct 2026 21:35:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 26 Oct 2026 21:35:23 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:23 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 26 Oct 2026 21:35:23 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 26 Oct 2026 21:35:23 GMT
LABEL io.openshift.expose-services=""
# Mon, 26 Oct 2026 21:35:23 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 26 Oct 2026 21:35:23 GMT
ENV container oci
# Mon, 26 Oct 2026 21:35:24 GMT
COPY dir:76f9a4094e45eeb39a4e9a27fa5c3380093f5b1c6dddfc5065a7d1e628d2df65 in /      
# Mon, 26 Oct 2026 21:35:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 26 Oct 2026 21:35:24 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 21:35:24 GMT
COPY dir:d2aab5f21efbeeabc1e68bae811e08acdbc33a24cb3ee190740e8cc094a3866f in /usr/share/buildinfo/      
# Mon, 26 Oct 2026 21:35:24 GMT
COPY dir:d2aab5f21efbeeabc1e68bae811e08acdbc33a24cb3ee190740e8cc094a3866f in /root/buildinfo/      
# Mon, 26 Oct 2026 21:35:25 GMT
LABEL "org.opencontainers.image.created"="2026-10-26T21:35:01Z" "org.opencontainers.image.revision"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "build-date"="2026-10-26T21:35:01Z" "architecture"="ppc64le" "vcs-ref"="8b3700629f01b12b6b7b939daabd7c1a5c7026bb" "vcs-type"="git" "release"="1793050346"org.opencontainers.image.created=2026-10-26T21:35:01Z,org.opencontainers.image.revision=8b3700629f01b12b6b7b939daabd7c1a5c7026bb
# Tue, 27 Oct 2026 20:05:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 20:05:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 20:05:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 20:05:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 27 Oct 2026 20:05:16 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 27 Oct 2026 20:08:50 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 27 Oct 2026 20:08:52 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 20:08:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 20:08:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 20:08:53 GMT
CMD ["jshell"]
# Tue, 27 Oct 2026 22:18:31 GMT
CMD ["gradle"]
# Tue, 27 Oct 2026 22:18:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 27 Oct 2026 22:18:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 27 Oct 2026 22:18:31 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 27 Oct 2026 22:18:32 GMT
WORKDIR /home/gradle
# Tue, 27 Oct 2026 22:18:48 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 27 Oct 2026 22:18:48 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 27 Oct 2026 22:18:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 27 Oct 2026 22:18:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 27 Oct 2026 22:18:53 GMT
USER gradle
# Tue, 27 Oct 2026 22:18:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 27 Oct 2026 22:18:57 GMT
USER root
```

-	Layers:
	-	`sha256:11f9e672dcc1c0741f881480c93354f6ceadf86e2f867365bec13544b3480349`  
		Last Modified: Tue, 27 Oct 2026 00:11:36 GMT  
		Size: 45.0 MB (45013989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a21cceb6ab153c3b9aef4d6e821923845dd68c7f9045fd925d1667139d3158ad`  
		Last Modified: Tue, 27 Oct 2026 20:05:54 GMT  
		Size: 30.1 MB (30055603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760655b4b24340d0f1183d67eb122fc592d21e2a722d055016e4f2e3d6b8cd56`  
		Last Modified: Tue, 27 Oct 2026 20:09:33 GMT  
		Size: 145.7 MB (145687527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a630893efb4f68b420ae2699ed6e7e5e2fad2241e5675a09edcb0d7a73fe77f8`  
		Last Modified: Tue, 27 Oct 2026 20:09:29 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4b289ff69f54fac21e95746e29f314d73a95818f75833caaab378b1ecb62c5`  
		Last Modified: Tue, 27 Oct 2026 20:09:29 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394166013c1aa12a405f0bf2371867fda48efaf8a59fccda64e009eecf2b56e4`  
		Last Modified: Tue, 27 Oct 2026 22:20:00 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2ca54f359df55581f4b251baa1efee55fb15431cdbd1ef57ce266ef35308b7b`  
		Last Modified: Tue, 27 Oct 2026 22:20:02 GMT  
		Size: 39.3 MB (39258285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db91e6439fd102d0d9ddb4c10a5dd4ee3d79107eb567dd15e0729d363a3f99c0`  
		Last Modified: Tue, 27 Oct 2026 22:20:04 GMT  
		Size: 151.5 MB (151533534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a3aa46d625d57ef13330510993e40c5a4c97bba4696a712c3910b38fcb4e91f`  
		Last Modified: Tue, 27 Oct 2026 22:20:00 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:4e2763786afb04b1463ad30090ab727a56c119edeaf15c84e930c15004eaa6bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5443750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73e68aa4eb6a11fab91284f19bb0e1f7ff9c89ae900802d3782bfec5af384e20`

```dockerfile
```

-	Layers:
	-	`sha256:ee3a8da1bc60af1c93db26c3e8c3314d270b22862416c76f958bc28a9c2e70e4`  
		Last Modified: Tue, 27 Oct 2026 22:20:00 GMT  
		Size: 5.4 MB (5420462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12c5c475065f71a430404dabb93c776d7a0ccfcac043619c6e8b9f35b0e5eb0c`  
		Last Modified: Tue, 27 Oct 2026 22:20:00 GMT  
		Size: 23.3 KB (23288 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:db3d37c0e9014534cb34a91ad26ac521ddb9ea829cbb6c2252f5780cc7b54087
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.4 MB (391408908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9aa2bea63c13e169d58641a109723901498cb2fbd52ce144066ad535c5f25111`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL maintainer="Red Hat, Inc."
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL vendor="Red Hat, Inc."
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Thu, 29 Oct 2026 06:07:47 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.openshift.expose-services=""
# Thu, 29 Oct 2026 06:07:48 GMT
LABEL io.openshift.tags="minimal rhel9"
# Thu, 29 Oct 2026 06:07:48 GMT
ENV container oci
# Thu, 29 Oct 2026 06:07:49 GMT
COPY dir:fbe70df2419d9d545aec8be7bad9997e5a9470d232d17e4723645c000c9d18cc in /      
# Thu, 29 Oct 2026 06:07:49 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Thu, 29 Oct 2026 06:07:49 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 06:07:49 GMT
COPY dir:588a8b4a64bceafe5ba9c367157b3010af3511599e7ed68fbc111003233f4907 in /usr/share/buildinfo/      
# Thu, 29 Oct 2026 06:07:50 GMT
COPY dir:588a8b4a64bceafe5ba9c367157b3010af3511599e7ed68fbc111003233f4907 in /root/buildinfo/      
# Thu, 29 Oct 2026 06:07:50 GMT
LABEL "org.opencontainers.image.created"="2026-10-29T06:06:55Z" "org.opencontainers.image.revision"="9eac53daf60c61895dd274c7017f0605f411e146" "build-date"="2026-10-29T06:06:55Z" "architecture"="s390x" "vcs-ref"="9eac53daf60c61895dd274c7017f0605f411e146" "vcs-type"="git" "release"="1793253163"org.opencontainers.image.created=2026-10-29T06:06:55Z,org.opencontainers.image.revision=9eac53daf60c61895dd274c7017f0605f411e146
# Thu, 29 Oct 2026 18:54:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 18:54:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 18:54:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 18:54:44 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Thu, 29 Oct 2026 18:54:44 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Thu, 29 Oct 2026 18:54:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 29 Oct 2026 18:54:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 18:54:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 18:54:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 18:54:57 GMT
CMD ["jshell"]
# Thu, 29 Oct 2026 19:04:29 GMT
CMD ["gradle"]
# Thu, 29 Oct 2026 19:04:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 29 Oct 2026 19:04:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 29 Oct 2026 19:04:29 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 29 Oct 2026 19:04:29 GMT
WORKDIR /home/gradle
# Thu, 29 Oct 2026 19:04:34 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 29 Oct 2026 19:04:34 GMT
ENV GRADLE_VERSION=9.8.2
# Thu, 29 Oct 2026 19:04:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Thu, 29 Oct 2026 19:04:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 29 Oct 2026 19:04:40 GMT
USER gradle
# Thu, 29 Oct 2026 19:04:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 29 Oct 2026 19:04:41 GMT
USER root
```

-	Layers:
	-	`sha256:c2d671d5a5027eb53117b93c8cac23d41361feef032e1ced7dbb740fe4e89807`  
		Last Modified: Thu, 29 Oct 2026 06:54:57 GMT  
		Size: 38.7 MB (38723239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09977ad7dc9348d729ce271e63fe074529fe804ff475d084a234445452db83bf`  
		Last Modified: Thu, 29 Oct 2026 18:55:19 GMT  
		Size: 27.7 MB (27667272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db1bbe11a203eb194c2b4ef938ececd2cf359bdc647c887a993c815dce4262a`  
		Last Modified: Thu, 29 Oct 2026 18:55:34 GMT  
		Size: 135.9 MB (135878769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9f1aee2bc94db3794b58b7c404dc7bbbbf574e6e2910643fc6f92ce0447b128`  
		Last Modified: Thu, 29 Oct 2026 18:55:30 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116bcd889fb4882ce8d27213b13192ececc72db14f986b46de9329c46136382c`  
		Last Modified: Thu, 29 Oct 2026 18:55:30 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcaab7be581721108c67c43cb9aaec8ec22c46ee0147958a065709d4ebeaa127`  
		Last Modified: Thu, 29 Oct 2026 19:05:12 GMT  
		Size: 1.7 KB (1678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6a9fe89dc3a5be59f96dd57191573813d118a2b1fa47f82248bf1c5c0a18e9f`  
		Last Modified: Thu, 29 Oct 2026 19:05:14 GMT  
		Size: 37.6 MB (37601317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:309bde6f68fea0b982cfac12d3c628b5888df89c4d843d306db1208c29c95c19`  
		Last Modified: Thu, 29 Oct 2026 19:05:18 GMT  
		Size: 151.5 MB (151533619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f573b7498168ec1e8dc1c3d9769a0756b2717787315c8a4a6efd4395cb7cc4`  
		Last Modified: Thu, 29 Oct 2026 19:05:13 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:0961943f9297b505ea1c97c39285a1b119169dd579831401ba4e63e86451eaa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5432963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f42d9d0f46ef6122da730115e39473be3c2c547362e44249d3ba30c17d1a559b`

```dockerfile
```

-	Layers:
	-	`sha256:570d1bccfc1d21458d27689db0f7c385bdf05d9146e15ca724d6a2c43166f2ff`  
		Last Modified: Thu, 29 Oct 2026 19:05:14 GMT  
		Size: 5.4 MB (5409726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd32f44f75ba4f043f0c4db85eff49a72425781053e60314a0ad55a8ae2d6774`  
		Last Modified: Thu, 29 Oct 2026 19:05:13 GMT  
		Size: 23.2 KB (23237 bytes)  
		MIME: application/vnd.in-toto+json
