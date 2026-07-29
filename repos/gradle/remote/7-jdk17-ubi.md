## `gradle:7-jdk17-ubi`

```console
$ docker pull gradle@sha256:a4cb69a996540c75ec55bd6ecfaf056296d0b705979f633f4aa2258e555b86b5
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

### `gradle:7-jdk17-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:b131b1d9c5609ac30f9321cf1ef52174302116981f97d68f033eaa5ffc04f0ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **380.7 MB (380727061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e93cfe6c6813f0e9e41e1fad4e0e10bb6d0e7761d3e696f4ad10f7e87a78df`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:52:58 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:52:58 GMT
ENV container oci
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:3c47f725c6bc27e82037ebd32982187d7c3fdb026b27c68e8afaccfbbd204f83 in /      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:52:59 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
COPY dir:88ca7b58f97dea3704884de71bceb4f3a79841ca966f51886e956053ea83a0d9 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:52:59 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:52:32Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:52:32Z" "architecture"="x86_64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:52:32Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:26:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:26:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:26:55 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 29 Jul 2026 18:27:27 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:27:28 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:27:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:27:28 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:40:54 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:40:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:40:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:40:54 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:40:55 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:40:58 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:40:58 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 29 Jul 2026 18:40:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 29 Jul 2026 18:41:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:41:01 GMT
USER gradle
# Wed, 29 Jul 2026 18:41:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:41:01 GMT
USER root
```

-	Layers:
	-	`sha256:4ea47df267f432c56243aff71faf74e328d0558e2bee83a9cd394e31d62a4129`  
		Last Modified: Tue, 28 Jul 2026 05:41:44 GMT  
		Size: 40.7 MB (40700572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def36818b7080e634cdadab02f039c172f5555baca067527daabd0eee6fae4aa`  
		Last Modified: Wed, 29 Jul 2026 18:27:13 GMT  
		Size: 27.7 MB (27662512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01cfc5c2b70721519a547df5b2815b4df9a60c99f76221b9caa0e3c93f05e99c`  
		Last Modified: Wed, 29 Jul 2026 18:27:47 GMT  
		Size: 145.9 MB (145915462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03d64b064731ae1e12b910421fc805ccd999d744d4b05b764ef5b64d1b63b312`  
		Last Modified: Wed, 29 Jul 2026 18:27:43 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e7b4ea5491aee4580375eb1f87b1314d552b5646a495372b8ea1a53e2c302cc`  
		Last Modified: Wed, 29 Jul 2026 18:27:44 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327017976d169e854690041186ea882db8858d3e50d9b87cfdfb4ad5a9c9c798`  
		Last Modified: Wed, 29 Jul 2026 18:41:15 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26acdedfd1f7a388f3ade6b6eca4a7a1278f0be4acb12a4091c76dd80752e4e3`  
		Last Modified: Wed, 29 Jul 2026 18:41:17 GMT  
		Size: 37.9 MB (37920048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258bc90e7b5724542922077ce14df0f92c9e28276aca36fb73db41ee9e3b5b97`  
		Last Modified: Wed, 29 Jul 2026 18:41:19 GMT  
		Size: 128.5 MB (128469410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ede9595fbb793eaf31e3f6ef7d589932ad33ac8636767e61af629031e4db56c`  
		Last Modified: Wed, 29 Jul 2026 18:41:15 GMT  
		Size: 54.9 KB (54898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:66bd4c0e36e9ba235798404ccb71ed97cbc6f1dced7ccd65f52a59629f379cca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5341340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b118a0a9f6d3abbc4a5ac07230176796eb9c1defd54496877ddc7b6c48e05d01`

```dockerfile
```

-	Layers:
	-	`sha256:7f6ee355553f114b13fe507cb333ec3fc8e4203885382f4b255371efde394d95`  
		Last Modified: Wed, 29 Jul 2026 18:41:15 GMT  
		Size: 5.3 MB (5317757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:93a9ecd137b8617579e991baea767014c4434b815814309b19d6b3a31953a2cc`  
		Last Modified: Wed, 29 Jul 2026 18:41:15 GMT  
		Size: 23.6 KB (23583 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b0d9e124d7b90d131c09aae35d3225f2ea01bc01b4966168c650c07e0b0f76dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.4 MB (377417100 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ca2802cc3c9c86291c1eae978ea495966cd4ba172c8a4583a72366d35683256`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:54:32 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:54:32 GMT
ENV container oci
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:769b2354bc8edc7a99743746593875a88e8e231193bec804f059f55be2297f6b in /      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:54:33 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
COPY dir:73e49171ade23d8843dd062725616e7374a5634990954b80e20cf6a75ad5de95 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:54:33 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:54:11Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:54:11Z" "architecture"="aarch64" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:54:11Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:26:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:26:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:26:43 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 29 Jul 2026 18:26:51 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:26:52 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:26:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:26:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:26:52 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:40:08 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:40:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:40:08 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:40:08 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:40:08 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:40:12 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:40:12 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 29 Jul 2026 18:40:12 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 29 Jul 2026 18:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:40:15 GMT
USER gradle
# Wed, 29 Jul 2026 18:40:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:40:15 GMT
USER root
```

-	Layers:
	-	`sha256:4431e8a4eff3b814ee9a578afed4f42f29096b2d18c83f5206d2321ac4cb1a54`  
		Last Modified: Tue, 28 Jul 2026 05:41:47 GMT  
		Size: 38.8 MB (38838081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73bcae5675c066c73188e4644b7f616db0ffa461bde98998497f95ecaeacbbaf`  
		Last Modified: Wed, 29 Jul 2026 18:27:09 GMT  
		Size: 28.1 MB (28105465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe77b49e4367b0b738f790a33d8174b861102806135f786b35b0378ec973d62`  
		Last Modified: Wed, 29 Jul 2026 18:27:11 GMT  
		Size: 144.7 MB (144734783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca25474c6594734761d9425ad2d197947a7782cb559a80a0df0246dac79df86c`  
		Last Modified: Wed, 29 Jul 2026 18:27:08 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0b64e2a4c314c18d3a76367efed0eb87719a9df14f15180fc7aae1e7da9e1ed`  
		Last Modified: Wed, 29 Jul 2026 18:27:08 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf05d3123d490c46a5c8244d9b1f8be60a8bb98127c0488b56c7e0ce087ab3fe`  
		Last Modified: Wed, 29 Jul 2026 18:40:31 GMT  
		Size: 1.7 KB (1703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a6db7356ba74dc91dbd7c8ffd07f34796ede26ff4bc14965cd61160ac96206`  
		Last Modified: Wed, 29 Jul 2026 18:40:33 GMT  
		Size: 37.2 MB (37205674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6b240aca661ebb1aa0deb34ada579c1521cb37bdf7b579d08ea9f558f2157c7`  
		Last Modified: Wed, 29 Jul 2026 18:40:35 GMT  
		Size: 128.5 MB (128469419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25af3f195778598acd796beaa75e666f6fd8b209de3a9acac7b8e5b00017221b`  
		Last Modified: Wed, 29 Jul 2026 18:40:31 GMT  
		Size: 59.5 KB (59522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:f940819a79b38c3010332b878f60d409aafbbf0a7a9430ebbace235d4827399a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5339141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55d51156773b9a1655653eb691a1533076e951fa1a7f6bdde252aa4362a4a06c`

```dockerfile
```

-	Layers:
	-	`sha256:d821685161303ea6b2cac580a7c99887a6e9001c6843f1ed2fc0178c82a91a4b`  
		Last Modified: Wed, 29 Jul 2026 18:40:31 GMT  
		Size: 5.3 MB (5315385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4cc2b014d694f31c140d1f8c529f4c8159153c322769cc8403ec9c31179fcd58`  
		Last Modified: Wed, 29 Jul 2026 18:40:31 GMT  
		Size: 23.8 KB (23756 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:df640049c43fa791070f981e1db4bf0fc57b7e194e09e04ddbaa2b792953babd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **388.7 MB (388714529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8711e6e59eccebc16f72a8a3896a54479f9822de3eaeb08665044c56eefe7df0`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:54:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:54:52 GMT
ENV container oci
# Tue, 28 Jul 2026 04:54:53 GMT
COPY dir:ead6dfd8daa4b9b6629c7f724c3a065a0434fea5b65b40a4701f8bbf68896feb in /      
# Tue, 28 Jul 2026 04:54:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:54:53 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:54:53 GMT
COPY dir:f7741ef708ecae2cf1ad4483f82e5acf389a99b77a6b6a9425eb9e5251e43acc in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:54:53 GMT
COPY dir:f7741ef708ecae2cf1ad4483f82e5acf389a99b77a6b6a9425eb9e5251e43acc in /root/buildinfo/      
# Tue, 28 Jul 2026 04:54:54 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:54:37Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:54:37Z" "architecture"="ppc64le" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:54:37Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:26:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:26:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:26:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:26:35 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 29 Jul 2026 18:30:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:30:08 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:30:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:30:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:30:08 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:53:10 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:53:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:53:10 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:53:10 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:53:11 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:57:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:57:10 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 29 Jul 2026 18:57:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 29 Jul 2026 18:57:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:57:16 GMT
USER gradle
# Wed, 29 Jul 2026 18:57:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:57:17 GMT
USER root
```

-	Layers:
	-	`sha256:8e2eeec0dafab99e35933cc122057a2e272a9accfff00ea41c91c8054ae0ac21`  
		Last Modified: Tue, 28 Jul 2026 06:11:54 GMT  
		Size: 45.1 MB (45134930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:568347f481894d15447f5d2bcb61e7ae1c30fe1d301ead3a68f31b269f7bce35`  
		Last Modified: Wed, 29 Jul 2026 18:27:13 GMT  
		Size: 30.1 MB (30088614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e7c7d91238d646c559985f3291ec73b16ccb9639c0afbf3c81f1450f3fc400`  
		Last Modified: Wed, 29 Jul 2026 18:30:46 GMT  
		Size: 145.8 MB (145788672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ecac6bc1bc4916bbbdd971b2f4f636f69e5672fc44ace6df4a1d741fc2ad385`  
		Last Modified: Wed, 29 Jul 2026 18:30:43 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d8cb0ca6b751d44dd64d0a866c9545f446186fa9b67d7ca087159fc7a06687f`  
		Last Modified: Wed, 29 Jul 2026 18:30:43 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c0d8e4b8da634ba00828092af6501067a3de98348b530b234d1a9bd2e2a6fb`  
		Last Modified: Wed, 29 Jul 2026 18:54:12 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff4e201e703174b37c4e39589895a151b01357530d7eda388408c33edeb49ed`  
		Last Modified: Wed, 29 Jul 2026 18:58:01 GMT  
		Size: 39.2 MB (39193722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b413954dd3ab05e28ba6da4ac9a6001f48283cdfc730451763e7ddbb812083f3`  
		Last Modified: Wed, 29 Jul 2026 18:58:03 GMT  
		Size: 128.5 MB (128469420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc14eaf0c664adb9e165a9faf2131beb90d3813ccc7d74cecf0a2f991658f407`  
		Last Modified: Wed, 29 Jul 2026 18:57:59 GMT  
		Size: 35.0 KB (35007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:1860793311f7e724dbc729437d932cd571750d2ecb3d5baaef14e9df6b954ebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5336981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e464a7b0a7cd89750a3d12736608706bfd89d58ff88af189f3265e2c418c1935`

```dockerfile
```

-	Layers:
	-	`sha256:997672405b24f2e4c29b9bd28c63ad58dde08043278739e734b7205f758c8137`  
		Last Modified: Wed, 29 Jul 2026 18:57:59 GMT  
		Size: 5.3 MB (5313336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a318736005c1ae17564fe981af2e3c99319c0554b4e6bf0a04825c53fe0728a1`  
		Last Modified: Wed, 29 Jul 2026 18:57:59 GMT  
		Size: 23.6 KB (23645 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:d041410f8dafaac9ed464d5ccbdb436b1b26e8d8e9fd4967d7680b58e8f7b281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **368.4 MB (368388166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2add3902c8951960dbda367a3dccc580283503d66612724fba63645f1d4bb370`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.openshift.expose-services=""
# Tue, 28 Jul 2026 04:58:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 28 Jul 2026 04:58:50 GMT
ENV container oci
# Tue, 28 Jul 2026 04:58:51 GMT
COPY dir:8635b291411015261e7e7d7c3eb67c5088d16ac1d27e1131774fe915d54adfdd in /      
# Tue, 28 Jul 2026 04:58:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 28 Jul 2026 04:58:51 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 04:58:51 GMT
COPY dir:67cce7aa9d1677605a5b3b328cc6cfffa89c6ae79ef74d406ed0528607c612d3 in /usr/share/buildinfo/      
# Tue, 28 Jul 2026 04:58:51 GMT
COPY dir:67cce7aa9d1677605a5b3b328cc6cfffa89c6ae79ef74d406ed0528607c612d3 in /root/buildinfo/      
# Tue, 28 Jul 2026 04:58:52 GMT
LABEL "org.opencontainers.image.created"="2026-07-28T04:58:03Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-28T04:58:03Z" "architecture"="s390x" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785214301"org.opencontainers.image.created=2026-07-28T04:58:03Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Wed, 29 Jul 2026 18:27:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:27:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:27:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:27:13 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:27:13 GMT
ENV JAVA_VERSION=jdk-17.0.19+10
# Wed, 29 Jul 2026 18:28:05 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='83a52172678ec8975164648654869cb2e71d7c748b47aca94b29bbfa10c18e81';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.19_10.tar.gz';          ;;        ppc64le)          ESUM='c9d8dc52960ff00aa8c321e211cc5284a2151cffdedeac998f5297066cbad245';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.19_10.tar.gz';          ;;        s390x)          ESUM='00363a5ceda57aa0dee89d20b3f6b2966e3c1f3fb6dcf57e66d2264573d3c63e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.19_10.tar.gz';          ;;        x86_64)          ESUM='d8afc263758141a66e0e3aafc321e783f7016696f4eaea067d340a269037d331';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.19%2B10/OpenJDK17U-jdk_x64_linux_hotspot_17.0.19_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 29 Jul 2026 18:28:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:28:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:28:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:28:06 GMT
CMD ["jshell"]
# Wed, 29 Jul 2026 18:40:23 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:40:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:40:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:40:23 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:40:23 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:41:24 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:41:24 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 29 Jul 2026 18:41:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 29 Jul 2026 18:41:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:41:28 GMT
USER gradle
# Wed, 29 Jul 2026 18:41:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:41:29 GMT
USER root
```

-	Layers:
	-	`sha256:c066d4e23a6e854f37804aa39b7607aa099c1a3eb2af36c7833277288db4b7cd`  
		Last Modified: Tue, 28 Jul 2026 06:11:46 GMT  
		Size: 38.8 MB (38773394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d83ae868ac5dd12bec0da0befd87a076776bc71d3da3664ec6ddec0b32ba586`  
		Last Modified: Wed, 29 Jul 2026 18:27:48 GMT  
		Size: 27.7 MB (27684954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89f600c3c11843880390ead6ddb1962bb689a1209256e12feb0764465f8d962`  
		Last Modified: Wed, 29 Jul 2026 18:28:36 GMT  
		Size: 135.9 MB (135912297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328fe6c490f6011f2ebc0cef075145b4c1098fee2397a6a287fae45825b8b799`  
		Last Modified: Wed, 29 Jul 2026 18:28:33 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0e1e93b0e48aa16bc5ba66231f7c5a893ab80c2e5593647e88366e405b17f6`  
		Last Modified: Wed, 29 Jul 2026 18:28:33 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5d5eaebf00af48a435017824c54f11c960e644abc3a5cd13e436ad4244824f2`  
		Last Modified: Wed, 29 Jul 2026 18:41:02 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28654a24417ffcf0f4a079019057afc8ad1c9fdff2c72f7bc634b714a5c31ff2`  
		Last Modified: Wed, 29 Jul 2026 18:41:55 GMT  
		Size: 37.5 MB (37508903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bf703462c48f2192f93aae72e8547b37544bf44e7bef209b3e05aee31170708`  
		Last Modified: Wed, 29 Jul 2026 18:41:56 GMT  
		Size: 128.5 MB (128469445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f4964f724fc313c61997b31acd58465625a48ebc953358a8159cb469e3a6ef1`  
		Last Modified: Wed, 29 Jul 2026 18:41:54 GMT  
		Size: 35.0 KB (35011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:c0bd78f621e7fd12da830eb674e7f74387abfd1d5cf7ba953fdf52bd899b89a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5326162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe7e6b7cd2fcad67e11dad5732554cd2622c00a68f627c9b760058ce8ab6f1d3`

```dockerfile
```

-	Layers:
	-	`sha256:616e883636bcb3716f0556025934ca7a0eb41b0487d1acb5d8f09175c464c283`  
		Last Modified: Wed, 29 Jul 2026 18:41:54 GMT  
		Size: 5.3 MB (5302580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8070cd8abb834e0452688f498b8117550008f7f58af0347c986f17f87c8be037`  
		Last Modified: Wed, 29 Jul 2026 18:41:54 GMT  
		Size: 23.6 KB (23582 bytes)  
		MIME: application/vnd.in-toto+json
