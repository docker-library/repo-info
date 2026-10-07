## `gradle:jdk17-ubi9`

```console
$ docker pull gradle@sha256:6205d4084eefe80ff679801576fec935f67009fdc4ed096851dabaa1aee4847f
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
$ docker pull gradle@sha256:c24412697a27f3c6ac0fe746c9102cf71971b09f1214f32662fdd45e800a7b06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.6 MB (403608043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6070d832d411152131bab3c5e53d94470d238693e8db2c568d8bfe5dbe7cc8f`
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
# Tue, 06 Oct 2026 21:55:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:55:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:55:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:55:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:55:16 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 06 Oct 2026 21:55:23 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:55:24 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:55:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:55:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:55:24 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:08:44 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:08:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:08:44 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:08:44 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:08:44 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:08:49 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:08:49 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:08:49 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:08:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:08:52 GMT
USER gradle
# Tue, 06 Oct 2026 22:08:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:08:53 GMT
USER root
```

-	Layers:
	-	`sha256:5f6aa419d45f217f7bbb8965a7f5de28a0c0124032a4ff1b28141d8f44c4fea7`  
		Last Modified: Tue, 06 Oct 2026 10:25:27 GMT  
		Size: 40.7 MB (40701553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ae804f45ed06912e041199b971d1a5b84edcaa1b66e6be073fe7a7c312fa7c1`  
		Last Modified: Tue, 06 Oct 2026 21:55:39 GMT  
		Size: 27.6 MB (27641139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99a600c926e357a4f9806d09231fa7b02da6413d83bd92175bd911dbe6ba449`  
		Last Modified: Tue, 06 Oct 2026 21:55:42 GMT  
		Size: 145.8 MB (145832681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a333893b1c6105a9f2b3b9a5783b2e4a0be105865da6cfdf69333e328130134e`  
		Last Modified: Tue, 06 Oct 2026 21:55:38 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3476cb257ac1dea869d14bc82e5a03de84aa6fefd894df23106457440fae17e5`  
		Last Modified: Tue, 06 Oct 2026 21:55:38 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb3eb79c07cb58587dda24f63cf73736795e41a0b975c20e29500ee97672575`  
		Last Modified: Tue, 06 Oct 2026 22:09:11 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1cdbda5b58d8323da0aa6a8c26288d0577f1c6576ce998dde455307deb4644`  
		Last Modified: Tue, 06 Oct 2026 22:09:13 GMT  
		Size: 37.9 MB (37878480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a863f6084184f6edb27594b4e8999ced2b044b4098ea6a78da6f9e487e0a2bb9`  
		Last Modified: Tue, 06 Oct 2026 22:09:15 GMT  
		Size: 151.5 MB (151524265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17333baacf4c56f319d9a8c1b84715e8c8fe17db36561ac689dc84f1a27ce0ed`  
		Last Modified: Tue, 06 Oct 2026 22:09:11 GMT  
		Size: 25.6 KB (25617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:87bef1316320376cd36357379a6845130bf95a0ff6ff448738f40578cf96267f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5461846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe255520a517c9d9f780404e2e2f13dc6a81464a735e7c3ae549875c1ed0c95`

```dockerfile
```

-	Layers:
	-	`sha256:e574a90ea22b5adf727c6ec2722c9e963a1da823aa24f37edd2f0b669bc498fa`  
		Last Modified: Tue, 06 Oct 2026 22:09:11 GMT  
		Size: 5.4 MB (5438643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2353188a56f528f634754d06f6e5905e7fe15db3077c8025c43971a67f58cd6f`  
		Last Modified: Tue, 06 Oct 2026 22:09:11 GMT  
		Size: 23.2 KB (23203 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:442778d063981e301cf92b91310c0069aaf8ed34aa8b04c273583abedaf80e2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.3 MB (400257221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e281906e72ebb98e0bbe5c46e2dff75503e225aca34c23a656edd5ab26c6b5c1`
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
# Tue, 06 Oct 2026 21:51:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:51:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:51:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:51:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:51:18 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 06 Oct 2026 21:51:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:51:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:51:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:51:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:51:47 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:11:28 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:11:28 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:11:28 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:11:28 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:11:28 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:11:35 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:11:35 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:11:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:11:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:11:38 GMT
USER gradle
# Tue, 06 Oct 2026 22:11:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:11:38 GMT
USER root
```

-	Layers:
	-	`sha256:6e3ee034ac700d9806da676936d58b1720e1c6ca90636cbbae190d0a885a71b2`  
		Last Modified: Tue, 06 Oct 2026 10:50:47 GMT  
		Size: 38.8 MB (38805435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616fda7fcaf2bf3d61e2aaabc1632d0614fe7997f7240e87bdf3fc12152ea40d`  
		Last Modified: Tue, 06 Oct 2026 21:51:33 GMT  
		Size: 28.1 MB (28073873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7d1c8c76451c25d2d09ef0d8c375e247b739646cb8ce3be358be30ca16e5e5`  
		Last Modified: Tue, 06 Oct 2026 21:52:07 GMT  
		Size: 144.7 MB (144651984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421cbd37e2cb16f152458fa9923ab6dc602810dcaab32fc09ed76e34a0146347`  
		Last Modified: Tue, 06 Oct 2026 21:51:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6f174bca5be08ec8aa90dd4fd0e0fe60597948b01b9bf652dbc56ffdb1ec33d`  
		Last Modified: Tue, 06 Oct 2026 21:52:03 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725bb441e4e290be6463d7e8d16da3acb43afcc2c055de46d309b535c9111f6c`  
		Last Modified: Tue, 06 Oct 2026 22:11:56 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9c16911feae5a0ef76221b9a9fc2852004c42eecbfc8e98502d7b732da9986`  
		Last Modified: Tue, 06 Oct 2026 22:11:58 GMT  
		Size: 37.2 MB (37168023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6acd3b14d48a8876bfe99fb6a3be28fa2fe35017b498ec788d1d5ca794bc0097`  
		Last Modified: Tue, 06 Oct 2026 22:12:00 GMT  
		Size: 151.5 MB (151524263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5abbd20c51984f1020a9a9a324adcfa606ef5e4c2593901e078d30ce525c5d7c`  
		Last Modified: Tue, 06 Oct 2026 22:11:56 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:4cd50c4144eb2bfd4f29ad3132f37564ed8787621641797b906d6132105a7da1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5459632 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8244beb90a7ecd760b8f2fb73d93c5202c60124ca41662928c808877550ab041`

```dockerfile
```

-	Layers:
	-	`sha256:b89c2f89d5fd6564a898c038d932059e8ed7aa573f2adee8aa0c457a6b1d50e5`  
		Last Modified: Tue, 06 Oct 2026 22:11:57 GMT  
		Size: 5.4 MB (5436243 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ebbd48b0605bdb6fdbd9cd138a8389a52a4a5608f67983399a4ebcb78bdc6b9c`  
		Last Modified: Tue, 06 Oct 2026 22:11:56 GMT  
		Size: 23.4 KB (23389 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:d574e74dfe1d92f9e6faf2a5d8144e1a985ba9911905fd672c9c5226f1f26795
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.5 MB (411504953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536bacdf9c9c428551f3c66d683d191b26d295694c6ac0d50f90d7af649204fe`
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
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 06 Oct 2026 21:53:18 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:53:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:53:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:53:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:53:23 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:13:46 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:13:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:13:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:13:46 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:13:46 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:14:03 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:14:03 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:14:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:14:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:14:08 GMT
USER gradle
# Tue, 06 Oct 2026 22:14:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:14:10 GMT
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
	-	`sha256:098681e8588dffd6ea737ac63f9f857203f26d9bbd56ae1755dbda8380fb9edf`  
		Last Modified: Tue, 06 Oct 2026 21:54:06 GMT  
		Size: 145.7 MB (145687485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7b69c453fe8358da9ec8a8a90d9352d90330dd62c5cf622d85e1fd15ecf101`  
		Last Modified: Tue, 06 Oct 2026 21:54:03 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d7a0b7af60b03a7f02a735528e43d222c94cb5c995ae2158bed5ffbbc2189b6`  
		Last Modified: Tue, 06 Oct 2026 21:54:03 GMT  
		Size: 2.5 KB (2470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a64130ed017ac91cb2829422b99c7a640a2a65b0d42327ba863ad5e1a59d95b`  
		Last Modified: Tue, 06 Oct 2026 22:15:03 GMT  
		Size: 1.7 KB (1680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34fab4c435b05d1c7e521d37aaccc8dd058b0d278e06a9dcb0d0deac611cc23d`  
		Last Modified: Tue, 06 Oct 2026 22:15:05 GMT  
		Size: 39.1 MB (39138642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f1e12009f447da6ea66c3be8035c21292ca8b92f9a1febea611b5848a7b927`  
		Last Modified: Tue, 06 Oct 2026 22:15:08 GMT  
		Size: 151.5 MB (151524265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92720df9aad182ea47d1b02a08e39532cab1bab1b916f6cffaffb4e91353cb65`  
		Last Modified: Tue, 06 Oct 2026 22:15:04 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:33f1cce094a74043ad1ff6f3aafd9104f7c07e049711d59977e91f9f43357c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb5426b6ab76f71b4f3e4a58fac8521c5ee48cca6fa6e5ea5e12f06776389ed`

```dockerfile
```

-	Layers:
	-	`sha256:0109c74cfb8f4ab1ba07b9cfd6a6bc6648b59694ed0e81788fe9ed8e601e1184`  
		Last Modified: Tue, 06 Oct 2026 22:15:04 GMT  
		Size: 5.4 MB (5434214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a1812b5ab4890b400445a4a46aafda52492d9b6ae99d20118e653530a6d13cb`  
		Last Modified: Tue, 06 Oct 2026 22:15:03 GMT  
		Size: 23.3 KB (23288 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:b7db20dd5ae571041fb8df392b26e97b7d6856f43394fbcacb235ad46b690f3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.3 MB (391327726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fddb658548a33d53fc2e0048946c5728f7a2b08b2ce72437f80e9d43759b83a`
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
# Tue, 06 Oct 2026 21:49:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 21:49:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:49:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 06 Oct 2026 21:49:56 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 06 Oct 2026 21:49:56 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 06 Oct 2026 21:50:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 06 Oct 2026 21:50:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 06 Oct 2026 21:50:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 06 Oct 2026 21:50:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 06 Oct 2026 21:50:43 GMT
CMD ["jshell"]
# Tue, 06 Oct 2026 22:09:30 GMT
CMD ["gradle"]
# Tue, 06 Oct 2026 22:09:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 06 Oct 2026 22:09:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 06 Oct 2026 22:09:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 06 Oct 2026 22:09:30 GMT
WORKDIR /home/gradle
# Tue, 06 Oct 2026 22:09:34 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 06 Oct 2026 22:09:34 GMT
ENV GRADLE_VERSION=9.8.0
# Tue, 06 Oct 2026 22:09:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Tue, 06 Oct 2026 22:09:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 06 Oct 2026 22:09:38 GMT
USER gradle
# Tue, 06 Oct 2026 22:09:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 06 Oct 2026 22:09:38 GMT
USER root
```

-	Layers:
	-	`sha256:6777def25a899459b707cc96f2d5877f5351bd987ce1bcc32688d02bd60b3dfb`  
		Last Modified: Tue, 06 Oct 2026 11:01:36 GMT  
		Size: 38.8 MB (38771997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baf2bcdd80a6d58608e6ed3b4d1ccc6530df6a22eb5d853b65fd0def4b49f93a`  
		Last Modified: Tue, 06 Oct 2026 21:50:18 GMT  
		Size: 27.7 MB (27672930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba9ddac8ba1dc608649bc9edfb0cd672601f1ec374f838dc09558c04bd275d7d`  
		Last Modified: Tue, 06 Oct 2026 21:51:08 GMT  
		Size: 135.9 MB (135878807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf3a4033f5b3a8ea3a12ccbc7f7ce32e77f04fc8b662d378d39fa6038b4727db`  
		Last Modified: Tue, 06 Oct 2026 21:51:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5de6e9c3bc94dcf8a493b3fa2303210f69e53fc61608d79fac7e0a56bef2f2`  
		Last Modified: Tue, 06 Oct 2026 21:51:04 GMT  
		Size: 2.5 KB (2467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b41e7494c893f0250a0515422759ae47fcbe07850ef0795cc04213e4d961b6`  
		Last Modified: Tue, 06 Oct 2026 22:09:59 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4205ad30e990fa6b2beacae67efebc322a1111b250fca638724c170835337623`  
		Last Modified: Tue, 06 Oct 2026 22:10:00 GMT  
		Size: 37.5 MB (37475050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734fa6a01d4ffaeee8b85ff9484759b5af09b978be2a0174999185bf24f95400`  
		Last Modified: Tue, 06 Oct 2026 22:10:02 GMT  
		Size: 151.5 MB (151524262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d03859e89e859c9bc3cb640d4704db08b537dd672d78ca4e2770aaae84890691`  
		Last Modified: Tue, 06 Oct 2026 22:09:59 GMT  
		Size: 373.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:09f32fe19091ffc3d44f1c8b69fdaa5732cf2ac522ef507bf5afe324a14a1848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5446708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:890939a826dfbe4238e02bc41efc8b630865782bc8ed068f7e4568baee615a5b`

```dockerfile
```

-	Layers:
	-	`sha256:dc267abc7ab81176d589b1d0ae8eb32bfdfc26d85a167fd993d42510c2636ef7`  
		Last Modified: Tue, 06 Oct 2026 22:10:00 GMT  
		Size: 5.4 MB (5423470 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf63a1354557473274c8fb266ca1ddf67aafee797c395eba095c4b9a4e6f7ec6`  
		Last Modified: Tue, 06 Oct 2026 22:09:59 GMT  
		Size: 23.2 KB (23238 bytes)  
		MIME: application/vnd.in-toto+json
