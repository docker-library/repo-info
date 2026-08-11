## `gradle:9-graal-noble`

```console
$ docker pull gradle@sha256:1406b08083c89e1b5dfb5c8e3aa19e473e1d9e5cccb976c9d14793f8de2ea099
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:d077753be31875ad5292550cf3e09de553c6e942d3cb92bd14efdf343e07edbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **678.5 MB (678528790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8750eb0844a49f086f8f3fe8282ef0ee76bff5148ead45d622ee62eb22841125`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 17:45:22 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 17:45:22 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 17:45:22 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 10 Aug 2026 17:45:22 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 17:45:22 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 17:45:59 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 17:45:59 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Mon, 10 Aug 2026 17:45:59 GMT
ENV JAVA_VERSION=25.0.4
# Mon, 10 Aug 2026 17:46:11 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Mon, 10 Aug 2026 17:46:11 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 17:46:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:46:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:46:13 GMT
USER gradle
# Mon, 10 Aug 2026 17:46:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:46:14 GMT
USER root
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c1ce6cea4dc40b4022c0cc263059fe1e456c8d9ce3291fc7e078456a4bd0a4`  
		Last Modified: Mon, 10 Aug 2026 17:46:54 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:602d523fa72569b11da01e3b0c93d1d4d557396c0cab336beeb5dc5eb4d85b57`  
		Last Modified: Mon, 10 Aug 2026 17:47:01 GMT  
		Size: 150.6 MB (150611083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a045c212acecfd9f15487f64fa4912e6f6f5889b802525554fdcc37c6452b4d6`  
		Last Modified: Mon, 10 Aug 2026 17:47:05 GMT  
		Size: 347.9 MB (347911722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfee724f53a9824433be4a9ddbebd517c12cad9f345895df5f85e37bec18e94`  
		Last Modified: Mon, 10 Aug 2026 17:47:02 GMT  
		Size: 150.2 MB (150227945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e7f08a4ef8c6a8b38da2d0e25d8da1173f29abef4417e27dde477d6d359c82`  
		Last Modified: Mon, 10 Aug 2026 17:46:56 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:9ca7a244ad1b34e3ad8f929ce33e38096c04499d5a889c8cbe4ea1a2eff3b294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9147480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f6ebc2233ae5c03139279b94ea68265d06f0793cd578571ccff7307e32cf8f4`

```dockerfile
```

-	Layers:
	-	`sha256:77f1cd7a3cd3dfe545ee2a09f6a8957930d439528870975cb35bfc5c3b1518cc`  
		Last Modified: Mon, 10 Aug 2026 17:46:55 GMT  
		Size: 9.1 MB (9116901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee117e70a61d492d0b94e2bf618106787e58420fe59b1bbe92fdb7d856b29d02`  
		Last Modified: Mon, 10 Aug 2026 17:46:54 GMT  
		Size: 30.6 KB (30579 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:f1225b440df050966709f24b401dcb0cbf6103a8b9ddfe2c04649353a2c59683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.9 MB (644948750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7ffc8ececefdca43048a577824b297d469bbc65831cc6dfbb88e2f74ab8ea93`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Mon, 10 Aug 2026 17:45:10 GMT
CMD ["gradle"]
# Mon, 10 Aug 2026 17:45:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Mon, 10 Aug 2026 17:45:10 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Mon, 10 Aug 2026 17:45:10 GMT
VOLUME [/home/gradle/.gradle]
# Mon, 10 Aug 2026 17:45:10 GMT
WORKDIR /home/gradle
# Mon, 10 Aug 2026 17:45:41 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Mon, 10 Aug 2026 17:45:41 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Mon, 10 Aug 2026 17:45:41 GMT
ENV JAVA_VERSION=25.0.4
# Mon, 10 Aug 2026 17:45:51 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Mon, 10 Aug 2026 17:45:51 GMT
ENV GRADLE_VERSION=9.7.0
# Mon, 10 Aug 2026 17:45:51 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Mon, 10 Aug 2026 17:45:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Mon, 10 Aug 2026 17:45:54 GMT
USER gradle
# Mon, 10 Aug 2026 17:45:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Mon, 10 Aug 2026 17:45:54 GMT
USER root
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b43754766e65d8f9a4a297183a17053f0ec61e6bb703c1bb888fe6a92745659`  
		Last Modified: Mon, 10 Aug 2026 17:46:30 GMT  
		Size: 1.3 KB (1282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8d753d845ed2b29a785bc7f5bd794ecab002db0a9a2dd6f85cc3ede61c2e9b`  
		Last Modified: Mon, 10 Aug 2026 17:46:38 GMT  
		Size: 143.3 MB (143320808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f1a5ce31320eae637c01c6095b5398c405edb1cf049c9a1d8384a910f420acc`  
		Last Modified: Mon, 10 Aug 2026 17:46:42 GMT  
		Size: 322.5 MB (322482530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b35f53e5799d8a1c3f11e5a463f66652bf56ef95c5deb948a7ab073badc48a1`  
		Last Modified: Mon, 10 Aug 2026 17:46:38 GMT  
		Size: 150.2 MB (150227944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35e325a2bb8077ee05fdff1461149e8ea446d7d502e1e436ac1a460e890deb4a`  
		Last Modified: Mon, 10 Aug 2026 17:46:32 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:b8d11485e242cf8150138a82231bb9fe64382f0531d84ce62cc6e067867df694
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9117164 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92147ecc6e0f08c185b73ab532375f1bb83753a855d2d1ac8f7119c3ecde5fc1`

```dockerfile
```

-	Layers:
	-	`sha256:1bfae70fa9e2dfd232477714140d94f2a98bf4105dc89c12636c99ba446f8668`  
		Last Modified: Mon, 10 Aug 2026 17:46:31 GMT  
		Size: 9.1 MB (9086326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52af04550841c7eb756eec95986c26fcd0444bb900d94c1849e529de2d5fc75b`  
		Last Modified: Mon, 10 Aug 2026 17:46:30 GMT  
		Size: 30.8 KB (30838 bytes)  
		MIME: application/vnd.in-toto+json
