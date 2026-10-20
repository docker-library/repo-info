## `gradle:ubi9`

```console
$ docker pull gradle@sha256:786132f6a52592e16a33580a8656930d0648cfdbc1dd6370d58297ec648a10e0
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

### `gradle:ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:619336f68b90f40bda473cd974cd5060f812fa16a99973760e37092e9cf78cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **416.1 MB (416052219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5eff21c5bfb3ffbb24d88e76af29522b0ed40f5a0f7f0be6921faa1363167ba`
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
# Tue, 13 Oct 2026 22:58:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:58:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:58:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:58:18 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:58:18 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 22:58:26 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:58:27 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:58:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:58:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:58:27 GMT
CMD ["jshell"]
# Tue, 20 Oct 2026 17:51:25 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:51:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:51:25 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:51:25 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:51:25 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:51:29 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 20 Oct 2026 17:51:29 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:51:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:51:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:51:32 GMT
USER gradle
# Tue, 20 Oct 2026 17:51:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:51:33 GMT
USER root
```

-	Layers:
	-	`sha256:3655575efb35316918c7e7d2cb81ae7db0e4613f7ffbbadb4980cc0549ac2834`  
		Last Modified: Tue, 13 Oct 2026 14:51:42 GMT  
		Size: 40.7 MB (40737290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4a082a02003e99217d0bdae1ef858af11348487d29c68ce46031a5b951742c`  
		Last Modified: Tue, 13 Oct 2026 22:58:45 GMT  
		Size: 27.6 MB (27637080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27950df99e99705b1ed2fb917413380e46ad116c1e0602c01bc8aa768d491eb5`  
		Last Modified: Tue, 13 Oct 2026 22:58:48 GMT  
		Size: 158.1 MB (158120039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13ee36e45e8f0321c95dec8afe73cf97c656acd4cf3f99819ba6431100db9a0`  
		Last Modified: Tue, 13 Oct 2026 22:58:44 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9f235a504dc7bed0412f4ef6065b59c4f38dd9ba8e0d6550260a5c36cc9d467`  
		Last Modified: Tue, 13 Oct 2026 22:58:44 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba272e9dfcbfb2a7b65ff7c8c8513af9e37b74f947c208ba9dff5e6235b20da6`  
		Last Modified: Tue, 20 Oct 2026 17:51:50 GMT  
		Size: 1.7 KB (1681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb30682ac12a3d23710dd93191c09958b0a0b4a268905cf67705a8e82f726938`  
		Last Modified: Tue, 20 Oct 2026 17:51:52 GMT  
		Size: 38.0 MB (37994309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:866a2fb9fdad0ac2012c410ccdaeaba511487dc668d64f793faf3480b89e725b`  
		Last Modified: Tue, 20 Oct 2026 17:51:54 GMT  
		Size: 151.5 MB (151533575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74cf72449d18fc6efb16912a12eceebe4e04850b93bd8d9acbc746fd9fc492b5`  
		Last Modified: Tue, 20 Oct 2026 17:51:50 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:924044446d3dec0b25f29e06e1063f3d37f14187a8b0632d3b89d6ccae5bb64d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5469074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d9f4b57a7668b67f149ea64179a50f5d2e9ce54bdfc009ea7e926d18b1142c`

```dockerfile
```

-	Layers:
	-	`sha256:61ae1d715c03700b1e62c4cec7c528087f9da444db23c095c68a376b40027eaf`  
		Last Modified: Tue, 20 Oct 2026 17:51:51 GMT  
		Size: 5.4 MB (5445576 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4738efba764905c64817639f154f3b330a50066e25051bee76823c7e36a49409`  
		Last Modified: Tue, 20 Oct 2026 17:51:50 GMT  
		Size: 23.5 KB (23498 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:502370b94aa3ef2e0cee2a7899beacde919cefebcff887b889cf17e38efa37ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **412.1 MB (412128938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be6b8a598798d307b73c67d8de16674cf3dc083a9de5733e9239bd6e83152b4d`
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
# Tue, 13 Oct 2026 22:57:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:57:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:57:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:57:07 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:57:07 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 22:57:15 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:57:16 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:57:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:57:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:57:16 GMT
CMD ["jshell"]
# Tue, 20 Oct 2026 17:53:50 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:53:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:53:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:53:50 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:53:50 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:53:56 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 20 Oct 2026 17:53:56 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:53:56 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:54:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:54:00 GMT
USER gradle
# Tue, 20 Oct 2026 17:54:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:54:01 GMT
USER root
```

-	Layers:
	-	`sha256:8aa74cd1ed0a010c9e42b8f13484468b32e94ff9405ce295cbde110e8119e733`  
		Last Modified: Tue, 13 Oct 2026 14:52:30 GMT  
		Size: 38.8 MB (38804143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c56dd0852497414f2a25cfafecb5117ff8c8d80b16c651a7d72dccdbdeafb17d`  
		Last Modified: Tue, 13 Oct 2026 22:57:35 GMT  
		Size: 28.1 MB (28077845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a8254808c57a0c6161cca115c30881f6c3e37188ca3bd9eca049cf29d128ef6`  
		Last Modified: Tue, 13 Oct 2026 22:57:38 GMT  
		Size: 156.4 MB (156403410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517f8aedd25be7d6152d5eef73875c527db4e87821965e544b6ea903616aad24`  
		Last Modified: Tue, 13 Oct 2026 22:57:34 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:717af4d3515f21e3b838d725fd5a70550465eba05e795d59013a62539ee76146`  
		Last Modified: Tue, 13 Oct 2026 22:57:34 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9902d31fd023522f9a4d4d0215c28cafd9420f171d446033b469dbc784eafbbe`  
		Last Modified: Tue, 20 Oct 2026 17:54:19 GMT  
		Size: 1.7 KB (1679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aacb5934a937673f5de02c54b7e6c76090fc4157c9e95951ef61b4242a12908`  
		Last Modified: Tue, 20 Oct 2026 17:54:21 GMT  
		Size: 37.3 MB (37276274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99bd7c8c9fea232bbb936733eec9106267366ca59fd1b02a85dcd5ae82b401f0`  
		Last Modified: Tue, 20 Oct 2026 17:54:24 GMT  
		Size: 151.5 MB (151533619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da6d232fd04d3fce6e8bfe5eec560084e12cc3067beb57c063a8e11264d62268`  
		Last Modified: Tue, 20 Oct 2026 17:54:19 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:d0aff050c97326e73972e107a757b31225890b815dfdec70d840a68dd0f81329
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5466847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9553ba5513cf5e515fd3a06ae5de47b6c3836dc1072ac5a7413fd62c51c0ef1`

```dockerfile
```

-	Layers:
	-	`sha256:7a6b3532fc6d5771e8a8433643c2291fa8832136eb0d0e4e2d71ca9468f4c739`  
		Last Modified: Tue, 20 Oct 2026 17:54:19 GMT  
		Size: 5.4 MB (5443188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16786bd6be904017ae5a5694e33b036eebc833e887653a24eef9c087c9ca6255`  
		Last Modified: Tue, 20 Oct 2026 17:54:19 GMT  
		Size: 23.7 KB (23659 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:3b5e1dd298c1082eeeedb05a4089bcddce1e5a05a8050696fc9e42c69e73c607
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **424.2 MB (424211927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41a141e1b84dd3b7fdd27609a20c282024d74d79374b6265b5ca5dc8cdf1d92a`
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
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 23:03:30 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 23:03:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 23:03:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 23:03:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 23:03:35 GMT
CMD ["jshell"]
# Tue, 13 Oct 2026 23:23:00 GMT
CMD ["gradle"]
# Tue, 13 Oct 2026 23:23:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 13 Oct 2026 23:23:00 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 13 Oct 2026 23:23:00 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 13 Oct 2026 23:23:00 GMT
WORKDIR /home/gradle
# Tue, 13 Oct 2026 23:23:29 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 13 Oct 2026 23:23:29 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 13 Oct 2026 23:23:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:53:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:53:09 GMT
USER gradle
# Tue, 20 Oct 2026 17:53:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:53:12 GMT
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
	-	`sha256:413f635c20d0ff72ca5ae97f5bf11087da7ee5c4750d05f878be214a0bf24f0d`  
		Last Modified: Tue, 13 Oct 2026 23:04:24 GMT  
		Size: 158.3 MB (158284434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933160372a0ba4c6ae41afb56f364d3bd15a03575d65de5fb9322b30a258557d`  
		Last Modified: Tue, 13 Oct 2026 23:04:20 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b7beaee854d5189fe61c19316c3f9feddd5c5dfddc051cdbcd7393746a5e7e`  
		Last Modified: Tue, 13 Oct 2026 23:04:20 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510f765cf70c3e417fb5faef670e47caf0f1bbc052847dc80cc99013678beaaf`  
		Last Modified: Tue, 13 Oct 2026 23:24:31 GMT  
		Size: 1.7 KB (1673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552a0e5890ff91b25fdb69c562492695dacfc0f8e40898ffe5a23440accd0700`  
		Last Modified: Tue, 13 Oct 2026 23:24:33 GMT  
		Size: 39.1 MB (39145775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208a428f1cb3a74807558c620bc83735ef9af7eda02dbc5b4c8fed9ea637c972`  
		Last Modified: Tue, 20 Oct 2026 17:54:10 GMT  
		Size: 151.5 MB (151533625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a66533ca2d3da607bcca73c2d80b942a99c20329269e5ab7ab22987985a090c6`  
		Last Modified: Tue, 20 Oct 2026 17:54:06 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:0cd5031d20a0e289c4ae359378cf776a70b9174a5bb79a9bf17ea1b6d09ab463
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5459961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a4230630c580a48ca9b3e92ebb8e5aba7d5add94dc0b674ece151eedac0b4b4`

```dockerfile
```

-	Layers:
	-	`sha256:19526740e8e3ce6a1b8929a7848b52289aa4aa3d209bf7d7e4b41a9562fdfd53`  
		Last Modified: Tue, 20 Oct 2026 17:54:06 GMT  
		Size: 5.4 MB (5436374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15b6c2d88cf181bacb11f6fee650ef36f0ef5beaecdeea47cedc7f4791f6482c`  
		Last Modified: Tue, 20 Oct 2026 17:54:06 GMT  
		Size: 23.6 KB (23587 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:a1fa4fe7fd9947b09d826f3446ad88746756d5721b9368dda554b7234fc45986
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **402.8 MB (402789250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:764f3b1453a8b06c674d45938400d4b7e29ff8d2bf3d3f9152c52141fe32983f`
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
# Tue, 13 Oct 2026 22:55:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 13 Oct 2026 22:55:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 13 Oct 2026 22:55:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 13 Oct 2026 22:55:19 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 13 Oct 2026 22:55:19 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Tue, 13 Oct 2026 22:56:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64le)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        x86_64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 13 Oct 2026 22:56:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 13 Oct 2026 22:56:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 13 Oct 2026 22:56:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 13 Oct 2026 22:56:54 GMT
CMD ["jshell"]
# Tue, 13 Oct 2026 23:10:59 GMT
CMD ["gradle"]
# Tue, 13 Oct 2026 23:10:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 13 Oct 2026 23:10:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 13 Oct 2026 23:10:59 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 13 Oct 2026 23:10:59 GMT
WORKDIR /home/gradle
# Tue, 13 Oct 2026 23:11:04 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 13 Oct 2026 23:11:04 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 13 Oct 2026 23:11:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:49:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:49:26 GMT
USER gradle
# Tue, 20 Oct 2026 17:49:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:49:27 GMT
USER root
```

-	Layers:
	-	`sha256:b421128c4f2da5c1105e564cfecccc4c5ea51f70d0d332542711a7e09cf7ab4b`  
		Last Modified: Tue, 13 Oct 2026 15:25:04 GMT  
		Size: 38.8 MB (38753682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471399dea002c553d2223fd2c3822da81c69d42b7f33da91288237c34a543fa4`  
		Last Modified: Tue, 13 Oct 2026 22:55:41 GMT  
		Size: 27.7 MB (27670469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8314815838dc7c4085e1cd0ce5d03126df2881f2e83cfd425143ca3ae6291beb`  
		Last Modified: Tue, 13 Oct 2026 22:57:19 GMT  
		Size: 147.3 MB (147347987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef87670e1a976cc62a9666304f1a2089f4b73c4c56fa7f68bbd878fe1ee299b`  
		Last Modified: Tue, 13 Oct 2026 22:57:16 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a12cc5ce9bdfc501f724ff1cb7b76963f4741cc407fc0f0d51a0e1b016fa73`  
		Last Modified: Tue, 13 Oct 2026 22:57:16 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:878aa4bd4d6f616e8b1c99e78bbc7447f330fe7282db538d779048efd26fcbb6`  
		Last Modified: Tue, 13 Oct 2026 23:11:30 GMT  
		Size: 1.7 KB (1676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03edd0c0424aa35832baa91c12188a794bc6436595242f4c084d757f9809be6c`  
		Last Modified: Tue, 13 Oct 2026 23:11:31 GMT  
		Size: 37.5 MB (37478801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d141c344da979554e5d1ee6a73a6c85ca7d312a6d076dd724b53c9caeb7330`  
		Last Modified: Tue, 20 Oct 2026 17:49:55 GMT  
		Size: 151.5 MB (151533621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3adae332fb38890e7ca43b0a87c4ec678933d50a7f5c230c109b32fa42d9e045`  
		Last Modified: Tue, 20 Oct 2026 17:49:53 GMT  
		Size: 380.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:8184336d2ba63430cf29699e1f7ec507b2f985c7241f2d22bd77fb1b489bf5b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5449156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69ad2fd38f232e5ecb4294f5aafc5c2acd597872669f2f1601f4afbc66b10023`

```dockerfile
```

-	Layers:
	-	`sha256:b87b1f8c037dde0eadd8be229d52b6cc81b720c08ef59afc5bbf8935688e9bd0`  
		Last Modified: Tue, 20 Oct 2026 17:49:53 GMT  
		Size: 5.4 MB (5425624 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4785adba3cbdc43c6bc9e671a5363e8bcf7b3873cf25257bf4a603a5a0ec014f`  
		Last Modified: Tue, 20 Oct 2026 17:49:53 GMT  
		Size: 23.5 KB (23532 bytes)  
		MIME: application/vnd.in-toto+json
