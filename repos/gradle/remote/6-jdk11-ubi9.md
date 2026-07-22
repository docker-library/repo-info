## `gradle:6-jdk11-ubi9`

```console
$ docker pull gradle@sha256:be9a64dc1849db302bade8f5e06a632dc46bbc62185eec7177c900bd0f184942
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

### `gradle:6-jdk11-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:640517dadc84b093fbc1a13c03de755a1579eac54f7e518c1f870fc0f92c074d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **356.8 MB (356786621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2697545b6cf4161e3c0d88c879ba5768f8ad049ac34f9202874c5d37f0126626`
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
# Wed, 22 Jul 2026 19:02:04 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:02:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:02:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:02:04 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:02:04 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:02:07 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:02:07 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 22 Jul 2026 19:02:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 22 Jul 2026 19:02:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:02:09 GMT
USER gradle
# Wed, 22 Jul 2026 19:02:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 22 Jul 2026 19:02:10 GMT
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
	-	`sha256:d55126efe70c9a83accb2a7b450c229f8b482d9a6752ef744e0bfb966bb91893`  
		Last Modified: Wed, 22 Jul 2026 19:02:25 GMT  
		Size: 1.7 KB (1709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc4e24144c143cd7d46f636c909d47220e5afd6e6076a9c3b28ee5d1148fdcd`  
		Last Modified: Wed, 22 Jul 2026 19:02:27 GMT  
		Size: 37.9 MB (37921449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98301db3135176871b75f9513fff726d3f6822ef0b1538567874ca34d3da2d27`  
		Last Modified: Wed, 22 Jul 2026 19:02:28 GMT  
		Size: 107.7 MB (107696670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381d67d43475af78f54b09e513365b0c6dd4225f9a9a85de237a288549f5cf1f`  
		Last Modified: Wed, 22 Jul 2026 19:02:25 GMT  
		Size: 431.3 KB (431279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:6577030cd56323576bdc616cd461f8e472e5fbab2f8ab650e7a74494a7249b81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5342335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcdc021c530d752e684d9fd20c2d182c1497c2d31197e5a9b52bfebe7c9abec8`

```dockerfile
```

-	Layers:
	-	`sha256:bdc385cb8fc9fddc02d64cea11bb1d663ad4dd3a8cb8fb4ea4debef2cd7e6b49`  
		Last Modified: Wed, 22 Jul 2026 19:02:25 GMT  
		Size: 5.3 MB (5318752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b85af3ac5115340602d7e2b633ace776681d4ae74005200eb871553ee02c36b`  
		Last Modified: Wed, 22 Jul 2026 19:02:25 GMT  
		Size: 23.6 KB (23583 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:72227ca256879c100825cd735f472842ebe3959040e2e04a6595055388be3ac3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.3 MB (351296478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6cd1e1277482d7cbbf39fc0e4115fc6412b3d8aee1d4afbd09a2e6b1c6c10d3c`
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
# Wed, 22 Jul 2026 19:04:06 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 19:04:06 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 19:04:06 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 19:04:06 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 19:04:06 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 19:04:10 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 19:04:10 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 22 Jul 2026 19:04:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 22 Jul 2026 19:04:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 19:04:12 GMT
USER gradle
# Wed, 22 Jul 2026 19:04:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 22 Jul 2026 19:04:12 GMT
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
	-	`sha256:933fa5ba9f54c267ea61308214eab29cd28a64a64b1bed216287d3361053fda4`  
		Last Modified: Wed, 22 Jul 2026 19:04:27 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fcf649e80652afddb227a24c441758d26bb4d37e94a825faf061839b12d742`  
		Last Modified: Wed, 22 Jul 2026 19:04:29 GMT  
		Size: 37.2 MB (37203085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3dfeb5884f6603d7f80a236d26a1bc775e5266fb2ab4ef6b071c0e964c5d865`  
		Last Modified: Wed, 22 Jul 2026 19:04:30 GMT  
		Size: 107.7 MB (107696649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4669d0ed4f562b19a28f687d41b92e0dd8f02b8c83d7577e448c546b2539910`  
		Last Modified: Wed, 22 Jul 2026 19:04:27 GMT  
		Size: 425.0 KB (425020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:83774bc6dbc7cb4e0b4d3d1a8b346b6922c77fb212ba2d1cbfce656c47614776
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5340751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84fee31c166370fa2c147cbcaa19ee7b735e848dee2949c8c812b50c65db6df7`

```dockerfile
```

-	Layers:
	-	`sha256:71d98d0ebd0fb9aa78c0de107398970ab8fbc1b875c21ca1bb734dca0a931494`  
		Last Modified: Wed, 22 Jul 2026 19:04:27 GMT  
		Size: 5.3 MB (5316994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2f53b3e9b8607745172751364b5643eea62e9f6bf9b486e64496a1890e785692`  
		Last Modified: Wed, 22 Jul 2026 19:04:27 GMT  
		Size: 23.8 KB (23757 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:c6e8c3bc4348bb3ff238747b27b15d4d2858b1afefa85c5c6cc5acb2570b7ca1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **351.8 MB (351767295 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9af53a95287823a8ab93c8dceef518df57533d04f99073c0c0c7cdad2b244cd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:40:04 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:40:05 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:40:05 GMT
ENV container oci
# Wed, 22 Jul 2026 07:40:08 GMT
COPY dir:c8f8871283832381250ef21ab896162ec1758ae55eb11b9cbea9913e273a401a in /      
# Wed, 22 Jul 2026 07:40:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:40:09 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:40:09 GMT
COPY dir:6088fe605826e3170ecfab99272b714167baa9ea41de316da7abbcc2c10ff764 in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:40:10 GMT
COPY dir:6088fe605826e3170ecfab99272b714167baa9ea41de316da7abbcc2c10ff764 in /root/buildinfo/      
# Wed, 22 Jul 2026 07:40:11 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:39:12Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:39:12Z" "architecture"="ppc64le" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:39:12Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 18:44:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 18:44:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 18:44:17 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 18:44:17 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 22 Jul 2026 18:46:32 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 18:46:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 18:46:37 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 18:46:37 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 18:46:37 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 21:33:56 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 21:33:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 21:33:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 21:33:56 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 21:33:57 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 21:35:48 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 21:35:48 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 22 Jul 2026 21:35:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 22 Jul 2026 21:36:52 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 21:36:52 GMT
USER gradle
# Wed, 22 Jul 2026 21:36:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 22 Jul 2026 21:36:54 GMT
USER root
```

-	Layers:
	-	`sha256:d11d072ba4cd5e97a3d2471dfc12936c2852679f69eb78cd61ff24051fabae00`  
		Last Modified: Wed, 22 Jul 2026 12:11:59 GMT  
		Size: 45.1 MB (45136368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94ae6eb1939b95b8b464207fd65020201742c83c38ca654588914489e8b4842`  
		Last Modified: Wed, 22 Jul 2026 18:45:00 GMT  
		Size: 30.1 MB (30086583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e11c43fd5ed0955ba3aec22c2fdda2273ab7c1fc95ec94790931aa3f154e90`  
		Last Modified: Wed, 22 Jul 2026 18:47:12 GMT  
		Size: 129.6 MB (129614209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caffe6e973712065bf47e0e1e4dc995fcde1c34f435bff48d04161e1472bd772`  
		Last Modified: Wed, 22 Jul 2026 18:47:09 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0a14d853e580324de0066c9bc1aa8c0d2fa9965d5bfcda5bf4346dbd986bf85`  
		Last Modified: Wed, 22 Jul 2026 18:47:09 GMT  
		Size: 2.3 KB (2291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2dcfa82cd37277a04ecfe322be7d762c5e0e3fb85fb8ac61ea9efe8be5fdec8`  
		Last Modified: Wed, 22 Jul 2026 21:34:51 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ee8a409b596d27f9b2e0a3d8bb884a5ced94ede0136f3540a329754f476b1c7`  
		Last Modified: Wed, 22 Jul 2026 21:36:33 GMT  
		Size: 39.2 MB (39194313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaba49ddbc01e4f8c907adbb32bef31d078ed1665bbc84fdb81c6180f714cf55`  
		Last Modified: Wed, 22 Jul 2026 21:37:26 GMT  
		Size: 107.7 MB (107696671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09208a2fdc55bb169f9bf1f3335e5ec9642963972e2a69d9875b08e220e86ef5`  
		Last Modified: Wed, 22 Jul 2026 21:37:24 GMT  
		Size: 35.0 KB (34991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:912d24475d949267d86f7919db62008485cc884c5c278b676272408a85dd6b7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5337361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e5bc2f82ef051b2aa7e64a0cddbca262d982452a3846ec8886254c3aa5dda91`

```dockerfile
```

-	Layers:
	-	`sha256:89eaa8b6bb42b7654a40ffd4811257755060c14a4a1c4873f9ed38a3e571b4ca`  
		Last Modified: Wed, 22 Jul 2026 21:37:24 GMT  
		Size: 5.3 MB (5313716 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4484e820fa2608ef4bddbbe3247db6dfd68fd37fd8fdfc977a00aa955a3455d6`  
		Last Modified: Wed, 22 Jul 2026 21:37:23 GMT  
		Size: 23.6 KB (23645 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk11-ubi9` - linux; s390x

```console
$ docker pull gradle@sha256:2fe623c91e972615c8dc5433b91369d8214a4995d8ea73c436dddc56a06be4d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **334.7 MB (334735161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09da72e0f86021a10e72204575d69af25daefaf1aa8e5d93f05808a346158f77`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.openshift.expose-services=""
# Wed, 22 Jul 2026 07:46:27 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 22 Jul 2026 07:46:27 GMT
ENV container oci
# Wed, 22 Jul 2026 07:46:28 GMT
COPY dir:a03e3bcfd8bf8d44bed42e3e10179421dd7aac0c94ef6408965d38f7edbd7af9 in /      
# Wed, 22 Jul 2026 07:46:28 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 22 Jul 2026 07:46:28 GMT
CMD ["/bin/bash"]
# Wed, 22 Jul 2026 07:46:28 GMT
COPY dir:4d07c15056b36c02f12d33bca36ba79b9f06a60480d9a3171ab30a92fc4d505e in /usr/share/buildinfo/      
# Wed, 22 Jul 2026 07:46:28 GMT
COPY dir:4d07c15056b36c02f12d33bca36ba79b9f06a60480d9a3171ab30a92fc4d505e in /root/buildinfo/      
# Wed, 22 Jul 2026 07:46:28 GMT
LABEL "org.opencontainers.image.created"="2026-07-22T07:45:29Z" "org.opencontainers.image.revision"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "build-date"="2026-07-22T07:45:29Z" "architecture"="s390x" "vcs-ref"="9932c86214d5e8b9c79570f3f4ebe16275359bc0" "vcs-type"="git" "release"="1784705586"org.opencontainers.image.created=2026-07-22T07:45:29Z,org.opencontainers.image.revision=9932c86214d5e8b9c79570f3f4ebe16275359bc0
# Wed, 22 Jul 2026 19:56:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 22 Jul 2026 19:56:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 22 Jul 2026 19:56:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 22 Jul 2026 19:56:28 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 22 Jul 2026 19:56:28 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Wed, 22 Jul 2026 19:56:33 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='257f4d39e060658fc2eb89a803ca43b3f337e64e253f2d94ebae1d85c9ef5f69';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64le)          ESUM='e473d10c3c44f67301fd90abd9e4b7ae312eae8a2399b333fcf4179daf35a743';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4d3709cdc03de1a00f14f530c2ebad1883d9bcc8a556fc419f083bec87b4687a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        x86_64)          ESUM='1e9de64586b519c0a981319489257cabedd9457599f3823424a87c3158fbe939';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jdk_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip; # buildkit
# Wed, 22 Jul 2026 19:56:35 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 22 Jul 2026 19:56:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 22 Jul 2026 19:56:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 22 Jul 2026 19:56:35 GMT
CMD ["jshell"]
# Wed, 22 Jul 2026 20:10:48 GMT
CMD ["gradle"]
# Wed, 22 Jul 2026 20:10:48 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 22 Jul 2026 20:10:48 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 22 Jul 2026 20:10:48 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 22 Jul 2026 20:10:48 GMT
WORKDIR /home/gradle
# Wed, 22 Jul 2026 20:11:05 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 22 Jul 2026 20:11:05 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 22 Jul 2026 20:11:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 22 Jul 2026 20:11:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 22 Jul 2026 20:11:08 GMT
USER gradle
# Wed, 22 Jul 2026 20:11:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 22 Jul 2026 20:11:09 GMT
USER root
```

-	Layers:
	-	`sha256:c65a219c707e69f4ad99e548e896f9fe710e2c9885f83b540cf024eebcb56999`  
		Last Modified: Wed, 22 Jul 2026 08:43:56 GMT  
		Size: 38.7 MB (38743429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee911534a2ec3e7ac67f2c8537b266d826c6daa746b8080648092bd6937d2059`  
		Last Modified: Wed, 22 Jul 2026 19:57:00 GMT  
		Size: 27.7 MB (27684860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61fc9a58872286db5794d37d08060c5aaee14416bde588acdae845098a47e301`  
		Last Modified: Wed, 22 Jul 2026 19:57:02 GMT  
		Size: 123.1 MB (123061424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de161314f7df1050a44122d82e915e42a8a08b0f82274f4b2e21fc652bb9c064`  
		Last Modified: Wed, 22 Jul 2026 19:57:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15cfef5ebba969eddd4d53c52c0116a9be424418ad880e2c47511fd0ef35b71d`  
		Last Modified: Wed, 22 Jul 2026 19:56:58 GMT  
		Size: 2.3 KB (2289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25bdde45f486573e72a554d8abfc0da0db60da724f101afab5d0935c14462931`  
		Last Modified: Wed, 22 Jul 2026 20:11:23 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25facd30a00fe9b66f5668b2966bb90f70171fd16add108dd33ff70c530229ae`  
		Last Modified: Wed, 22 Jul 2026 20:11:34 GMT  
		Size: 37.5 MB (37509641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c721fe2141de303157b00054a0350729084f670ae279f1b6e2723023b5b414f`  
		Last Modified: Wed, 22 Jul 2026 20:11:35 GMT  
		Size: 107.7 MB (107696666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f65967098fc82aa447824a63e8a1833aae21c288d4f8c8cf20bff1e265dcee`  
		Last Modified: Wed, 22 Jul 2026 20:11:33 GMT  
		Size: 35.0 KB (34984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk11-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:61f5a4a8f5f6bd316e4cfa80825a88164a412168724c47775b62147ced2e2695
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5327162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d415db4c86d48ec5e3756f6dd4f504f7dbed44235db9669cfe19b553398e199f`

```dockerfile
```

-	Layers:
	-	`sha256:9efc8a23fd01c2aed045147c2648c7e01bb71c94d393e83d18b6dbca8d466da8`  
		Last Modified: Wed, 22 Jul 2026 20:11:33 GMT  
		Size: 5.3 MB (5303579 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77dcda754a63c181d2fc1d7278da1df6540086f0042b027192017aacf4be4d21`  
		Last Modified: Wed, 22 Jul 2026 20:11:33 GMT  
		Size: 23.6 KB (23583 bytes)  
		MIME: application/vnd.in-toto+json
