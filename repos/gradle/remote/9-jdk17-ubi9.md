## `gradle:9-jdk17-ubi9`

```console
$ docker pull gradle@sha256:eb69abf7abe4e9d5678aa9ffdf8919a7445108f42e42b558a162cefd3c0e4ae0
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
$ docker pull gradle@sha256:b7c718f50b6583bc18e3078dada0294152a64e3d2d422385feccbaec348e5689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **403.8 MB (403764910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68ff3f17630cc017d92c08da5783d07b937dd2fe7921919a92bac6baeac0451`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:53 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:35:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:35:54 GMT
ENV container oci
# Tue, 13 Oct 2026 13:35:54 GMT
COPY dir:2fcd1ca2b477955927b3f5efd987f047101cd586e309b90ff9e3d22cde3fa5f5 in /      
# Tue, 13 Oct 2026 13:35:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:35:55 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:35:55 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
COPY dir:1e352836f570c2fb121d4b2c30cdc17fed57486a0a1cdaa55d16d9971f6b0aa6 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:35:56 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:35:30Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:35:30Z" "architecture"="x86_64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:35:30Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:57:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:57:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:57:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:57:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:57 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 22:58:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:58:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:58:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:58:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:58:05 GMT
CMD ["jshell"]
# Tue, 20 Oct 2026 17:53:30 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:53:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:53:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:53:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:53:30 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:53:34 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 20 Oct 2026 17:53:34 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:53:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:53:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:53:37 GMT
USER gradle
# Tue, 20 Oct 2026 17:53:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:53:37 GMT
USER root
```

-	Layers:
	-	`sha256:3655575efb35316918c7e7d2cb81ae7db0e4613f7ffbbadb4980cc0549ac2834`  
		Last Modified: Tue, 13 Oct 2026 14:51:42 GMT  
		Size: 40.7 MB (40737290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24364426bb52185dc7a9f408fcc52ef66dae203f36c328bc08b1dfbad2c7459`  
		Last Modified: Tue, 13 Oct 2026 22:58:21 GMT  
		Size: 27.6 MB (27637035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10003dc331b2a59d93da2a5f63974f05a3ac1c25d08a3bcddc848a5c9562e512`  
		Last Modified: Tue, 13 Oct 2026 22:58:23 GMT  
		Size: 145.8 MB (145832683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db76b0675287cc2da77baf9868668661d40431c8a6bdd3ae50a5996af6316bb1`  
		Last Modified: Tue, 13 Oct 2026 22:58:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba01408de989420533bb9d84fceef8232590af715d286473ea2d7b4a1958971`  
		Last Modified: Tue, 13 Oct 2026 22:58:20 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793bd241246e394d7d6393610d61ab729f48ce23a774e41bcfd884bbbbbf36b`  
		Last Modified: Tue, 20 Oct 2026 17:53:53 GMT  
		Size: 1.7 KB (1685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39ab267ead25e618bee19a0952fe033387544dc40b072151954ba7e39267b545`  
		Last Modified: Tue, 20 Oct 2026 17:53:55 GMT  
		Size: 38.0 MB (37994356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6323506166f2614e176aaf9b495508ee3cc5d5a5c2719e99f8c18451242717`  
		Last Modified: Tue, 20 Oct 2026 17:53:57 GMT  
		Size: 151.5 MB (151533618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf0fc2fc9d1f27cced3d7c5fdb796bb9d181ac9c7513a10242fd2682594c77d0`  
		Last Modified: Tue, 20 Oct 2026 17:53:53 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:c8c0cd5dafa7aba12e2307363a69bb4acf0539391572b180c3cfc4eeb9e122b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5466634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:152943ae34c319329c216be759c9ea9a194672cc3355253f672e8513a6d9599e`

```dockerfile
```

-	Layers:
	-	`sha256:7a9b2a75483d31c66a7e1111ddf1d2f9432eabcf9f8b042d7fd2cece2fe20385`  
		Last Modified: Tue, 20 Oct 2026 17:53:53 GMT  
		Size: 5.4 MB (5443430 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af62378dc19918df38962f09f5df9c734627fb34f44889725d7a8cfdc3cb3fb3`  
		Last Modified: Tue, 20 Oct 2026 17:53:53 GMT  
		Size: 23.2 KB (23204 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:30a67c63dc3ced11f26e33a25d7646ae6bbab37e0f879b70d52e9e2b805028d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **400.4 MB (400377170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6006c9f27e83ae337c77c8445280caec82d2f0bea400378cb7f74f4504ce60b0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 13 Oct 2026 13:38:25 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:38:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:38:26 GMT
ENV container oci
# Tue, 13 Oct 2026 13:38:27 GMT
COPY dir:e0a9e23521da92370ef8c1c702abc899055259c540969022f975e6a9a5db74eb in /      
# Tue, 13 Oct 2026 13:38:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:38:28 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:38:28 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
COPY dir:cb0d3172eff5b926f8d3aeafcff4dec012c6f16fa22d7fd5ba6222362588b316 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:38:29 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:55Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:55Z" "architecture"="aarch64" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:55Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:57:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:57:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:57:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:57:06 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:06 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 22:57:14 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:57:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:57:15 GMT
CMD ["jshell"]
# Tue, 20 Oct 2026 17:55:06 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:55:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:55:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:55:06 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:55:06 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:55:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 20 Oct 2026 17:55:10 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:55:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:55:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:55:13 GMT
USER gradle
# Tue, 20 Oct 2026 17:55:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:55:14 GMT
USER root
```

-	Layers:
	-	`sha256:8aa74cd1ed0a010c9e42b8f13484468b32e94ff9405ce295cbde110e8119e733`  
		Last Modified: Tue, 13 Oct 2026 14:52:30 GMT  
		Size: 38.8 MB (38804143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202659c4162712683adb402e87a7bfefa9e7526c3f4268b3f2e3e75742c0e94b`  
		Last Modified: Tue, 13 Oct 2026 22:57:32 GMT  
		Size: 28.1 MB (28077825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a028d5b1f7734306342face4013534bfb2f092735248160f4e3566e36ca5e03`  
		Last Modified: Tue, 13 Oct 2026 22:57:35 GMT  
		Size: 144.7 MB (144651972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cbfb0d69e8988543bc59481c15cc13a78d5d382411ea66edaf4ea845f860e1`  
		Last Modified: Tue, 13 Oct 2026 22:57:31 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50deef073f40ea0b32cf25bb66d699cf4df16586698de33925e304e0ce6be2dd`  
		Last Modified: Tue, 13 Oct 2026 22:57:10 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a04ce8e95344f48af27781a525cb6c2516dbafd7d70e412c7aa2de97bb06540e`  
		Last Modified: Tue, 20 Oct 2026 17:55:31 GMT  
		Size: 1.7 KB (1686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2592f607022cb29819021e67a80e3752277382b35281efc3139433eaef205af`  
		Last Modified: Tue, 20 Oct 2026 17:55:33 GMT  
		Size: 37.3 MB (37275958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845ef08ffa48fa5f0bdaef80cad1de942cacf1713dd1e1131e935683e8667763`  
		Last Modified: Tue, 20 Oct 2026 17:55:35 GMT  
		Size: 151.5 MB (151533618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e0387c6de8990eeb6e32d4a34ae57c9b5fc6987d0b7e18854177223cddb2c0c`  
		Last Modified: Tue, 20 Oct 2026 17:55:31 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:427318ee6ebebdefe2e1eebd4237187b6f6614f4129611e9201e23678f33fc11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5464383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988d1299102d622ac57b05c867e04f657fbd9665ba3c11abab823ddb3144f2b5`

```dockerfile
```

-	Layers:
	-	`sha256:06e5d9469ba43b44008936a3ee1ab4b51775904a5913dc3d9693454ebd7673a2`  
		Last Modified: Tue, 20 Oct 2026 17:55:32 GMT  
		Size: 5.4 MB (5441030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1f8d052aa14af46810d035bc8b2319958def824ef76789a608ce3171775ef558`  
		Last Modified: Tue, 20 Oct 2026 17:55:31 GMT  
		Size: 23.4 KB (23353 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:1e56a0589e612adc0f76a68ed6b69988b68cbf3c97d90eea54e554a3acebd9ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **411.6 MB (411615057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1cc2c0f106aac1f6b27d6b9328c3c8991fba1a4b788a7c577032d1ba8b2c301`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:37:36 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:37:36 GMT
ENV container oci
# Tue, 13 Oct 2026 13:37:37 GMT
COPY dir:92a05a611f8cfd3f18a14877aab31596763f3ce8c391d4c01d7a65b9223e525a in /      
# Tue, 13 Oct 2026 13:37:37 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:37:37 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:37:38 GMT
COPY dir:f649eae5e047426b308cc16906636d1cf529fb6e62f6a67019b2139bab1fbf90 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:37:38 GMT
COPY dir:f649eae5e047426b308cc16906636d1cf529fb6e62f6a67019b2139bab1fbf90 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:37:38 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:37:13Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:37:13Z" "architecture"="ppc64le" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:37:13Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:55:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:39 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:39 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 23:01:04 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 23:01:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 23:01:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 23:01:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 23:01:10 GMT
CMD ["jshell"]
# Tue, 13 Oct 2026 23:25:26 GMT
CMD ["gradle"]
# Tue, 13 Oct 2026 23:25:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 13 Oct 2026 23:25:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 13 Oct 2026 23:25:26 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 13 Oct 2026 23:25:28 GMT
WORKDIR /home/gradle
# Tue, 13 Oct 2026 23:25:51 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 13 Oct 2026 23:25:51 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 13 Oct 2026 23:25:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:58:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:58:04 GMT
USER gradle
# Tue, 20 Oct 2026 17:58:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:58:07 GMT
USER root
```

-	Layers:
	-	`sha256:52db23f98827188005b2d11f8472b68dc9dae4832da358ce51a293a9e6d44c9f`  
		Last Modified: Tue, 13 Oct 2026 18:23:23 GMT  
		Size: 45.2 MB (45185378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db7a63728b6d2c561d09b30ac4673530838cbe6ecb9a7c79e43cf42a6ca2183`  
		Last Modified: Tue, 13 Oct 2026 22:56:38 GMT  
		Size: 30.1 MB (30058019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6943b58904cba56543176e578dec037477febfc1d8058beb3e2df84daa536d81`  
		Last Modified: Tue, 13 Oct 2026 23:01:49 GMT  
		Size: 145.7 MB (145687515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cd9c0e1e5520d04c0b2afa9f317e280af988688652a6981e1250ad092369b0`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98040c3df39540479c988fcdd99feece03a9fbdb5a916d37557a8593fb777887`  
		Last Modified: Tue, 13 Oct 2026 23:01:45 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2bd20aed1a431509002fda24ef9a7029410dd2c22332e10241bf175db9f0e4a`  
		Last Modified: Tue, 13 Oct 2026 23:27:02 GMT  
		Size: 1.7 KB (1672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b408bcf9748b543633b326a404b6cd4110ce9964a611b6e417ca636b55dd3a0`  
		Last Modified: Tue, 13 Oct 2026 23:27:04 GMT  
		Size: 39.1 MB (39145834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ba80c1bdd9fb3ba7e895748b0e1c2bfd29b2e94a544880826570d31e64eab78`  
		Last Modified: Tue, 20 Oct 2026 17:59:02 GMT  
		Size: 151.5 MB (151533623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4eeb54b2629d11607cba20a3bb010fdf4df516f54552651391249de6f189084`  
		Last Modified: Tue, 20 Oct 2026 17:58:58 GMT  
		Size: 383.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:283a6bf88be7c7ef032a442c03bd73a4c1cc5f750b920815c7d65f4a71978fee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c7eb7110bd7667ada88551bd4c5db7a44030a2afe322e9d4d0ea389733f6a2e0`

```dockerfile
```

-	Layers:
	-	`sha256:bd2568c90d48caa521d21908234fb0fa7012d2e6ea7821082da0f5e5257c8547`  
		Last Modified: Tue, 20 Oct 2026 17:58:58 GMT  
		Size: 5.4 MB (5434222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a1326e7487d1427fe4438b4b3380a818f95ad5db31b79f6a79334dac2b606d7`  
		Last Modified: Tue, 20 Oct 2026 17:58:58 GMT  
		Size: 23.3 KB (23288 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:c65a0301c3c81c11d663711b93b2c2e99620ede19b2ba5a744dc4eb97b2e6baa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **391.3 MB (391319685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8964698d4f834c80b42fc5265f419ca727aa167f03d8ec3e00cfdbf032e7234`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 13 Oct 2026 13:51:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 13 Oct 2026 13:51:22 GMT
ENV container oci
# Tue, 13 Oct 2026 13:51:23 GMT
COPY dir:7b7ca8add44d56f9303258822b4d7fd16581aac3e39cfce7fff36c7eb5210bc7 in /      
# Tue, 13 Oct 2026 13:51:24 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 13 Oct 2026 13:51:24 GMT
CMD ["/bin/bash"]
# Tue, 13 Oct 2026 13:51:24 GMT
COPY dir:edfef536892069c292831fabfe65e2c3b4df11883a93b284fffee92de7afd0f2 in /usr/share/buildinfo/      
# Tue, 13 Oct 2026 13:51:25 GMT
COPY dir:edfef536892069c292831fabfe65e2c3b4df11883a93b284fffee92de7afd0f2 in /root/buildinfo/      
# Tue, 13 Oct 2026 13:51:25 GMT
LABEL "org.opencontainers.image.created"="2026-10-13T13:50:24Z" "org.opencontainers.image.revision"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "build-date"="2026-10-13T13:50:24Z" "architecture"="s390x" "vcs-ref"="31c16e4570d0b2dd27707ce88c88f65b1212cf78" "vcs-type"="git" "release"="1791898448"org.opencontainers.image.created=2026-10-13T13:50:24Z,org.opencontainers.image.revision=31c16e4570d0b2dd27707ce88c88f65b1212cf78
# Tue, 13 Oct 2026 22:55:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:20 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:20 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 22:56:07 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64le)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        x86_64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:56:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:56:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:56:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:56:08 GMT
CMD ["jshell"]
# Tue, 13 Oct 2026 23:10:54 GMT
CMD ["gradle"]
# Tue, 13 Oct 2026 23:10:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 13 Oct 2026 23:10:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 13 Oct 2026 23:10:54 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 13 Oct 2026 23:10:54 GMT
WORKDIR /home/gradle
# Tue, 13 Oct 2026 23:10:58 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 13 Oct 2026 23:10:58 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 13 Oct 2026 23:10:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:51:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:51:05 GMT
USER gradle
# Tue, 20 Oct 2026 17:51:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:51:06 GMT
USER root
```

-	Layers:
	-	`sha256:b421128c4f2da5c1105e564cfecccc4c5ea51f70d0d332542711a7e09cf7ab4b`  
		Last Modified: Tue, 13 Oct 2026 15:25:04 GMT  
		Size: 38.8 MB (38753682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b0408a8eae56fc0e13b5343009a1d3ef3a5f912ae74ccc4ababfb2a93bd489`  
		Last Modified: Tue, 13 Oct 2026 22:55:50 GMT  
		Size: 27.7 MB (27670420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d2395e6d682b446f8c889832829caeb93b605298def6e00200fa4c0cce059a`  
		Last Modified: Tue, 13 Oct 2026 22:56:34 GMT  
		Size: 135.9 MB (135878841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4aa19355f251181d94b3137a60022d9aa3ece2969fecda0ae4d2c8e37ee3a8`  
		Last Modified: Tue, 13 Oct 2026 22:56:30 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998f921649d160686b6b5297d7873dd8a9fda0dcbc4b104f37c9a8dd7098c59d`  
		Last Modified: Tue, 13 Oct 2026 22:56:31 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4a0a94c59111b5429d7045873403d15122cea6e6c93430aa9001e0ef6dd055`  
		Last Modified: Tue, 13 Oct 2026 23:11:28 GMT  
		Size: 1.7 KB (1674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9abdceb16f8151560295b2aaab0420a3722463ac724aabf3bf5900b94df2ee`  
		Last Modified: Tue, 13 Oct 2026 23:11:29 GMT  
		Size: 37.5 MB (37478429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31340204954ea4d1d68227ce943c97a031e4e822e972e9a9f26da3f6188765ee`  
		Last Modified: Tue, 20 Oct 2026 17:51:36 GMT  
		Size: 151.5 MB (151533626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e57614fa05f11e05e4139ebab5ba7f02914012837d5ad3d82eaae11dd8b7ce`  
		Last Modified: Tue, 20 Oct 2026 17:51:33 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:45c8a54b1926949793a376782b39acf7e9a0df38270b05e8f5327a2cbfd3124d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5446716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa3828205e0f9feef300937eb9ff3a8d6a9df684839d23fd2480735c8102b39a`

```dockerfile
```

-	Layers:
	-	`sha256:eccfa50e4c8fc4b14c47bed2fde834d0b8003bf52b2fb6ef8104b7f7b8551f10`  
		Last Modified: Tue, 20 Oct 2026 17:51:33 GMT  
		Size: 5.4 MB (5423478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc1197f1e4bf548f66ebd034743c757fd20a26c954126655ffc9d07f78f62660`  
		Last Modified: Tue, 20 Oct 2026 17:51:33 GMT  
		Size: 23.2 KB (23238 bytes)  
		MIME: application/vnd.in-toto+json
