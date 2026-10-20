## `gradle:9-jdk25-graal-noble`

```console
$ docker pull gradle@sha256:c88bce5c40321f09a77feb0f7fd7f54ef030302eda6b25fcf39e3118a6449d86
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk25-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:57d737ec32b819858824d2af062c2a0e03e86f557be2151762fbaf31b2e9a832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **680.7 MB (680654406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e0d7fe2d535fe78d52c3f738aecc5c349ae8fd2040617f8b6bf2fb0da8b8f40`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 17:51:46 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:51:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:51:46 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:51:46 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:51:46 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:52:17 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:52:17 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 20 Oct 2026 17:52:17 GMT
ENV JAVA_VERSION=25.0.4.1.1
# Tue, 20 Oct 2026 17:52:32 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=05ccbbe783210b6886ff7b08fcd0b061c5dce4852b05db87284fc0e24abb08e2     && GRAALVM_AARCH64_DOWNLOAD_SHA256=e5f5e2f59643cf96765c741dc00b206f86c69c8c1bf843fe26050c871e0e2dbc     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.4.4.1.1     && GRAALVM_ARTIFACT_VERSION=25i4-25.0.4.1.1     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 20 Oct 2026 17:52:32 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:52:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:52:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:52:34 GMT
USER gradle
# Tue, 20 Oct 2026 17:52:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:52:35 GMT
USER root
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16b9ed6a11c63e14a2fb9884e6a7db414c46afe0b0db3447b7ce483130170436`  
		Last Modified: Tue, 20 Oct 2026 17:53:16 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:576841c58c60b7d24057ec0beb606b88e91777739290a70165e7bb6722367ff2`  
		Last Modified: Tue, 20 Oct 2026 17:53:24 GMT  
		Size: 148.3 MB (148332612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aad34fa2e653d4c75edebe862797cf4a70d27cab935f3b327e0323833580f6b`  
		Last Modified: Tue, 20 Oct 2026 17:53:30 GMT  
		Size: 351.0 MB (350995486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6888f0df554c335281c6f690437fd802304e1bf89caf256952b1169f5de0ed2`  
		Last Modified: Tue, 20 Oct 2026 17:53:25 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90019910fa528778e98cd241072e5ad3e83b56c17bbb1408e92d1aaf131dd9a`  
		Last Modified: Tue, 20 Oct 2026 17:53:17 GMT  
		Size: 25.6 KB (25621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:b71abe3e4974fb2644da356eedf72008a1c069ad6ad4a3d5a3691fbc47826ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9145335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33936ba595b012d1892c52309d04769140621cfd6780702ea1efd4f4e38f62e9`

```dockerfile
```

-	Layers:
	-	`sha256:70050f53e3f165e2dea51831e1f6ea789d882ca4c3b0729fbe0a631524f4c5d4`  
		Last Modified: Tue, 20 Oct 2026 17:53:17 GMT  
		Size: 9.1 MB (9114720 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1fe525d13c6795e96b0c538a49ddad39fa1e7f65d8ea770b84ea1f50cead2ef9`  
		Last Modified: Tue, 20 Oct 2026 17:53:16 GMT  
		Size: 30.6 KB (30615 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:39ec378e2698c93bd7890c36702c1df3beefb36e359184363d9afbd6f1b23f31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **650.2 MB (650164368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:892eef8b48f6c0e81722648380ec02a3778fee9aaaff30ef6b69ddce740908f2`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 17:52:38 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:52:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:52:38 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:52:38 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:52:38 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:53:15 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:53:15 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 20 Oct 2026 17:53:15 GMT
ENV JAVA_VERSION=25.0.4.1.1
# Tue, 20 Oct 2026 17:53:26 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=05ccbbe783210b6886ff7b08fcd0b061c5dce4852b05db87284fc0e24abb08e2     && GRAALVM_AARCH64_DOWNLOAD_SHA256=e5f5e2f59643cf96765c741dc00b206f86c69c8c1bf843fe26050c871e0e2dbc     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.4.4.1.1     && GRAALVM_ARTIFACT_VERSION=25i4-25.0.4.1.1     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 20 Oct 2026 17:53:26 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:53:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:53:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:53:29 GMT
USER gradle
# Tue, 20 Oct 2026 17:53:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:53:30 GMT
USER root
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c0be3519abca82bb85868cbcdb06745889bab234a7e9bbc967efd4723a2e58b`  
		Last Modified: Tue, 20 Oct 2026 17:54:06 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e3bf9b4d44a285acd765966d29121fb48dd3d7a2750005a65e3a6f57815922`  
		Last Modified: Tue, 20 Oct 2026 17:54:14 GMT  
		Size: 143.4 MB (143438251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4bc79e8be7c97bf7a8cd269ed9e8b6766126320c37f093a113f91c2806fd03f`  
		Last Modified: Tue, 20 Oct 2026 17:54:18 GMT  
		Size: 326.2 MB (326222074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b46ebda4662cd6066a961b4e96d85b1cc25446396cf9acf8a268c145c3c7b357`  
		Last Modified: Tue, 20 Oct 2026 17:54:14 GMT  
		Size: 151.5 MB (151533615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052dbd696586c3b876c9a59914316f276679ca92c3b421307c1061955dec286b`  
		Last Modified: Tue, 20 Oct 2026 17:54:07 GMT  
		Size: 29.4 KB (29350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:e01c2e41877cefd078357ad8ccc9d8c270c1ae5fb36be9242fbebdc5777339f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9115018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:144c3e035b7d6eb3ea269f6b4adf09c1f37af17537332f85b56a1c69f7d266e5`

```dockerfile
```

-	Layers:
	-	`sha256:279e8985adf569cae4893c5e7c71d960a6ab13fbc6a350ab803478ab4826e3e7`  
		Last Modified: Tue, 20 Oct 2026 17:54:06 GMT  
		Size: 9.1 MB (9084145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2aab0ac0803d43e17184bdda2f6a317ac10e34661ea5b4813a79159ea7c2047b`  
		Last Modified: Tue, 20 Oct 2026 17:54:06 GMT  
		Size: 30.9 KB (30873 bytes)  
		MIME: application/vnd.in-toto+json
