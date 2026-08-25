## `gradle:6-jdk8-ubi9`

```console
$ docker pull gradle@sha256:55fb37ff5f26b5afb548697fdebbc61eceeaa15689396fa0fa027311f5623e8a
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
$ docker pull gradle@sha256:f4f77c223a834968aa2646f52f0e877bb8fe2a3969fd6491b5ef5a08828462b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.6 MB (269579435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aec0162a6574290f30ff2ac72760126cb039eee532a7c14b4e85ac34162a4b03`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:42:08 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:42:09 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:42:09 GMT
ENV container oci
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:8b54154024a9f6604a1f7d88b375ea31b450980a74152912280af8df957f00cd in /      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:42:09 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:42:09 GMT
COPY dir:070ea34291ea740e6cd31833ff6dcb8f3000a7173f6294c8f875540d0e160dbf in /root/buildinfo/      
# Tue, 25 Aug 2026 08:42:10 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:41:53Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:41:53Z" "architecture"="x86_64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:41:53Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:45:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 17:45:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:45:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 17:45:36 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:45:36 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 25 Aug 2026 17:45:39 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 25 Aug 2026 17:45:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 25 Aug 2026 17:45:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:45:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 25 Aug 2026 17:58:40 GMT
CMD ["gradle"]
# Tue, 25 Aug 2026 17:58:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 25 Aug 2026 17:58:40 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 25 Aug 2026 17:58:40 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Aug 2026 17:58:40 GMT
WORKDIR /home/gradle
# Tue, 25 Aug 2026 17:58:43 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 25 Aug 2026 17:58:43 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 25 Aug 2026 17:58:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 25 Aug 2026 17:58:46 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 25 Aug 2026 17:58:46 GMT
USER gradle
# Tue, 25 Aug 2026 17:58:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 25 Aug 2026 17:58:47 GMT
USER root
```

-	Layers:
	-	`sha256:4853116e101d40f67d98c14106326af68960f39e03627259f46bfe4c535cca9b`  
		Last Modified: Tue, 25 Aug 2026 09:35:48 GMT  
		Size: 40.7 MB (40711993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:162c16a4f013a2e15ad23d1916e94b747d23b588300c3f8c41203d808d862fc6`  
		Last Modified: Tue, 25 Aug 2026 17:45:53 GMT  
		Size: 27.7 MB (27658026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0229efdcd0e2ae6b9af5a8d7352fff18f8b194f740462dfad6d32eabb6b9ae7`  
		Last Modified: Tue, 25 Aug 2026 17:45:54 GMT  
		Size: 55.2 MB (55164901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a643538b42113fe6c80fedec2324cced562b4145574c6e2e8d86121c70e11ce`  
		Last Modified: Tue, 25 Aug 2026 17:45:51 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:835f5d3319e435d322dbb04470b825d227f5be9d7dd9452c0a5dce1ace75db8a`  
		Last Modified: Tue, 25 Aug 2026 17:45:52 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74839080141e396cc7ae70ee2e252e21da347f136bc740aa60b162666fba5a73`  
		Last Modified: Tue, 25 Aug 2026 17:59:00 GMT  
		Size: 1.7 KB (1704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b1c83225a47265932b02dbe9423995af30c476f367f8bdcbee79e3c1ca678d`  
		Last Modified: Tue, 25 Aug 2026 17:59:02 GMT  
		Size: 37.9 MB (37912225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dea4481a3e2567181f18f895e4b38e6e5ceaa093e48222d09f87117283c873c`  
		Last Modified: Tue, 25 Aug 2026 17:59:03 GMT  
		Size: 107.7 MB (107696654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acb0c1c521256e40b037d5353b087a4c05a092515a021f6ab196681c81b62f52`  
		Last Modified: Tue, 25 Aug 2026 17:59:00 GMT  
		Size: 431.3 KB (431281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:470a24f2cd8e0d9d28753d89670127625e546f90cef13dd873b6397fadd05eed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5443813 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59ef0d0611c3f5223bf410e59da6b3c0e6453df499eb71c9cf5c995cd9fc6fd1`

```dockerfile
```

-	Layers:
	-	`sha256:4afab5d73613a3e25303e0d8f84dd7060cbabb9f9d474f0a87fe1a1242af1712`  
		Last Modified: Tue, 25 Aug 2026 17:59:00 GMT  
		Size: 5.4 MB (5420258 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cae04216d5bd89dcc0c04667a5448562086949457f190f4aac522e045a1f18aa`  
		Last Modified: Tue, 25 Aug 2026 17:59:00 GMT  
		Size: 23.6 KB (23555 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk8-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:800b440fb2d2e8fd22ae1cf190086a329fde67ece9147bdbf4277e2551e25330
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **266.5 MB (266512351 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d39d015ad970dea5f30c50060e8460d2d0dffc88ff3c6dcf134c0c8199ed6a6a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.expose-services=""
# Tue, 25 Aug 2026 08:43:54 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 25 Aug 2026 08:43:54 GMT
ENV container oci
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:fc82963b4cd1761f20a1a620749f6598604531a4997e7419bffffcb2369d8feb in /      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 25 Aug 2026 08:43:55 GMT
CMD ["/bin/bash"]
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /usr/share/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
COPY dir:3079f305cc24544d349abf38a4bec53199670ed6b04fb0218ac1be8ab8e4f589 in /root/buildinfo/      
# Tue, 25 Aug 2026 08:43:55 GMT
LABEL "org.opencontainers.image.created"="2026-08-25T08:43:32Z" "org.opencontainers.image.revision"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "build-date"="2026-08-25T08:43:32Z" "architecture"="aarch64" "vcs-ref"="85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f" "vcs-type"="git" "release"="1787647261"org.opencontainers.image.created=2026-08-25T08:43:32Z,org.opencontainers.image.revision=85fbbe99585cc2a24e8b7c66c0c7127ddd59f55f
# Tue, 25 Aug 2026 17:44:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 17:44:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 17:44:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 25 Aug 2026 17:44:54 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 25 Aug 2026 17:44:54 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 25 Aug 2026 17:44:59 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 25 Aug 2026 17:44:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 25 Aug 2026 17:44:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 25 Aug 2026 17:44:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 25 Aug 2026 17:55:50 GMT
CMD ["gradle"]
# Tue, 25 Aug 2026 17:55:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 25 Aug 2026 17:55:50 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 25 Aug 2026 17:55:50 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 25 Aug 2026 17:55:50 GMT
WORKDIR /home/gradle
# Tue, 25 Aug 2026 17:56:29 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 25 Aug 2026 17:56:29 GMT
ENV GRADLE_VERSION=6.9.4
# Tue, 25 Aug 2026 17:56:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Tue, 25 Aug 2026 17:56:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 25 Aug 2026 17:56:31 GMT
USER gradle
# Tue, 25 Aug 2026 17:56:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Tue, 25 Aug 2026 17:56:32 GMT
USER root
```

-	Layers:
	-	`sha256:cfeec01a2bba583c2dcde9b457cc89d4b56583567390972f5501ce5ad4fa4ae8`  
		Last Modified: Tue, 25 Aug 2026 09:35:36 GMT  
		Size: 38.8 MB (38815608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0942b95198dbc12cf5b80b9dc8c2c0ed8e007bb99aad924c2a917415f5f21974`  
		Last Modified: Tue, 25 Aug 2026 17:45:13 GMT  
		Size: 28.1 MB (28103650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26b1b14116531f8d6b51c88d75a455e3c5164f2ce5995471ed309da4d2e0a583`  
		Last Modified: Tue, 25 Aug 2026 17:45:14 GMT  
		Size: 54.3 MB (54263281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:792a763a78f7663fa1e721a6f8a3dc06fd0b31401a421dce5d374da957ba8c44`  
		Last Modified: Tue, 25 Aug 2026 17:45:11 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202d48718f2388c829a1dc40b024e0eeb91d53b2fb7ceba74313da253573b224`  
		Last Modified: Tue, 25 Aug 2026 17:45:12 GMT  
		Size: 2.5 KB (2489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b9fa84fadda24cd78ecd7dcd6f6f7cac631aee8f82a102688729c90c483122`  
		Last Modified: Tue, 25 Aug 2026 17:56:13 GMT  
		Size: 1.7 KB (1708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5540c2c970fdb81a622da1ea2529a9a6c55db08eb8a1ffbccda33584e20ba793`  
		Last Modified: Tue, 25 Aug 2026 17:56:48 GMT  
		Size: 37.2 MB (37203759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f6667909e66f2280806e261606c3e7a0f0969b8f1a8f5c339c65f4352783bf`  
		Last Modified: Tue, 25 Aug 2026 17:56:50 GMT  
		Size: 107.7 MB (107696668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ee2081104f8ce37f38496f111114a6ef563481169515d6f2e61e0665c269ab`  
		Last Modified: Tue, 25 Aug 2026 17:56:46 GMT  
		Size: 425.0 KB (425030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:63005fdd2c4a8b29f0c492264e0033ad169f5336abd1f9204070d98e5f043e7e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5442310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:969b7f8f445021b06e664674bf0947deb75b7ab19e2dc7c5add134b6064e6d5c`

```dockerfile
```

-	Layers:
	-	`sha256:1c149417a64485bddcca76653ac137f425630ea94fcfcb75da40a142b3de4f6a`  
		Last Modified: Tue, 25 Aug 2026 17:56:46 GMT  
		Size: 5.4 MB (5418582 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38214434da8d9b7cef25568c9ba95bbfc7c1fc740118587f22e1b66891ff1f3e`  
		Last Modified: Tue, 25 Aug 2026 17:56:46 GMT  
		Size: 23.7 KB (23728 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:6-jdk8-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:03e1496cb80ac6c2b2e13bc3c46b826d401d7a85679d4b611f9400de1b98539a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274823944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3e6a485fa66d625cdd5d1f1d86f1e3c69c7d4d9da13fafb99648e90b701d54c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL maintainer="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL vendor="Red Hat, Inc."
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL io.openshift.expose-services=""
# Mon, 17 Aug 2026 17:29:28 GMT
LABEL io.openshift.tags="minimal rhel9"
# Mon, 17 Aug 2026 17:29:28 GMT
ENV container oci
# Mon, 17 Aug 2026 17:29:29 GMT
COPY dir:fd02ee61f18b6a9a0841859445fda5f8ab05c6927edd49e303b6a533755bd4a4 in /      
# Mon, 17 Aug 2026 17:29:29 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Mon, 17 Aug 2026 17:29:29 GMT
CMD ["/bin/bash"]
# Mon, 17 Aug 2026 17:29:29 GMT
COPY dir:b25d5255b5edbca8e555492c2c12dd22f04038385b82b65469d49226dd8af92b in /usr/share/buildinfo/      
# Mon, 17 Aug 2026 17:29:29 GMT
COPY dir:b25d5255b5edbca8e555492c2c12dd22f04038385b82b65469d49226dd8af92b in /root/buildinfo/      
# Mon, 17 Aug 2026 17:29:29 GMT
LABEL "org.opencontainers.image.created"="2026-08-17T17:29:13Z" "org.opencontainers.image.revision"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "build-date"="2026-08-17T17:29:13Z" "architecture"="ppc64le" "vcs-ref"="6bb838e7904a1c68094d157a898fff623ad3fcb9" "vcs-type"="git" "release"="1786987521"org.opencontainers.image.created=2026-08-17T17:29:13Z,org.opencontainers.image.revision=6bb838e7904a1c68094d157a898fff623ad3fcb9
# Fri, 21 Aug 2026 20:26:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 20:26:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:26:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 20:26:31 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Fri, 21 Aug 2026 20:26:31 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 20:26:38 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Fri, 21 Aug 2026 20:26:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:26:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:26:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 21:01:52 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 21:01:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 21:01:52 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 21:01:52 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 21:01:52 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 21:06:28 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Fri, 21 Aug 2026 21:06:28 GMT
ENV GRADLE_VERSION=6.9.4
# Fri, 21 Aug 2026 21:06:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
# Fri, 21 Aug 2026 21:08:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 21:08:21 GMT
USER gradle
# Fri, 21 Aug 2026 21:08:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=3e240228538de9f18772a574e99a0ba959e83d6ef351014381acd9631781389a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 21 Aug 2026 21:08:22 GMT
USER root
```

-	Layers:
	-	`sha256:6392cf19f004ed09bcdb61b0e4a5631b05086155709b2aef736fecbd95fbce63`  
		Last Modified: Mon, 17 Aug 2026 18:18:04 GMT  
		Size: 45.1 MB (45134291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dfe74e2c931a31fff9c889520d02658ea98fe4483f1a9cf8e06dd33280afc3`  
		Last Modified: Fri, 21 Aug 2026 20:27:07 GMT  
		Size: 30.1 MB (30087125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5fa29506581d1821af704f42fe7b5ccb730bb77f45804fad08ff22164b06f9`  
		Last Modified: Fri, 21 Aug 2026 20:27:07 GMT  
		Size: 52.7 MB (52671204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022d103659bb0ec95adc054d6be1537fc05651175441e48674b189eaea33e8cc`  
		Last Modified: Fri, 21 Aug 2026 20:27:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e06beb9d475419fd61f00099d1c9d9369c4c57b5076dd5848ec8980437b988b`  
		Last Modified: Fri, 21 Aug 2026 20:27:05 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e777ee266dcb0c9ac95bed042c6025024cc73b2211de9c2ffae03776675ed5ed`  
		Last Modified: Fri, 21 Aug 2026 21:02:48 GMT  
		Size: 1.7 KB (1713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5de6e1875bf65d53af2dfc9402ac94aa55bf1d0490db8dbbaa785c7f74a3eb`  
		Last Modified: Fri, 21 Aug 2026 21:07:05 GMT  
		Size: 39.2 MB (39195308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:062109757871efd4050c797ff84e857c0ba58f2f6770680204ef3f73cfce1961`  
		Last Modified: Fri, 21 Aug 2026 21:08:56 GMT  
		Size: 107.7 MB (107696670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945b3a91275f78c1445e3644a37471f6f5d95718ca3fc14e6edee7879dd357c9`  
		Last Modified: Fri, 21 Aug 2026 21:08:53 GMT  
		Size: 35.0 KB (34983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:6-jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:f2a454a5dcba7833a7f859f1273014451351c60c51b8dc42bf2a34314c89e2c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5440012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c47e6306092ae154c4b23899f46f550a82ec0a847b93df0392f5f83b4a876668`

```dockerfile
```

-	Layers:
	-	`sha256:9956b835c287f86b421e76cac022d3e56551deeba1bec3ebc62f140981c2d347`  
		Last Modified: Fri, 21 Aug 2026 21:08:53 GMT  
		Size: 5.4 MB (5416432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1bd8edcee83ff6f8ccb8cb2397fa4185527f6cdb97e40d21ec9b83cd8c76116`  
		Last Modified: Fri, 21 Aug 2026 21:08:53 GMT  
		Size: 23.6 KB (23580 bytes)  
		MIME: application/vnd.in-toto+json
