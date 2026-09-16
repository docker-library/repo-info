## `gradle:jdk8-ubi9`

```console
$ docker pull gradle@sha256:d049fce5c2c74f2b2d271fab4cd9f90c21299c13613cde87774aeb5821cb5544
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `gradle:jdk8-ubi9` - linux; amd64

```console
$ docker pull gradle@sha256:dabd9536a3fc644ad2b43c0e71be86e5e710c29e8b5f8716a4f49cb085e90d27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.1 MB (300051736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d525fc67697591c517bdd7bb6c2e99b28be519d3ee034cdebe877f751477de00`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:30:22 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:30:22 GMT
ENV container oci
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:a381891740e9b08e7e7044949fb287ef5340a2125539aefd6ee81cd40d46a5d2 in /      
# Tue, 15 Sep 2026 08:30:22 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:30:22 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:30:22 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
COPY dir:fa29323f217e9b4c1f3d67414a0cfd8e43b6488604a0a4c767aae70fee12d66f in /root/buildinfo/      
# Tue, 15 Sep 2026 08:30:23 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:29:54Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:29:54Z" "architecture"="x86_64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:29:54Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:52:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:52:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:52:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:52:41 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:52:41 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 15 Sep 2026 22:52:45 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 15 Sep 2026 22:52:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:52:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:52:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 15 Sep 2026 23:16:47 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 23:16:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 23:16:47 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 23:16:47 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 23:16:48 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 23:16:54 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 15 Sep 2026 23:16:54 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 15 Sep 2026 23:16:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 15 Sep 2026 23:16:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 23:16:56 GMT
USER gradle
# Tue, 15 Sep 2026 23:16:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 23:16:57 GMT
USER root
```

-	Layers:
	-	`sha256:477ab32bb6ea428934b1d7e3b0baa96bcfe44911c3e7c588cdff641bbad1b3c4`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 40.8 MB (40794728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2439f5ba7320bae7415533878e54a950dfedf91f6bf56ce0d10a0affc7553e`  
		Last Modified: Tue, 15 Sep 2026 22:52:58 GMT  
		Size: 13.5 MB (13542203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4de5ffdffa4fcb0d224b7165249b1d4efd5a41510dff57aaff3bb74a7058fd`  
		Last Modified: Tue, 15 Sep 2026 22:52:59 GMT  
		Size: 55.2 MB (55164901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b58f3c8790c34b0b20c75125aa442ed118047b74a3f2183a30e16c4f824fed5`  
		Last Modified: Tue, 15 Sep 2026 22:52:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a2cec7e40d5df2c38f6b47256afd4ec4e8c5d0e61ae1f7eb88f5c7790a44b0`  
		Last Modified: Tue, 15 Sep 2026 22:52:58 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03991c797b657e6b35d01510f324fe8d23365af9527b231a586607bba38cf2ea`  
		Last Modified: Tue, 15 Sep 2026 23:17:12 GMT  
		Size: 1.4 KB (1426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ef0a18d121d42f530ee8430c95fc90025c3a47bfa8daff373c8f772a8fe17f`  
		Last Modified: Tue, 15 Sep 2026 23:17:14 GMT  
		Size: 52.4 MB (52422373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1e37ac1006f379a78318b6a34184b0b13970131acd4139c382399d59e173c9`  
		Last Modified: Tue, 15 Sep 2026 23:17:16 GMT  
		Size: 138.1 MB (138068535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90507c6cf46659a0fc2bd3617fb2a794d400c8e9937ba4e64f710278b871c8d2`  
		Last Modified: Tue, 15 Sep 2026 23:17:12 GMT  
		Size: 54.9 KB (54918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:0f78582b05eb6570be4472d8146ae2ff74b34512d9e491fe55c72967f6c8df51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5555293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:188e9fee4b67194a3e61b325ba64c4a7f8665de195e5275851cf68fe74d2d3d7`

```dockerfile
```

-	Layers:
	-	`sha256:5f88aeb4a370ff90339d9b5b6559957eee912ba972da319601c5ce91cbd67e38`  
		Last Modified: Tue, 15 Sep 2026 23:17:12 GMT  
		Size: 5.5 MB (5530876 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77b1a56aec82b032b9ff60936ea0cf771a7d882ca6487a776a7c1b64af96fb3d`  
		Last Modified: Tue, 15 Sep 2026 23:17:12 GMT  
		Size: 24.4 KB (24417 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-ubi9` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:6cc097f1deb871f17ce7cdf7396c346078947c6d1189aa0abfa4a0603e63daf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 MB (296492846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd14dc651302bc156b5354de79b881ecbf07169df68620c356637de724e7b509`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:32:10 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:32:10 GMT
ENV container oci
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:72fb2dc4c486c747a87584232d6df49829397aab078c7b53003fc02fe0742d2a in /      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:32:11 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
COPY dir:70bfa1e7dfaad5303fc10a9b7675f727b8b80ee73235d444355fbe0bc2bcf440 in /root/buildinfo/      
# Tue, 15 Sep 2026 08:32:11 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:49Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:49Z" "architecture"="aarch64" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:49Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Tue, 15 Sep 2026 22:41:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 15 Sep 2026 22:41:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 15 Sep 2026 22:41:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 15 Sep 2026 22:41:40 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Tue, 15 Sep 2026 22:41:40 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Tue, 15 Sep 2026 22:41:46 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Tue, 15 Sep 2026 22:41:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 15 Sep 2026 22:41:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:41:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 15 Sep 2026 23:13:46 GMT
CMD ["gradle"]
# Tue, 15 Sep 2026 23:13:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 15 Sep 2026 23:13:46 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 15 Sep 2026 23:13:46 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 15 Sep 2026 23:13:46 GMT
WORKDIR /home/gradle
# Tue, 15 Sep 2026 23:13:52 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Tue, 15 Sep 2026 23:13:52 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 15 Sep 2026 23:13:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 15 Sep 2026 23:13:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 15 Sep 2026 23:13:54 GMT
USER gradle
# Tue, 15 Sep 2026 23:13:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 15 Sep 2026 23:13:55 GMT
USER root
```

-	Layers:
	-	`sha256:edf54d88a9d386573b3ea6054762d75827e6380055074899aed1e5a2c810b3b7`  
		Last Modified: Tue, 15 Sep 2026 09:22:54 GMT  
		Size: 38.8 MB (38799472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192cb1252dd77e1e4abe3a265da47aab6ed46f680de5064122eab7edd09da5b5`  
		Last Modified: Tue, 15 Sep 2026 22:41:59 GMT  
		Size: 28.1 MB (28104551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fdc342c87e80ccc5bbc10a31a78c33a6f2b33c88be8e41c622b25aa0132d7ff`  
		Last Modified: Tue, 15 Sep 2026 22:42:00 GMT  
		Size: 54.3 MB (54263299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2525e68e39ae610aa0997f7b2e72538d0ef95d5b236ffaf46f5d2e1bd798e2d7`  
		Last Modified: Tue, 15 Sep 2026 22:41:58 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1df7d8cd2a6b972684dc32ce1617429d657c9ab1f2a781bcccbc1082e878afd3`  
		Last Modified: Tue, 15 Sep 2026 22:41:59 GMT  
		Size: 2.5 KB (2491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4067c1ff2e5b85827162755fdb9c24225420c039f57cee6d27a3294f21a7d6`  
		Last Modified: Tue, 15 Sep 2026 23:14:11 GMT  
		Size: 1.7 KB (1677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffc2b9161c43963af7de6cf351661557f31d935ec87dc503cc497dfcb7070fc1`  
		Last Modified: Tue, 15 Sep 2026 23:14:12 GMT  
		Size: 37.2 MB (37193130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d09a22fa84f7bd79284d3a5c0da0f3f7549bf7f6586d5c3af134a06a19fe7ffb`  
		Last Modified: Tue, 15 Sep 2026 23:14:14 GMT  
		Size: 138.1 MB (138068536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf75f9bfdd6974724ec5879adb3c29d3d46f32bc9d6245db148ffd4792f2d97`  
		Last Modified: Tue, 15 Sep 2026 23:14:11 GMT  
		Size: 59.5 KB (59529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:932c1d43a325459068e5eced3533569fa8d0c910ea9df1c4a3511fa4f70ff7cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5551550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a255eaa5994f5e610ff415a5d6d6db9d016587cdcb5c98c1641e575f610ac9d`

```dockerfile
```

-	Layers:
	-	`sha256:3ba044cad5bf7891ef22774142ad5144643bc3011f19dd6a51da37c6a7aeffe8`  
		Last Modified: Tue, 15 Sep 2026 23:14:11 GMT  
		Size: 5.5 MB (5526936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef3b81eaf44aaec8301a91422e1572534db69aec366d8edc2f1ab2c823af9f81`  
		Last Modified: Tue, 15 Sep 2026 23:14:11 GMT  
		Size: 24.6 KB (24614 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk8-ubi9` - linux; ppc64le

```console
$ docker pull gradle@sha256:25bae244d41c67a734787286665b81291e8832f51ec3a5d29eab470206db0d5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.6 MB (305588711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c7421b50fc1d38b1d1d7ec5b640e15cebbfc98473e9b10ab180a61486b463a5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL maintainer="Red Hat, Inc."
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL vendor="Red Hat, Inc."
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL url="https://catalog.redhat.com/en/search?searchType=containers"
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL com.redhat.component="ubi9-minimal-container"       name="ubi9/ubi-minimal"       version="9.8"       cpe="cpe:/a:redhat:enterprise_linux:9::appstream"       distribution-scope="public"
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL com.redhat.license_terms="https://www.redhat.com/en/about/red-hat-end-user-license-agreements#UBI"
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL summary="Provides the latest release of the minimal Red Hat Universal Base Image 9."
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL io.k8s.description="The Universal Base Image Minimal is a stripped down image that uses microdnf as a package manager. This base image is freely redistributable, but Red Hat only supports Red Hat technologies through subscriptions for Red Hat products. This image is maintained by Red Hat and updated regularly."
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL io.k8s.display-name="Red Hat Universal Base Image 9 Minimal"
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL io.openshift.expose-services=""
# Tue, 15 Sep 2026 08:31:50 GMT
LABEL io.openshift.tags="minimal rhel9"
# Tue, 15 Sep 2026 08:31:50 GMT
ENV container oci
# Tue, 15 Sep 2026 08:31:51 GMT
COPY dir:cad970baf6a9fa261147b25f68eb2c5a500697da588678abaf0823b4a5b75b60 in /      
# Tue, 15 Sep 2026 08:31:51 GMT
COPY file:1376702515d596f414e3aa494e0daa6d408a6d2475c4aeca96bf9392f5287f69 in /etc/yum.repos.d/.      
# Tue, 15 Sep 2026 08:31:51 GMT
CMD ["/bin/bash"]
# Tue, 15 Sep 2026 08:31:51 GMT
COPY dir:ef2f481d7d25052ed8546afbb5be0da6de6ea92c41275fc8d7958f3aedb10e8c in /usr/share/buildinfo/      
# Tue, 15 Sep 2026 08:31:51 GMT
COPY dir:ef2f481d7d25052ed8546afbb5be0da6de6ea92c41275fc8d7958f3aedb10e8c in /root/buildinfo/      
# Tue, 15 Sep 2026 08:31:51 GMT
LABEL "org.opencontainers.image.created"="2026-09-15T08:31:29Z" "org.opencontainers.image.revision"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "build-date"="2026-09-15T08:31:29Z" "architecture"="ppc64le" "vcs-ref"="13aaee314b4f1afa7645fa9b2b46b02e3e55f433" "vcs-type"="git" "release"="1789460941"org.opencontainers.image.created=2026-09-15T08:31:29Z,org.opencontainers.image.revision=13aaee314b4f1afa7645fa9b2b46b02e3e55f433
# Wed, 16 Sep 2026 01:51:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 01:51:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 01:51:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 16 Sep 2026 01:51:57 GMT
RUN set -eux;     microdnf install -y         gzip         tar         binutils         tzdata         wget         ca-certificates         openssl         fontconfig         glibc-langpack-en     ;     microdnf clean all # buildkit
# Wed, 16 Sep 2026 01:51:57 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 16 Sep 2026 01:52:06 GMT
RUN set -eux;     ARCH="$(rpm --query --queryformat='%{ARCH}' rpm)";     case "${ARCH}" in        aarch64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64le)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        x86_64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip; # buildkit
# Wed, 16 Sep 2026 01:52:07 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 16 Sep 2026 01:52:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 16 Sep 2026 01:52:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 16 Sep 2026 06:06:53 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 06:06:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 06:06:53 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 101 gradle     && useradd --system --gid gradle --uid 101 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 06:06:53 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 06:06:54 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 06:07:29 GMT
RUN set -o errexit -o nounset     && microdnf install -y         make         curl-minimal         wget         tar                 findutils                 unzip         which                 git         git-lfs         subversion     && microdnf clean all         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which git     && which git-lfs     && which svn # buildkit
# Wed, 16 Sep 2026 06:07:29 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 16 Sep 2026 06:07:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 16 Sep 2026 06:07:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 06:07:41 GMT
USER gradle
# Wed, 16 Sep 2026 06:07:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 16 Sep 2026 06:07:44 GMT
USER root
```

-	Layers:
	-	`sha256:b831fe6d9853684ba812bb27d96505c178ad97436632824abc653575dd7c0323`  
		Last Modified: Tue, 15 Sep 2026 12:15:34 GMT  
		Size: 45.1 MB (45083725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10864fa08bbf30cfb262e5b4fe65eace8d03234d29249d0bb54275b49273b004`  
		Last Modified: Wed, 16 Sep 2026 01:52:35 GMT  
		Size: 15.1 MB (15147775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f25b46507de3fc6c565f78b0cddc332da30727686d78b8815794fa862c34ee9`  
		Last Modified: Wed, 16 Sep 2026 01:52:36 GMT  
		Size: 52.7 MB (52671201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:937a24b049825ffa9ff71fa26abf96a1a45396e07d600f381ed008b0e9abb220`  
		Last Modified: Wed, 16 Sep 2026 01:52:34 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2055d28c79572e79e80fc33d8d328071e204b27dd799a3a53143ffd12764797`  
		Last Modified: Wed, 16 Sep 2026 01:52:35 GMT  
		Size: 2.5 KB (2490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55b7f6b20fd4fa3ad7d12b2f61abda55b02e4450b6eb9e10548e8280edd167c1`  
		Last Modified: Wed, 16 Sep 2026 06:08:41 GMT  
		Size: 1.4 KB (1418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb2581723b0692d69beccb55eb66a6c4b1b3123776cd521ffde9c9139f3f8802`  
		Last Modified: Wed, 16 Sep 2026 06:08:44 GMT  
		Size: 54.6 MB (54578396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a760401ccacb3c410d7867922921d5653ac8d6e01b58059090500d098c4b30`  
		Last Modified: Wed, 16 Sep 2026 06:08:45 GMT  
		Size: 138.1 MB (138068536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65363db9d0370eff7e6dcb2304ba7103ccb0d00f9bd27e823ede68622838bd81`  
		Last Modified: Wed, 16 Sep 2026 06:08:41 GMT  
		Size: 35.0 KB (35012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk8-ubi9` - unknown; unknown

```console
$ docker pull gradle@sha256:7817e5911368125c9503faf0947be57f876583fdfebb9e6cb3e1089a36fdf9d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5551588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a05d2737088f3c58db03d4bd818c506d1da6f7412a47574480f5df6ef7a548`

```dockerfile
```

-	Layers:
	-	`sha256:f58acbfc81aac04723c511518dc6301f486d23d1bf2efb3ee453e882eeb00bf3`  
		Last Modified: Wed, 16 Sep 2026 06:08:41 GMT  
		Size: 5.5 MB (5527062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aac21919a4bf0aef5510720fec384bcd8b55ad2523151affc13934e2e147dd47`  
		Last Modified: Wed, 16 Sep 2026 06:08:41 GMT  
		Size: 24.5 KB (24526 bytes)  
		MIME: application/vnd.in-toto+json
