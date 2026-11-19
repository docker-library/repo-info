## `gradle:jdk17-ubi9`

```console
$ docker pull gradle@sha256:0b24338830549955936ed2c74939e33b2595173ef8dae561f4cfcff0449dca1e
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
$ docker pull gradle@sha256:d69e4213e0773fa243c47112d1d95f3fcc08c2376089d9f0215a81beb8fc2897
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **387.3 MB (387253230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7104968b6ded6a2626daf770f8cd93213d4d8756445b6657ebe25a20f8023262`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:34:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:34:58 GMT
ENV container oci
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:6fb577b33d6b897109754e222f04b40d28eca71e767c06a8f97e8ed992af3521 in /      
# Wed, 18 Nov 2026 11:34:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:34:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:34:59 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
COPY dir:f2e48d20366904f6b13a4d8ede95af5672f192970fe36c37d676c06b33c4fdd7 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:35:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:34:36Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:34:36Z" "architecture"="x86_64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:34:36Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:40:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 21:40:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:40:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 21:40:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:40:43 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 18 Nov 2026 21:41:34 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 18 Nov 2026 21:41:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 21:41:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:41:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 18 Nov 2026 21:41:35 GMT
CMD ["jshell"]
# Wed, 18 Nov 2026 21:55:27 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:55:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:55:27 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:55:27 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:55:27 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:55:32 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 18 Nov 2026 21:55:32 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 21:55:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 21:55:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:55:35 GMT
USER gradle
# Wed, 18 Nov 2026 21:55:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:55:36 GMT
USER root
```

-	Layers:
	-	`sha256:c23374398181a4f60ce7fe1e5ee30bab79eff22d5d3aa94ed598ddee47dc229f`  
		Last Modified: Wed, 18 Nov 2026 16:30:18 GMT  
		Size: 40.7 MB (40676085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761f2d2c5b7e17ecc55d43921e72166fe355e7502d2d02fd15fa8f0824e1f787`  
		Last Modified: Wed, 18 Nov 2026 21:41:01 GMT  
		Size: 27.7 MB (27653681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e36cc0181ae55dfd7e3e83184e3e70bf379a7fb2169425dbcb15f37adc59e11`  
		Last Modified: Wed, 18 Nov 2026 21:41:52 GMT  
		Size: 146.1 MB (146096019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c84cf51eca6d023fc22de5dac1c8c0d9b0b51a871e3d9e53f1ea5cb2dead59`  
		Last Modified: Wed, 18 Nov 2026 21:41:49 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:678e0cd94da3e56ea38b3ff7829f3a2f2b838b090818684ef020c9b23f5c4fca`  
		Last Modified: Wed, 18 Nov 2026 21:41:49 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cece9b9c9714ac12f4050a40fd8b610abdac218cf4a8143c32060d16ebdc84e`  
		Last Modified: Wed, 18 Nov 2026 21:55:51 GMT  
		Size: 1.7 KB (1714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c1fdc9c682dcb8961add2f0a3e9c17f0ad276335811a7a92cca3e71d101602`  
		Last Modified: Wed, 18 Nov 2026 21:55:53 GMT  
		Size: 38.0 MB (37976574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04949df699d8a750150cf4218639307162cc0855f8eb5a2258d7c91d83929551`  
		Last Modified: Wed, 18 Nov 2026 21:55:55 GMT  
		Size: 134.8 MB (134820905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74b4d8bd270d6e8b7f6100c8f6ed91a343f959947ea21ced2d7e4c4a9403b17`  
		Last Modified: Wed, 18 Nov 2026 21:55:51 GMT  
		Size: 25.6 KB (25619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:10160c13bb6dcc6bd19d4a3e98da842c0474f2225e35368baf02ade5db706642
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5450024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad21dbff3d3484cf2ea194d440cb223403220cef294d9c6781af49a9656ba77c`

```dockerfile
```

-	Layers:
	-	`sha256:5dd020d69a000553c5811a85f2c9c3eee72e2bfebd1e1ce8024d5eb681f1de84`  
		Last Modified: Wed, 18 Nov 2026 21:55:51 GMT  
		Size: 5.4 MB (5426792 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:973ceff36c94dbebbec23617c47e672f64f8ea939ac14a5d2b4770a83d37bb71`  
		Last Modified: Wed, 18 Nov 2026 21:55:51 GMT  
		Size: 23.2 KB (23232 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d78a832b9b2089fb860ddf05ae589de867046106932fe6e4afe54dd9cf36831c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **383.9 MB (383906394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76f164bdb7c80b0c1a7c75f734dac131b49e522c24d0cc50e67ab87f7f579e5d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:56 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:57 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:57 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:58 GMT
COPY dir:eee7fabfac1d2f3fb8ad9983912ceacfb7a2d25b2212bd95c123c4d0d51b81b6 in /      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:59 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:59 GMT
COPY dir:7cfd200b3d4ce0bf8a330208f8ea235e169c726ae2f96fcd7ec87ed6561a62d5 in /root/buildinfo/      
# Wed, 18 Nov 2026 11:37:00 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:26Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:26Z" "architecture"="aarch64" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:26Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 21:41:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 21:41:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 21:41:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 21:41:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 21:41:16 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 18 Nov 2026 21:41:24 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 18 Nov 2026 21:41:25 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 21:41:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 21:41:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 18 Nov 2026 21:41:25 GMT
CMD ["jshell"]
# Wed, 18 Nov 2026 21:52:47 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 21:52:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 21:52:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 21:52:47 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 21:52:47 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 21:52:53 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 18 Nov 2026 21:52:53 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 21:52:53 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 21:52:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 21:52:56 GMT
USER gradle
# Wed, 18 Nov 2026 21:52:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 21:52:56 GMT
USER root
```

-	Layers:
	-	`sha256:43a13a3b1a9d32ca4e00b11b77daa68db7900831eb27e2a0bfa523b9764e2ff5`  
		Last Modified: Wed, 18 Nov 2026 17:00:22 GMT  
		Size: 38.7 MB (38744735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55951453d4b9db71ef83bf4f8a2fa8d00127c2124dfcd231726ef85157f6534e`  
		Last Modified: Wed, 18 Nov 2026 21:41:43 GMT  
		Size: 28.1 MB (28080246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e6cb2073f9fe631f1978e161461e240392c407ebd87604665802b7de23be74`  
		Last Modified: Wed, 18 Nov 2026 21:41:46 GMT  
		Size: 145.0 MB (144966372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6e2478f418db0d5a2f2ae046ab6e88eea06e3f2cd4cc0639b7a818d2554b42`  
		Last Modified: Wed, 18 Nov 2026 21:41:42 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85d902be97cee342d6a70134e400c5171484340cc4217cdc67eaa30620804ea`  
		Last Modified: Wed, 18 Nov 2026 21:41:20 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c238e3447ff089eac2ebe80b1bf6cba4cad43f05047bed5a5a1ffbbac767b24a`  
		Last Modified: Wed, 18 Nov 2026 21:53:12 GMT  
		Size: 1.7 KB (1718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d97b5218192b712c9562866b60a8a133917774e8df1171472e12c6d06ad96b26`  
		Last Modified: Wed, 18 Nov 2026 21:53:13 GMT  
		Size: 37.3 MB (37260448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81635cc0ff8fff0f2594f3ff0fc0c3dbdc1d2f3675d131d571bbccd7663679d`  
		Last Modified: Wed, 18 Nov 2026 21:53:16 GMT  
		Size: 134.8 MB (134820908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c478147af96bcf842513a7b2c84a89263d144ecfbc1f05f9e302ea7df6668d2d`  
		Last Modified: Wed, 18 Nov 2026 21:53:12 GMT  
		Size: 29.3 KB (29334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:e62236d77f28bf445c43e068553e979dd6e0f2a1c8d28015c4b5e69b9d275d08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5447773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae4a66daae1c1d28f511e7cade8575336f45f1c42f89abf35e3f6524c31ea8d0`

```dockerfile
```

-	Layers:
	-	`sha256:d0e381a3d6c7f81f629eff020b74d9a215f0aa117754561edd7548a8b408e76c`  
		Last Modified: Wed, 18 Nov 2026 21:53:12 GMT  
		Size: 5.4 MB (5424392 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3057ea1d8ff8445aa42c68b51458fb7f4c5185a200ba034f5fce03847f63ff1`  
		Last Modified: Wed, 18 Nov 2026 21:53:12 GMT  
		Size: 23.4 KB (23381 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:0d76409c4b2ad054aa0b236deab9a6879620ecccbd35566a8b02fb75e09a15f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **394.0 MB (394044213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3abf6a442ce47b169397024d2b5deb8e7961f29f195048992d09fb4b83cfcff`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:40 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:36:41 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:36:41 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:36:41 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:36:41 GMT
ENV container oci
# Wed, 18 Nov 2026 11:36:41 GMT
COPY dir:a0622cc71eaf4ca90209dfaeab4630dfa3434697e7052e6a993c1abb2d3c462c in /      
# Wed, 18 Nov 2026 11:36:42 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:36:42 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:36:42 GMT
COPY dir:3531fb7c7ea53108abeda523af513693c2bdea2399745e0e8bc99a635c3452af in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:36:42 GMT
COPY dir:3531fb7c7ea53108abeda523af513693c2bdea2399745e0e8bc99a635c3452af in /root/buildinfo/      
# Wed, 18 Nov 2026 11:36:43 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:36:14Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:36:14Z" "architecture"="ppc64le" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:36:14Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 22:12:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 22:12:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:12:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 22:12:29 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 22:12:29 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Wed, 18 Nov 2026 22:16:28 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 18 Nov 2026 22:16:32 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 18 Nov 2026 22:16:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 18 Nov 2026 22:16:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 18 Nov 2026 22:16:33 GMT
CMD ["jshell"]
# Wed, 18 Nov 2026 22:41:49 GMT
CMD ["gradle"]
# Wed, 18 Nov 2026 22:41:49 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 18 Nov 2026 22:41:49 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 18 Nov 2026 22:41:49 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 18 Nov 2026 22:41:49 GMT
WORKDIR /home/gradle
# Wed, 18 Nov 2026 22:42:04 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 18 Nov 2026 22:42:04 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 18 Nov 2026 22:42:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 18 Nov 2026 22:42:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 18 Nov 2026 22:42:12 GMT
USER gradle
# Wed, 18 Nov 2026 22:42:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 18 Nov 2026 22:42:14 GMT
USER root
```

-	Layers:
	-	`sha256:16d5500340afa364d9c29bc3f1a5f54b29187eb40d014253a87cdf2f5693005a`  
		Last Modified: Wed, 18 Nov 2026 18:13:22 GMT  
		Size: 45.0 MB (45025159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee59564fc4b96d76411141455bd7841ad14881ff439b73f509441ab77eed18b`  
		Last Modified: Wed, 18 Nov 2026 22:13:11 GMT  
		Size: 30.1 MB (30072171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8e566e77740d21db2680d36f8e5f1ce3771e10f26be2e204e38ad3f68285704`  
		Last Modified: Wed, 18 Nov 2026 22:17:14 GMT  
		Size: 144.9 MB (144878924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9947d8d8a62b277ed85cd1cfa2f63965483d25cf4a38f5faaa96b90fe60b84c`  
		Last Modified: Wed, 18 Nov 2026 22:17:10 GMT  
		Size: 132.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42ef3538351497d48881b5b242fbf0a3029f9ea5eba74fdd767244a3392e327`  
		Last Modified: Wed, 18 Nov 2026 22:17:11 GMT  
		Size: 2.5 KB (2472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08dae2d4d270201fc568414b002e3ac9ab7bc88bfc5d7f9615aa9937a4dc271c`  
		Last Modified: Wed, 18 Nov 2026 22:42:48 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10ee569441851f2daa2fd1c4b21ee917c5c0f9b45cd37da5e818544d91a3eebd`  
		Last Modified: Wed, 18 Nov 2026 22:42:50 GMT  
		Size: 39.2 MB (39242325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119ebae51d1aa205ccd81b953ba795f3755cce63f793556262d0392e573ad428`  
		Last Modified: Wed, 18 Nov 2026 22:42:53 GMT  
		Size: 134.8 MB (134820906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5497205d7ebaa459f2b2f61b0e78a1f16d378aee79754724b40c42a3c42aad2d`  
		Last Modified: Wed, 18 Nov 2026 22:42:48 GMT  
		Size: 381.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:a7dccadf49999acd6fbfd79ae06d974f950a696f1ed91211e8f78504faa8d84e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5444393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dfbadf2cf7b8d3837e86face95674bdcf45c279f2b41bcfbaf063a480b53381`

```dockerfile
```

-	Layers:
	-	`sha256:6a62e7dc6f8b0fccdc9b3d6ad4746b8b09f6f87209859c6e836804ee7c345401`  
		Last Modified: Wed, 18 Nov 2026 22:42:48 GMT  
		Size: 5.4 MB (5421113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47388366fad75b70b907118db08978315867f04a47a76102a76f7b91a50b30e1`  
		Last Modified: Wed, 18 Nov 2026 22:42:48 GMT  
		Size: 23.3 KB (23280 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:5441ab700ed78713c332adcf326b1194d5fb9c7b75f66e6654aa049b567c77b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **374.2 MB (374169906 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:333695e96de6afffb0243f7ebba08f76d83cd292b3173df9f8a764da43eefdbe`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.9"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL io.openshift.expose-services=""
# Wed, 18 Nov 2026 11:38:42 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 18 Nov 2026 11:38:42 GMT
ENV container oci
# Wed, 18 Nov 2026 11:38:43 GMT
COPY dir:cd9df8f36e38eebb483b42fc34557cd51607ec9538d1b4bae66870faf2fbe598 in /      
# Wed, 18 Nov 2026 11:38:43 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 18 Nov 2026 11:38:43 GMT
CMD ["/bin/bash"]
# Wed, 18 Nov 2026 11:38:44 GMT
COPY dir:a4341341e267795a4708499e31f70f2b2423a5b7824c6290a35a69787d62dcea in /usr/share/buildinfo/      
# Wed, 18 Nov 2026 11:38:44 GMT
COPY dir:a4341341e267795a4708499e31f70f2b2423a5b7824c6290a35a69787d62dcea in /root/buildinfo/      
# Wed, 18 Nov 2026 11:38:44 GMT
LABEL "org.opencontainers.image.created"="2026-11-18T11:37:54Z" "org.opencontainers.image.revision"="506148f67275a1ae38119bef9b8ca209a6ff507a" "build-date"="2026-11-18T11:37:54Z" "architecture"="s390x" "vcs-ref"="506148f67275a1ae38119bef9b8ca209a6ff507a" "vcs-type"="git" "release"="1795001629"org.opencontainers.image.created=2026-11-18T11:37:54Z,org.opencontainers.image.revision=506148f67275a1ae38119bef9b8ca209a6ff507a
# Wed, 18 Nov 2026 22:49:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 18 Nov 2026 22:49:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 18 Nov 2026 22:49:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 18 Nov 2026 22:49:22 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 18 Nov 2026 22:49:22 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Thu, 19 Nov 2026 00:04:01 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3e4eca7ead088f080af1476007decf010a240a1eb4e1e78c54fa32fbcc347084';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64le)          ESUM='9f031f48f66350b0b976354738eac984e4863f7205cb7a1a2130272a84bb64e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='5e64213ad83d6f8bbdf565050b1d8f623b46cab18efe8143a2177c4ceb7a6083';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        x86_64)          ESUM='8b9b611d917e3dfd8419d3566b5949226f69b052fed7e109c1368add1dfe8711';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jdk_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Thu, 19 Nov 2026 00:04:04 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 19 Nov 2026 00:04:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 19 Nov 2026 00:04:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 19 Nov 2026 00:04:04 GMT
CMD ["jshell"]
# Thu, 19 Nov 2026 00:09:30 GMT
CMD ["gradle"]
# Thu, 19 Nov 2026 00:09:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 19 Nov 2026 00:09:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 19 Nov 2026 00:09:30 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 19 Nov 2026 00:09:33 GMT
WORKDIR /home/gradle
# Thu, 19 Nov 2026 00:10:33 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Thu, 19 Nov 2026 00:10:33 GMT
ENV GRADLE_VERSION=9.9.1
# Thu, 19 Nov 2026 00:10:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Thu, 19 Nov 2026 00:10:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 19 Nov 2026 00:10:44 GMT
USER gradle
# Thu, 19 Nov 2026 00:10:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 19 Nov 2026 00:10:49 GMT
USER root
```

-	Layers:
	-	`sha256:11a80d17533893f325035f1146f3c176f76cd556f19939362b9a3b3ab4456653`  
		Last Modified: Wed, 18 Nov 2026 17:17:21 GMT  
		Size: 38.7 MB (38669160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab48afbf1e81e85d01125637052ba999dc98c579e4f120af07d6df1a5edafad5`  
		Last Modified: Wed, 18 Nov 2026 22:50:33 GMT  
		Size: 27.7 MB (27687951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6426501dae06480e8a27e3447c90716a3ebf6bd2ae300a8927f40bc2fc73d619`  
		Last Modified: Thu, 19 Nov 2026 00:05:07 GMT  
		Size: 135.4 MB (135390839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72058626044fd2701a449c6a70c5d0a74ad9407839da193eddd345d3def2a674`  
		Last Modified: Thu, 19 Nov 2026 00:05:00 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbf5c7e64cd31e7f5b6d194bd0019049e2c62276555103a0b38dd566f1dd80ec`  
		Last Modified: Thu, 19 Nov 2026 00:05:00 GMT  
		Size: 2.5 KB (2471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def83248709a0691808b68e1cee473d6e017a12435786ed62b0fcf06561f8472`  
		Last Modified: Thu, 19 Nov 2026 00:12:21 GMT  
		Size: 1.7 KB (1723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d05aa84ecfd619c82e71c5b099a810c02024c937f7502e46a1edcac4bb5a2f92`  
		Last Modified: Thu, 19 Nov 2026 00:12:26 GMT  
		Size: 37.6 MB (37596320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:150493ac9f09b03bf4b84a8ca7123292d963006fe83933fb13723fde03290ef8`  
		Last Modified: Thu, 19 Nov 2026 00:12:28 GMT  
		Size: 134.8 MB (134820903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30387e8be4a5757de106cb5ea6b5a14784d57b2fdbada8c573e4d3b9a578bfb5`  
		Last Modified: Thu, 19 Nov 2026 00:12:22 GMT  
		Size: 377.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:ab2da940000f90f71044df434cb74e6a3a60520aee8ad386943cbf06741bd87f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5433599 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8edc81b9ec68f6cbb6875b48d1db2fbd54eab3b818deeef862907bd885e8339a`

```dockerfile
```

-	Layers:
	-	`sha256:04a0aa5265ace01078bb82f76985c6312a1649a1b648863014b6054814de65f7`  
		Last Modified: Thu, 19 Nov 2026 00:12:22 GMT  
		Size: 5.4 MB (5410369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:849089a18a3be2fb2d80059def81f64d33d3c88b408627bc623d4812f59bc526`  
		Last Modified: Thu, 19 Nov 2026 00:12:22 GMT  
		Size: 23.2 KB (23230 bytes)  
		MIME: application/vnd.in-toto+json
