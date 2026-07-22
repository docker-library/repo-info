## `gradle:jdk11-ubi`

```console
$ docker pull gradle@sha256:8d543dc5d094e45e01453b4ce1dc1e105c2234c9d3e00bbab56c51e211c763e5
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

### `gradle:jdk11-ubi` - linux; amd64

```console
$ docker pull gradle@sha256:d1ad225f7a389f109fdd710f7f1a972679c0e82b2c400d55339e78430176c3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **386.8 MB (386782068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5446c8d2c8ad6a69778d85e83e844fcde96de55950fc9029ee925570df223687`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:34:24 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:34:24 GMT
ENV container oci
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:6b16b3336a884691d82bd90e5faf7d65fad1354d2664539a143b7bcc0d24b71e in /      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:34:25 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
COPY dir:3c57dcdf8d00b61e1e938fb8386fff8fc937e99ea4eadb82d9df5d9aeb4fdee1 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:34:25 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:34:05Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:34:05Z" "architecture"="x86_64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:34:05Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:27:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:27:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:27:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:27:53 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:27:53 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 22 Jul 2026 18:28:00 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:28:01 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:28:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:28:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:28:01 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:01:46 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:01:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:01:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:01:46 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:01:46 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:01:50 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:01:50 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 22 Jul 2026 19:01:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 22 Jul 2026 19:01:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:01:53 GMT
USER gradle
# Wed, 22 Jul 2026 19:01:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:01:53 GMT
USER root
```

-	Layers:
	-	`sha256:4e7920a6df9f698998c80db9c24d69dedc87ab71cb83d5f35c3db42281db6ec0`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 40.7 MB (40722592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:332c53ef18f47d7a40d8e72c64345dc0c95d8a524442efd98efcb069641a02fd`  
		Last Modified: Wed, 22 Jul 2026 18:28:18 GMT  
		Size: 27.7 MB (27661622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cb27396ef5f6af60e1d81c01a654373c1fcbdc305a12a6518a732208683115`  
		Last Modified: Wed, 22 Jul 2026 18:28:21 GMT  
		Size: 142.3 MB (142348850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9b042bea3d66bb512c5042de4251681fc18e0209408b67a7abb18ce898b9c2`  
		Last Modified: Wed, 22 Jul 2026 18:28:17 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af6024a9307cdebc08c3d8ee6313e1824b863cd0c19740dce724ce99bfa51f1a`  
		Last Modified: Wed, 22 Jul 2026 18:28:17 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b0f4359b12fd9737e24278ec98a4f7dc53de3dc5b1883ebced0a8e03837fe4`  
		Last Modified: Wed, 22 Jul 2026 19:02:12 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ad7b3844f811755062e3a0849dd96e31351673c9afb1754f88e5f4f1790c84a`  
		Last Modified: Wed, 22 Jul 2026 19:02:14 GMT  
		Size: 37.9 MB (37921392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0fad385bfb771f7bf12ced03ec54611a319c38a1b249323eaf834504c9dca4d`  
		Last Modified: Wed, 22 Jul 2026 19:02:17 GMT  
		Size: 138.1 MB (138068550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48d03363837b08d631ddb5cd4627cde07a258f9f4d8e7fbba0b6dd3def467dc`  
		Last Modified: Wed, 22 Jul 2026 19:02:13 GMT  
		Size: 54.9 KB (54901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:e4323a5b6d575efccd31fb45401ed85eb6169d380362f78df0b0e8ac739fd374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5451095 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f000d4ca7eb646d5fe4489cf087dac7e12ad1fda6161d1d23c8290acd1f3b9b1`

```dockerfile
```

-	Layers:
	-	`sha256:f1ad847b8a0d9a3d1d1b8a1ea51089a9ec6f76b400a80b8364ac161186dbf093`  
		Last Modified: Wed, 22 Jul 2026 19:02:13 GMT  
		Size: 5.4 MB (5426605 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b776f76b03b6020352fc75c23152076918540eb33621bd869b9126ce9ee6de80`  
		Last Modified: Wed, 22 Jul 2026 19:02:12 GMT  
		Size: 24.5 KB (24490 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-ubi` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:ab1335d254439f4b241a2994f31694300588376f1ac6985bef2ea239b9611f72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.3 MB (381303045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f27bebf22ea19d5307647db0b5a713ad7cc6a19e5f3fe26c549d368462d290a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:37:07 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:37:07 GMT
ENV container oci
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:13cb9595e24a2f94b16cce79d23e558d6f0db7a9c73a3191107351f48264bcc1 in /      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:37:08 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:37:08 GMT
COPY dir:094a17be797e369d330171a023f19cc40f274ac5717bef56f0a13530510171e7 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:37:09 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:36:45Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:36:45Z" "architecture"="aarch64" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:36:45Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:52:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:52:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:52:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:52:55 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:52:55 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 22 Jul 2026 18:53:02 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:53:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:53:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:53:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:53:03 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 19:03:47 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:03:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:03:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:03:47 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:03:47 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:03:51 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:03:51 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 22 Jul 2026 19:03:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 22 Jul 2026 19:03:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:03:54 GMT
USER gradle
# Wed, 22 Jul 2026 19:03:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 22 Jul 2026 19:03:54 GMT
USER root
```

-	Layers:
	-	`sha256:874d407f446b6129b274afbba9c870e8b07666e3e15e80c2fdb80ce6e0fe8f97`  
		Last Modified: Wed, 22 Jul 2026 08:43:24 GMT  
		Size: 38.8 MB (38824182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684fc9ad80f1226e0d56a517713fbd0a1a267b3414d6c21e5d49a33179be88ae`  
		Last Modified: Wed, 22 Jul 2026 18:53:20 GMT  
		Size: 28.1 MB (28102740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35014d8f98d74ba74f4d2afa80d29627d6b9251c3be97d82952a4f1861484e3c`  
		Last Modified: Wed, 22 Jul 2026 18:53:22 GMT  
		Size: 139.0 MB (139040646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea890691abe9b4c70c68e6990304b17f913202161e34578a23071056adced9c`  
		Last Modified: Wed, 22 Jul 2026 18:53:18 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d971cd22d18849aa9812d19052c3573d292a299d54802e775116fa9debd36a4`  
		Last Modified: Wed, 22 Jul 2026 18:53:19 GMT  
		Size: 2.3 KB (2287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61e49de534559083699c7cda62c150e33290099070d219f0160bd32d6eaf36d8`  
		Last Modified: Wed, 22 Jul 2026 19:04:11 GMT  
		Size: 1.7 KB (1711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08a56a6a6878b2f6eef39f54b9afe71c4690c1bb40a95e10dc10f7085035dcd7`  
		Last Modified: Wed, 22 Jul 2026 19:04:14 GMT  
		Size: 37.2 MB (37203252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5bf34b8ab45ef3c231305d5f063362ef10b4837e4ac19d6f8ed01c8e3de84b8`  
		Last Modified: Wed, 22 Jul 2026 19:04:16 GMT  
		Size: 138.1 MB (138068536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4097ab980a1d33e8123e612e8e6b7611455cae9c348209c6bab1c4d1dce04907`  
		Last Modified: Wed, 22 Jul 2026 19:04:11 GMT  
		Size: 59.5 KB (59530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:85268a764f956a5548f43e51865d0920f3bcec0baceb9412de402aa2a35158d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5449558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44144a39d70da3e4af2207715f9c4998c42f56154881f278ada473e8e34d3a9c`

```dockerfile
```

-	Layers:
	-	`sha256:11c7778a2ebd72299a2e4beea8418e1c43d19863b227a5348fbf78082112136c`  
		Last Modified: Wed, 22 Jul 2026 19:04:12 GMT  
		Size: 5.4 MB (5424871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b029a4ed4f3d16fd2edda096b18c35530c46190ebd49e6e8eff5fde5fc56bf33`  
		Last Modified: Wed, 22 Jul 2026 19:04:11 GMT  
		Size: 24.7 KB (24687 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-ubi` - linux; ppc64le

```console
$ docker pull gradle@sha256:05018cdc6c539113ba8b147714c3b6ee886c9309894aa7720f08908bd61ff0c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.7 MB (381729845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:634a8b9e1a564d9740ae912664449649a84945e1bdf9fe2464a4db150da87bd2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:10:30 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:10:30 GMT
ENV container oci
# Tue, 21 Jul 2026 01:10:30 GMT
COPY dir:a6f2140a2fe01438c7cedec424555d3db113406c9c5302f562b664a2559696b3 in /      
# Tue, 21 Jul 2026 01:10:30 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:10:30 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:10:30 GMT
COPY dir:0869d3611abdf6916e5ce14328c4b46fcbfd6870491bde8d7c09487e4731e110 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:10:31 GMT
COPY dir:0869d3611abdf6916e5ce14328c4b46fcbfd6870491bde8d7c09487e4731e110 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:10:31 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:10:13Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:10:13Z" "architecture"="ppc64le" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:10:13Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 16:50:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 16:50:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:50:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:50:43 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:50:43 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 21 Jul 2026 16:52:47 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 16:52:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 16:52:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 16:52:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 16:52:52 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:13:51 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:13:51 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:13:51 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:13:51 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:13:53 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:14:18 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:14:18 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 21 Jul 2026 17:14:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 21 Jul 2026 17:14:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:14:25 GMT
USER gradle
# Tue, 21 Jul 2026 17:14:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:14:27 GMT
USER root
```

-	Layers:
	-	`sha256:a5582cc7ecb947a7b363b8c315634ecd32e9ab06fc9edafac3f8b88d5fcf7582`  
		Last Modified: Tue, 21 Jul 2026 06:11:09 GMT  
		Size: 45.1 MB (45129957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34518ea14982cc6d43f1708ea7c62ee3e4ef6495bad59b170fcd0006baa2625`  
		Last Modified: Tue, 21 Jul 2026 16:51:23 GMT  
		Size: 15.1 MB (15143459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232b43b69f1b75ea36c2572f9c1a1926156e3cb02c421001de1836934ae9575d`  
		Last Modified: Tue, 21 Jul 2026 16:53:31 GMT  
		Size: 129.6 MB (129614217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f31a4fe1e706486fa1c21d371861b0589a4a19fd294efbbed8ae430c33fed7fc`  
		Last Modified: Tue, 21 Jul 2026 16:53:27 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e802c179cd32fea8b01e3db324afa74a1ed9f1ffa676b373de17c54fc80afa4f`  
		Last Modified: Tue, 21 Jul 2026 16:53:27 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7011f9aa9b436fbf6d86c4e0d0858cea02b25b980fa6183013c07c3580fe8c36`  
		Last Modified: Tue, 21 Jul 2026 17:15:08 GMT  
		Size: 1.4 KB (1416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a7a445ba4234075292ec8b5145cb38cc7098d5630affc84e879135b07c2776`  
		Last Modified: Tue, 21 Jul 2026 17:15:11 GMT  
		Size: 53.7 MB (53734797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a40a71b09548f1f6896c077ff8d039d2b4ff4471dc9a57d54ea8b3baea1c31`  
		Last Modified: Tue, 21 Jul 2026 17:15:13 GMT  
		Size: 138.1 MB (138068541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3449696575a79e00fa0a7746184abba39796fefd60e87d487e9f224a26977c`  
		Last Modified: Tue, 21 Jul 2026 17:15:08 GMT  
		Size: 35.0 KB (35007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:9ceb7d1ca3918acaa8fd2dc5d91a0e5906add906a1849c55308c34593e65392b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5446145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09fff4ab1ff2bd760ca6290e85c95354d082c4898966e3246cdbfb361333d8b7`

```dockerfile
```

-	Layers:
	-	`sha256:7be790bc731e743df12683a3a0f9249f368ff52ea90f7b3d79807ccf537f1546`  
		Last Modified: Tue, 21 Jul 2026 17:15:08 GMT  
		Size: 5.4 MB (5421581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49a446bd665b178ebe34a65b6238765d643fc965e5d05554ee67130bc06b7410`  
		Last Modified: Tue, 21 Jul 2026 17:15:08 GMT  
		Size: 24.6 KB (24564 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk11-ubi` - linux; s390x

```console
$ docker pull gradle@sha256:caa45e1266692348a6882e801252281591bec3d9d1c2dd6e30c3521c7d0168a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **365.1 MB (365099760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d76822b932aa1a7bd732423df6352a7af574d0d70f9b2aa1b0798508fab38c74`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 21 Jul 2026 01:19:19 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.openshift.expose-services=""
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 21 Jul 2026 01:19:20 GMT
ENV container oci
# Tue, 21 Jul 2026 01:19:20 GMT
COPY dir:bdc996a75c84fc88425f33a7d1bf350e2bc028ff4b4a542a7f650bbe93627c06 in /      
# Tue, 21 Jul 2026 01:19:20 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 21 Jul 2026 01:19:20 GMT
CMD ["/bin/bash"]
# Tue, 21 Jul 2026 01:19:20 GMT
COPY dir:ff4c148529ae762e64c6addf17dd2488a09966186c1274718d0ec593def9b204 in /usr/share/buildinfo/      
# Tue, 21 Jul 2026 01:19:20 GMT
COPY dir:ff4c148529ae762e64c6addf17dd2488a09966186c1274718d0ec593def9b204 in /root/buildinfo/      
# Tue, 21 Jul 2026 01:19:20 GMT
LABEL "org.opencontainers.image.created"="2026-07-21T01:18:20Z" "org.opencontainers.image.revision"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "build-date"="2026-07-21T01:18:20Z" "architecture"="s390x" "vcs-ref"="4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec" "vcs-type"="git" "release"="1784596070"org.opencontainers.image.created=2026-07-21T01:18:20Z,org.opencontainers.image.revision=4f0cbbc4b2e97d9740b4f68c126ca1b9bda22aec
# Tue, 21 Jul 2026 16:50:46 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 21 Jul 2026 16:50:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 21 Jul 2026 16:50:46 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 21 Jul 2026 16:50:46 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 21 Jul 2026 16:50:46 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 21 Jul 2026 16:50:52 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Tue, 21 Jul 2026 16:50:54 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 21 Jul 2026 16:50:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 21 Jul 2026 16:50:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 21 Jul 2026 16:50:54 GMT
CMD ["jshell"]
# Tue, 21 Jul 2026 17:02:34 GMT
CMD ["gradle"]
# Tue, 21 Jul 2026 17:02:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 21 Jul 2026 17:02:34 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 21 Jul 2026 17:02:34 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 21 Jul 2026 17:02:34 GMT
WORKDIR /home/gradle
# Tue, 21 Jul 2026 17:02:38 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 21 Jul 2026 17:02:38 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 21 Jul 2026 17:02:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 21 Jul 2026 17:02:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 21 Jul 2026 17:02:42 GMT
USER gradle
# Tue, 21 Jul 2026 17:02:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 21 Jul 2026 17:02:43 GMT
USER root
```

-	Layers:
	-	`sha256:2f7677930089559faf58a771ff6e526985999fa9988089b71e6c02d4cc584f67`  
		Last Modified: Tue, 21 Jul 2026 05:00:39 GMT  
		Size: 38.7 MB (38727940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ec5dccd9f482359568a68fb85d318e98cf940a3a2ba8dea6f60c467ca6997b`  
		Last Modified: Tue, 21 Jul 2026 16:51:17 GMT  
		Size: 27.7 MB (27686297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9365e0105c02af904aab1990c8e0976c39404c0ad13095409ef2df3a6510be95`  
		Last Modified: Tue, 21 Jul 2026 16:51:19 GMT  
		Size: 123.1 MB (123061404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9df72cc5cf528a3adda6e711edc677a9e679dec6f46eaccf77f701f8f26b45`  
		Last Modified: Tue, 21 Jul 2026 16:51:16 GMT  
		Size: 130.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9fb6119e58282d00aebaf3e7a07fcd7880d315677d1004112c498dfc7a6319f`  
		Last Modified: Tue, 21 Jul 2026 16:51:16 GMT  
		Size: 2.3 KB (2290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6f4aef37509f83b453d0dec77c664343eb70a1ed5c89e197aa85100107c5d16`  
		Last Modified: Tue, 21 Jul 2026 17:03:09 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6103a133c96b3fbb4026800ee52e6f9a7a61072a6dca6064a5643906f33e271`  
		Last Modified: Tue, 21 Jul 2026 17:03:10 GMT  
		Size: 37.5 MB (37516414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5ba9932bc77c602a84c63ba47f7516dcce2eac207b52e0254e759b6dd4ee83c`  
		Last Modified: Tue, 21 Jul 2026 17:03:12 GMT  
		Size: 138.1 MB (138068535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428c4a8b7765018094d512ec344a6c327ce67e0235088f0a25dce1a8b4507066`  
		Last Modified: Tue, 21 Jul 2026 17:03:09 GMT  
		Size: 35.0 KB (35009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk11-ubi` - unknown; unknown

```console
$ docker pull gradle@sha256:dfaa08279d5ac8df38aa07b18dd776ba4af5b27cf466cf8a48d5cf1f189b2cab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5435914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e094d74f6eb6802f1fdbc0c79e55ad14b5265c9ca80133602f2c8e7257ff60`

```dockerfile
```

-	Layers:
	-	`sha256:e0e1b7ee301b9106f5693f82300b747ad39e55e085b4d8ee061b598ed63984b5`  
		Last Modified: Tue, 21 Jul 2026 17:03:09 GMT  
		Size: 5.4 MB (5411424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2476685ba797016416064d84e84bd82f846133ac6c0296bc0f47f36d5809aecc`  
		Last Modified: Tue, 21 Jul 2026 17:03:09 GMT  
		Size: 24.5 KB (24490 bytes)  
		MIME: application/vnd.in-toto+json
