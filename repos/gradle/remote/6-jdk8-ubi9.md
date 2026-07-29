## `gradle:6-jdk8-ubi9`

```console
$ docker pull gradle@sha256:be9b9ad139f3f7f63f46cfd874eb6ad8aac70a739bf09da7ae453ab29e6a1bf6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:6-jdk8-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:11cab7e14beb9baf51f9b032d85d7d27898c688d1be681308cb9470391bbb03b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269614364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56eb98fcf75a2f50ed489cdd851b23110f7eec2a6fd08f3dae0cac3a336110c8`
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
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 29 Jul 2026 18:26:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:27:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:41:39 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:41:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:41:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:41:39 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:41:39 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:41:43 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:41:43 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 29 Jul 2026 18:41:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 29 Jul 2026 18:41:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:41:45 GMT
USER gradle
# Wed, 29 Jul 2026 18:41:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:41:45 GMT
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
	-	`sha256:e859805c27e56226586896bb37a691c527079e53ba65655cdc117bb34339057c`  
		Last Modified: Wed, 29 Jul 2026 18:27:14 GMT  
		Size: 55.2 MB (55199093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa59d5b2903db8d7657f3b9cc90fc3298ac99acb07a6636b0ca46d61e8548d59`  
		Last Modified: Wed, 29 Jul 2026 18:27:12 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e874a565f8c4b0d9d156dfb74661735f6e9c4ea7d0ca48dc4987c0233bdcdd5`  
		Last Modified: Wed, 29 Jul 2026 18:27:13 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0c17247168bc27a38092ea2934af7b47124ab1a0ae181bd582911085529330`  
		Last Modified: Wed, 29 Jul 2026 18:42:00 GMT  
		Size: 1.7 KB (1707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4d1e404cd87fa62a602934d9587ceae12a34212404960df1d3dd928f2f7d575`  
		Last Modified: Wed, 29 Jul 2026 18:42:02 GMT  
		Size: 37.9 MB (37919894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aae29f739d39bde40ae0bf47daeacfcb5abe4f5d3fe83b9d52e2c67a1893257`  
		Last Modified: Wed, 29 Jul 2026 18:42:03 GMT  
		Size: 107.7 MB (107696665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2522874cb6e7c11ff899fd32fbad58372db6b64c5fce29632e3d87ef583d3a4f`  
		Last Modified: Wed, 29 Jul 2026 18:42:01 GMT  
		Size: 431.3 KB (431268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:61664fc0a3da71d73ffbeb040595462088e835f17841578de79a65da2ccba328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5443770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f360f5bf31378baa665aa44d5b1f48fc57b2da3edccda00b96f79fe36730dab6`

```dockerfile
```

-	Layers:
	-	`sha256:590a6d6d3d1581e0c8962a86795967b5237562b569d287a8a93ebc9154a2f7b7`  
		Last Modified: Wed, 29 Jul 2026 18:42:01 GMT  
		Size: 5.4 MB (5420215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52aca577d16e41e7889d91cd787893f99fc5092bdd22059fa8800cfd2883b12d`  
		Last Modified: Wed, 29 Jul 2026 18:42:00 GMT  
		Size: 23.6 KB (23555 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk8-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:bfada7fee8dcd447e215cbd0c97e968bd47bb20de40bbc276dd43c4f10f90d02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266548822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f6597eb983b51d6010b8523267d9b8ba2c0ff9ac8d7833782ba6cab8cc6cc2b`
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
# Wed, 29 Jul 2026 18:26:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 29 Jul 2026 18:26:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 29 Jul 2026 18:26:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 29 Jul 2026 18:26:35 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 29 Jul 2026 18:26:35 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 29 Jul 2026 18:26:39 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 29 Jul 2026 18:26:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:26:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:26:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:40:17 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:40:17 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:40:17 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:40:17 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:40:17 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:40:21 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:40:21 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 29 Jul 2026 18:40:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 29 Jul 2026 18:40:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:40:23 GMT
USER gradle
# Wed, 29 Jul 2026 18:40:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:40:23 GMT
USER root
```

-	Layers:
	-	`sha256:4431e8a4eff3b814ee9a578afed4f42f29096b2d18c83f5206d2321ac4cb1a54`  
		Last Modified: Tue, 28 Jul 2026 05:41:47 GMT  
		Size: 38.8 MB (38838081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:042535865c31500b3ebc0b5d7946f17bdea6d25e6e52a4c1f3c4a6b677a00c5f`  
		Last Modified: Wed, 29 Jul 2026 18:26:53 GMT  
		Size: 28.1 MB (28105546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a20454cb3460c475a2a02bac9eba0a133571efd5c28c320e662abac9fadb633`  
		Last Modified: Wed, 29 Jul 2026 18:26:54 GMT  
		Size: 54.3 MB (54273401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59e8e99b9e82f63ee7f0eb9bd3fe3578c81587f7f539e9f9c70ed29b03157bf7`  
		Last Modified: Wed, 29 Jul 2026 18:26:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0bb0de9b478f1f25136fabcb90e3ffc49c3be898c5818aa224020ef5496984`  
		Last Modified: Wed, 29 Jul 2026 18:26:53 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d0ea2b652c9d3e45860b41d13bc142cceb78973aa66102e857786149d36759`  
		Last Modified: Wed, 29 Jul 2026 18:40:38 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bf4a9c4aa47c272b73c9e7a6668dccf20de200309565bd0a02f00459f9d7bd`  
		Last Modified: Wed, 29 Jul 2026 18:40:39 GMT  
		Size: 37.2 MB (37205750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec2235907386fd26bba67a8b4e5fb753e077c98687f4eb61f3ee11f90e98cdc8`  
		Last Modified: Wed, 29 Jul 2026 18:40:41 GMT  
		Size: 107.7 MB (107696666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5616368b262cf36e4abcc4b35e3872e79b0b982b6529532758d9594a20c2d61`  
		Last Modified: Wed, 29 Jul 2026 18:40:38 GMT  
		Size: 425.0 KB (425020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:6e842594122cbda5255b04fdbcb179555bbc4f7a5a9413e691f5d23d2f98626d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5442267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de7687b28e0ad0f0943140a955e8d6bd5f356ea1eb06ba8fdeb5b1f3f0a57ea3`

```dockerfile
```

-	Layers:
	-	`sha256:2678a5dbaebc2e285aa4314bb8dc85b948318fc6b6b9784596d18e183f76fe5a`  
		Last Modified: Wed, 29 Jul 2026 18:40:38 GMT  
		Size: 5.4 MB (5418539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba52e310f93aa5b931ee4b6efdff20a4b76736e893bf5471bf90ff6aa6c25445`  
		Last Modified: Wed, 29 Jul 2026 18:40:38 GMT  
		Size: 23.7 KB (23728 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk8-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:29f3fdd955710393c1efa76ef4d0484757dbccb36f57fcf4b0ce289738e954ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274823025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec7b9a61425bd9de13179abe7153058defc17f6f1cd2c13d83afb8004522cb7b`
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
ENV JAVA_VERSION=jdk8u492-b09
# Wed, 29 Jul 2026 18:26:42 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        ppc64le)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        x86_64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 29 Jul 2026 18:26:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 29 Jul 2026 18:26:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 29 Jul 2026 18:26:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 29 Jul 2026 18:55:26 GMT
CMD ["gradle"]
# Wed, 29 Jul 2026 18:55:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 29 Jul 2026 18:55:26 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 29 Jul 2026 18:55:26 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 29 Jul 2026 18:55:26 GMT
WORKDIR /home/gradle
# Wed, 29 Jul 2026 18:58:43 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 29 Jul 2026 18:58:43 GMT
ENV GRADLE_VERSION=6.9.4
# Wed, 29 Jul 2026 18:58:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Wed, 29 Jul 2026 18:59:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 29 Jul 2026 18:59:44 GMT
USER gradle
# Wed, 29 Jul 2026 18:59:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 29 Jul 2026 18:59:45 GMT
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
	-	`sha256:8ee69b6a0c1be07bdff98d4746b5786a6d136355bc67f6db8ede286e63c549ba`  
		Last Modified: Wed, 29 Jul 2026 18:27:14 GMT  
		Size: 52.7 MB (52669707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd46bfba21bd8711a6b5de5acbcb98a94853fe15eb5a48501a0f997e1fd5a710`  
		Last Modified: Wed, 29 Jul 2026 18:26:55 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5afa2d760e424227c68a34441399f3eace15f69d84c34885b90144da4e8db8`  
		Last Modified: Wed, 29 Jul 2026 18:27:13 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49ddd7b749b53ec86f89ce8f7d2ba43fcd6e133469b0e6f88236e37ae6e01856`  
		Last Modified: Wed, 29 Jul 2026 18:56:39 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:867c9d7af85005dba9d3b88b7656178693eb8c74894329560ca9691445d43c6b`  
		Last Modified: Wed, 29 Jul 2026 18:59:20 GMT  
		Size: 39.2 MB (39193765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9bdffb25d98e8f6679492b54e6b2a15bc732e72da87fce7dd75daa363702a4`  
		Last Modified: Wed, 29 Jul 2026 19:00:23 GMT  
		Size: 107.7 MB (107696667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf32c8a9b672747b7af90be950f709666964287dba314cb40bf3a4c3c438060`  
		Last Modified: Wed, 29 Jul 2026 19:00:18 GMT  
		Size: 35.0 KB (34984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:576e325a53c3f67ebcedd18e662233dfbb4d497194eed2dca01d00e20a52a681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5440004 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79a140f3d9ef169d484d39cb73c8460b1022447538341a68c59ef91a1b7e156`

```dockerfile
```

-	Layers:
	-	`sha256:cbc6439f33b48de458278d5f039a183883a4b142ca8e9291f1e8cea6d8e9dcc0`  
		Last Modified: Wed, 29 Jul 2026 19:00:18 GMT  
		Size: 5.4 MB (5416389 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae3589d5136a0b1df2dd425a91fc4a788352a3575ef58e53387e77e00a9343dd`  
		Last Modified: Wed, 29 Jul 2026 19:00:18 GMT  
		Size: 23.6 KB (23615 bytes)  
		MIME: application/vnd.in-toto+json
