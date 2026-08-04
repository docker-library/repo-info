## `gradle:7-jdk8-ubi9`

```console
$ docker pull gradle@sha256:bca27c6fcc3328cdd4b4bb71d1d9d692e0c4e863f0553281aeb37f5c8ebd6866
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:7-jdk8-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:e684d4629ddcc222574819e37e0e5c2d25cfef9052b9cb89a1c08f7c32d25dae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (289968887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03f680a7ea3409fd8cce9c0301c5a428e6a38239aedb94270e7db3077f86a1f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:16:26 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:16:26 GMT
ENV container oci
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:ee5097758909d32d2eabf40e7c041e9a840048535966e0c036a09335f4fb4e82 in /      
# Mon, 03 Aug 2026 17:16:27 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:16:27 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:5b627414eae6003981d38c21a607546a640c5958754981697654fcd75cbb5144 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:16:27 GMT
COPY dir:5b627414eae6003981d38c21a607546a640c5958754981697654fcd75cbb5144 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:16:27 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:14:53Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:14:53Z" "architecture"="x86_64" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:14:53Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 21:03:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:03:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:03:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:03:16 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:03:16 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 04 Aug 2026 21:03:20 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 04 Aug 2026 21:03:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:03:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:03:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 21:16:56 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 21:16:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 21:16:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 21:16:56 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 21:16:56 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 21:17:00 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 04 Aug 2026 21:17:00 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 04 Aug 2026 21:17:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 04 Aug 2026 21:17:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 21:17:02 GMT
USER gradle
# Tue, 04 Aug 2026 21:17:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 04 Aug 2026 21:17:03 GMT
USER root
```

-	Layers:
	-	`sha256:2ee0d90420c46055e8fc6fd236406f701dc6690c8f7d03e99f89a7fdf5199a81`  
		Last Modified: Mon, 03 Aug 2026 18:10:44 GMT  
		Size: 40.7 MB (40665538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66924457fef97db40550ec634a6e690e864beb3179071b78e55704552e07862c`  
		Last Modified: Tue, 04 Aug 2026 21:03:35 GMT  
		Size: 27.7 MB (27657046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82de4350dc4a3cf0e5dd4e6538d7764d5506c4077a38c1cc5ede85a25e7a86d9`  
		Last Modified: Tue, 04 Aug 2026 21:03:36 GMT  
		Size: 55.2 MB (55199134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bd3599c6f23de7809c89b2b31a887ffd24c641adcdddc8427fb59482120992`  
		Last Modified: Tue, 04 Aug 2026 21:03:33 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48142fef7395b8373453fb510234dab6fd242ef3980b9ff241d5249b99548ee`  
		Last Modified: Tue, 04 Aug 2026 21:03:34 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c17c59a120fa9a23acd2ca2e6d43fc8b1b53dcbe268bd32c7a972527156129f4`  
		Last Modified: Tue, 04 Aug 2026 21:17:18 GMT  
		Size: 1.7 KB (1705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3d84cede77ad34ef329f77ca442cceb704aa3d7b398a87588e2d00ec55895c`  
		Last Modified: Tue, 04 Aug 2026 21:17:20 GMT  
		Size: 37.9 MB (37918486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6f45a0e2de59fde26bcff483fcd24e544ab29660121b6d99234795dbfb8049`  
		Last Modified: Tue, 04 Aug 2026 21:17:22 GMT  
		Size: 128.5 MB (128469420 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37811a84b6e2822192c9f6f44254ca99cec19a5a2e56cdd006672d3761e56c16`  
		Last Modified: Tue, 04 Aug 2026 21:17:18 GMT  
		Size: 54.9 KB (54907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:52075a89841ee050fb862e9987ee9422c3de4f8ff4d2e4b6d2a7bae36b539dbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5461674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ace80387cadcd0dc1afd8972910f83f163768431149965518add8b85c591418`

```dockerfile
```

-	Layers:
	-	`sha256:d60c1ccdef779cf009c15682e8f764f8c7fb6fd68a43f66a80908ad5b42155a9`  
		Last Modified: Tue, 04 Aug 2026 21:17:18 GMT  
		Size: 5.4 MB (5438120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efc4534e23774a8b32539d6360936dd47c5c5b5b4a78db7a05a5aa0a45ec24ed`  
		Last Modified: Tue, 04 Aug 2026 21:17:17 GMT  
		Size: 23.6 KB (23554 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:699a724f2bbfe7405504525c7b8c5a37ecd0806a7dfb6c5053f57113e4465401
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.9 MB (286905165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2aa7577f19f1792acd24af80c0dc0ff817dbd793e6be45af8648f03678b8441b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.openshift.expose-services=""
# Mon, 03 Aug 2026 17:17:52 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 03 Aug 2026 17:17:52 GMT
ENV container oci
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:a5c32caa9e90bbd6deec29de1e7bd55a9a024d72d910be5ebab34568acf6ce4b in /      
# Mon, 03 Aug 2026 17:17:53 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 03 Aug 2026 17:17:53 GMT
CMD ["/bin/bash"]
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:31d26f3255ea00084884b79a72afff38a9084def553ed2d095494924ea714597 in /usr/share/buildinfo/      
# Mon, 03 Aug 2026 17:17:53 GMT
COPY dir:31d26f3255ea00084884b79a72afff38a9084def553ed2d095494924ea714597 in /root/buildinfo/      
# Mon, 03 Aug 2026 17:17:53 GMT
LABEL "org.opencontainers.image.created"="2026-08-03T17:17:29Z" "org.opencontainers.image.revision"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "build-date"="2026-08-03T17:17:29Z" "architecture"="aarch64" "vcs-ref"="fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f" "vcs-type"="git" "release"="1785777232"org.opencontainers.image.created=2026-08-03T17:17:29Z,org.opencontainers.image.revision=fed5ae6ccb10c6d16ee2e00c675d23ea0a6c587f
# Tue, 04 Aug 2026 21:03:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 21:03:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 21:03:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 21:03:29 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 04 Aug 2026 21:03:29 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 04 Aug 2026 21:03:34 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 04 Aug 2026 21:03:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 21:03:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 21:03:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 22:06:30 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 22:06:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 22:06:30 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 22:06:30 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 22:06:30 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 22:06:36 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 04 Aug 2026 22:06:36 GMT
ENV GRADLE_VERSION=7.6.6
# Tue, 04 Aug 2026 22:06:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Tue, 04 Aug 2026 22:06:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 22:06:39 GMT
USER gradle
# Tue, 04 Aug 2026 22:06:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 04 Aug 2026 22:06:39 GMT
USER root
```

-	Layers:
	-	`sha256:69052a49c9c285fb83e9496b9adcbb8c227ccc15bbdcadfd23725434e572109f`  
		Last Modified: Mon, 03 Aug 2026 18:10:51 GMT  
		Size: 38.8 MB (38795066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:825c40c89cbfb389db31a865c694bf9a48b2b1567633ecd723b6d6dcb057689c`  
		Last Modified: Tue, 04 Aug 2026 21:03:47 GMT  
		Size: 28.1 MB (28101510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93aeb2f01767918b02d6c4f6af3bc7171997ed0911809e2a99aaf7e6b387b99`  
		Last Modified: Tue, 04 Aug 2026 21:03:48 GMT  
		Size: 54.3 MB (54273401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145c22f4faa7dddac6f82ea2f65c2a478e96396ba598545757ea28e55f2861ca`  
		Last Modified: Tue, 04 Aug 2026 21:03:45 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ef42f16c946395410096fc9243ddbcda82ca0694bd31e2edc8fd2bbf44c3aa`  
		Last Modified: Tue, 04 Aug 2026 21:03:47 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7af998ac8680c0a21bea06614512ed726a330e977ab0901b6a52c0afcc3d706b`  
		Last Modified: Tue, 04 Aug 2026 22:06:54 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:681daef73b9e2023ba3e976c3f047a6fb87312b64079ae6e3cdb0e1bf55b7a6e`  
		Last Modified: Tue, 04 Aug 2026 22:06:57 GMT  
		Size: 37.2 MB (37201892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e9fd883857842e7d2c7d304373ce4feb5aad93e122c8f6348956b6083188d2`  
		Last Modified: Tue, 04 Aug 2026 22:06:59 GMT  
		Size: 128.5 MB (128469417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e420a337d26b5ee0a7c2e296c02bfc990e3fe1a443ad9bab500346d5127781`  
		Last Modified: Tue, 04 Aug 2026 22:06:55 GMT  
		Size: 59.5 KB (59520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:8117436d0ffc1b4ddd66e5a5ef0e876390146742d669806927079831260fc69e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5460135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5851c88c7b41d33618e4e39c19fc8fe6b94defd421c91a650db88ac564bf168c`

```dockerfile
```

-	Layers:
	-	`sha256:ef77c1a29910cab6a6b3273e6e2ee3fba0d042b1f423b4ee174abbeb6c3098f2`  
		Last Modified: Tue, 04 Aug 2026 22:06:56 GMT  
		Size: 5.4 MB (5436444 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79e49f4b96d8dc85a4c792f26c9fc4c31356086b8116b268c74109598516efb9`  
		Last Modified: Tue, 04 Aug 2026 22:06:55 GMT  
		Size: 23.7 KB (23691 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk8-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:e3580f4c1e9701d38e08030407ccfde8e2fe25e1fe7c291051a19544779749dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 MB (295597611 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4e154364a7981b9ea66aea7ca9f6a92d44d1305a07c3bd24daa286923992777`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL maintainer="Red Hat, Inc."
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL vendor="Red Hat, Inc."
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL io.openshift.expose-services=""
# Wed, 29 Jul 2026 15:34:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Wed, 29 Jul 2026 15:34:54 GMT
ENV container oci
# Wed, 29 Jul 2026 15:34:55 GMT
COPY dir:72906aa1a96f70a665310f1d079fbe82d84716ec812c7bae439b95dd6bac6f29 in /      
# Wed, 29 Jul 2026 15:34:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Wed, 29 Jul 2026 15:34:55 GMT
CMD ["/bin/bash"]
# Wed, 29 Jul 2026 15:34:55 GMT
COPY dir:d12d70246322a80b04a4e60aa38419850eb9372ffb1354a00fdae8790e7f708e in /usr/share/buildinfo/      
# Wed, 29 Jul 2026 15:34:55 GMT
COPY dir:d12d70246322a80b04a4e60aa38419850eb9372ffb1354a00fdae8790e7f708e in /root/buildinfo/      
# Wed, 29 Jul 2026 15:34:55 GMT
LABEL "org.opencontainers.image.created"="2026-07-29T15:34:39Z" "org.opencontainers.image.revision"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "build-date"="2026-07-29T15:34:39Z" "architecture"="ppc64le" "vcs-ref"="426f997bb9b2f48201b14b0d5655a78bd43f7523" "vcs-type"="git" "release"="1785339117"org.opencontainers.image.created=2026-07-29T15:34:39Z,org.opencontainers.image.revision=426f997bb9b2f48201b14b0d5655a78bd43f7523
# Fri, 31 Jul 2026 02:11:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 31 Jul 2026 02:11:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 31 Jul 2026 02:11:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 31 Jul 2026 02:11:49 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 31 Jul 2026 02:11:49 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Fri, 31 Jul 2026 02:11:56 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 31 Jul 2026 02:11:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 31 Jul 2026 02:11:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 31 Jul 2026 02:11:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 31 Jul 2026 04:32:52 GMT
CMD ["gradle"]
# Fri, 31 Jul 2026 04:32:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 31 Jul 2026 04:32:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 31 Jul 2026 04:32:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 31 Jul 2026 04:32:52 GMT
WORKDIR /home/gradle
# Fri, 31 Jul 2026 04:35:17 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 31 Jul 2026 04:35:17 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 31 Jul 2026 04:35:17 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 31 Jul 2026 04:35:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 31 Jul 2026 04:35:21 GMT
USER gradle
# Fri, 31 Jul 2026 04:35:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 31 Jul 2026 04:35:23 GMT
USER root
```

-	Layers:
	-	`sha256:c6397d998c8172c0ea4d42c2b6c4c055dfae779c02148eb6efd11c011c291939`  
		Last Modified: Wed, 29 Jul 2026 18:14:17 GMT  
		Size: 45.1 MB (45135152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00976049280ef03405c24ee5c3720aeec072beb1e03678a5f0da492ebfeebd7`  
		Last Modified: Fri, 31 Jul 2026 02:12:26 GMT  
		Size: 30.1 MB (30088785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8adb8287913a77bab045889c1729c6d0750c45f888fdb5311bf29ae5b876bcf`  
		Last Modified: Fri, 31 Jul 2026 02:12:27 GMT  
		Size: 52.7 MB (52669701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeddb46d91e86896b280c97cbcca58b2746b97805ff8cb2fc1c931e474b25fd7`  
		Last Modified: Fri, 31 Jul 2026 02:12:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02c53408446653b76696936c3625126b588769577276704b5b9af80db0a53107`  
		Last Modified: Fri, 31 Jul 2026 02:12:26 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e9a03909408294e4e07a72c9647a2a02371dd489591d4deb9a665e8b6d500e`  
		Last Modified: Fri, 31 Jul 2026 04:33:45 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60331badfc4101124c7020a3c22eca05b3edfbdf51c46ef4deb1bdff6239f6ca`  
		Last Modified: Fri, 31 Jul 2026 04:35:53 GMT  
		Size: 39.2 MB (39195172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a33ab2529af9eeecfebb592365bbf303ec6aef18cbb3da714ca55906a5030c`  
		Last Modified: Fri, 31 Jul 2026 04:35:55 GMT  
		Size: 128.5 MB (128469423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b8e686b04821c821eb9e777428cf8e1467d2606a7de1bd5e1176af577c9129`  
		Last Modified: Fri, 31 Jul 2026 04:35:51 GMT  
		Size: 35.0 KB (35015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:eb95fb41655d50c067e51fc86d06e0499dbd0163aad072503f4e93e25ef2047f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e460138d10bb77f6d3a10eb1701577c8d2e3834ae56e01ade145e5aee72edb`

```dockerfile
```

-	Layers:
	-	`sha256:574f30b5c371ac709994e4d73396fc9ed97157f969aa59ef96f4d57a8640e053`  
		Last Modified: Fri, 31 Jul 2026 04:35:52 GMT  
		Size: 5.4 MB (5434285 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:526617602b2ae76ee788375be480411304a48d7d052b22a6a16e853cf34c4404`  
		Last Modified: Fri, 31 Jul 2026 04:35:51 GMT  
		Size: 23.6 KB (23615 bytes)  
		MIME: application/vnd.in-toto+json
