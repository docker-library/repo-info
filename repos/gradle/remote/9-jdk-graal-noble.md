## `gradle:9-jdk-graal-noble`

```console
$ docker pull gradle@sha256:d1a36a48ab8da069cdc1eff37349140f3ee7e1d9b65b6c167085aa102e6bdb5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:db024e4dc933bb79b46035cf264990adcdd72c318b2edab5ecbe8205e1ec3485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.1 MB (662081202 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c068f8187fbb28cb50b338181e22c54fa9302d4041ddceee18e31f3d5ee09ca`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:22:32 GMT
CMD ["gradle"]
# Thu, 02 Jul 2026 02:22:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 02 Jul 2026 02:22:32 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 02 Jul 2026 02:22:32 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 02 Jul 2026 02:22:32 GMT
WORKDIR /home/gradle
# Thu, 02 Jul 2026 02:23:01 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 02 Jul 2026 02:23:01 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 02 Jul 2026 02:23:01 GMT
ENV JAVA_VERSION=25.0.2
# Thu, 02 Jul 2026 02:23:15 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e0be791c8fda4d03b6b0a0cb824fef3149736170057b3a515252b44419606af0     && GRAALVM_AARCH64_DOWNLOAD_SHA256=b4580d9f223d0a4b3a1757e58b18ff4c1db950e67e105fc5cb741457d2384a71     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 02 Jul 2026 02:23:15 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 02 Jul 2026 02:23:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 02 Jul 2026 02:23:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 02 Jul 2026 02:23:18 GMT
USER gradle
# Thu, 02 Jul 2026 02:23:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 02 Jul 2026 02:23:18 GMT
USER root
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa3232e359bafab7e7dfce11573ee845493c1ab466bfd51225aba0716b76332`  
		Last Modified: Thu, 02 Jul 2026 02:23:55 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68bd6db57c17c99a1b0b4a052dd18d42b60c40bc2b8de8efcdfd3a4532e36143`  
		Last Modified: Thu, 02 Jul 2026 02:24:03 GMT  
		Size: 150.8 MB (150828625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac14266830fe84527c641d296c0ac717e4906c949b08a72aeb0953841ddca394`  
		Last Modified: Thu, 02 Jul 2026 02:24:07 GMT  
		Size: 340.9 MB (340894025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88492f602a487d57b55c3b7e2c7d5272161ad8db721bb2234ff7b1d6981225c0`  
		Last Modified: Thu, 02 Jul 2026 02:24:03 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be003a8ebeb558e768ac8f46eb8b072d379a206d65b01650f5f576354062972f`  
		Last Modified: Thu, 02 Jul 2026 02:23:56 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:a64bd7f116f17d01e3bca5b90a6d30c323e42d582e989b5749cb42131fecb408
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9074377 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783af9d46a6b63e6889f3eff536ab8dbb9f0e2be7b987aad9dc2a02c74d22252`

```dockerfile
```

-	Layers:
	-	`sha256:ce487b066da9ade821be400a6da9920c85e92f9cd1bbdd15c41229f5be226632`  
		Last Modified: Thu, 02 Jul 2026 02:23:55 GMT  
		Size: 9.0 MB (9044141 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84c2a8cddf4e53ad2a74e8bb66e25c1cb8b74313fd92612db70ad40851fcb729`  
		Last Modified: Thu, 02 Jul 2026 02:23:55 GMT  
		Size: 30.2 KB (30236 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d5cde1f8abf91bf4d5abe13e5ebd8767d5a13de62b3055542702641dbc0a458d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **631.4 MB (631365849 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79ea88b1ceab63587eb2108918b13f2f1fc353d2780276411f860445cf05f60`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:21:40 GMT
CMD ["gradle"]
# Thu, 02 Jul 2026 02:21:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 02 Jul 2026 02:21:40 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 02 Jul 2026 02:21:40 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 02 Jul 2026 02:21:40 GMT
WORKDIR /home/gradle
# Thu, 02 Jul 2026 02:22:09 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 02 Jul 2026 02:22:09 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 02 Jul 2026 02:22:09 GMT
ENV JAVA_VERSION=25.0.2
# Thu, 02 Jul 2026 02:22:21 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e0be791c8fda4d03b6b0a0cb824fef3149736170057b3a515252b44419606af0     && GRAALVM_AARCH64_DOWNLOAD_SHA256=b4580d9f223d0a4b3a1757e58b18ff4c1db950e67e105fc5cb741457d2384a71     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 02 Jul 2026 02:22:21 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 02 Jul 2026 02:22:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 02 Jul 2026 02:22:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 02 Jul 2026 02:22:23 GMT
USER gradle
# Thu, 02 Jul 2026 02:22:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 02 Jul 2026 02:22:24 GMT
USER root
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5b736408be78606a9c33fdb5f82a0c5aa76d0603be96cf4c9ecacc6601ce7f`  
		Last Modified: Thu, 02 Jul 2026 02:23:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:209551b6855d137c71a32b601c88c66ad9d9229f6cd1bd5256d32c6f425223dc`  
		Last Modified: Thu, 02 Jul 2026 02:23:08 GMT  
		Size: 145.9 MB (145868257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2961358679712dac1116b5035d48e2bd6efe8eab19b4ee5f541b719e3ca917a`  
		Last Modified: Thu, 02 Jul 2026 02:23:12 GMT  
		Size: 316.0 MB (315986730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:412da4ab3167f9fb4b56bb0a39df511b67c4124d43708a11d3082e0d3c6e6e7b`  
		Last Modified: Thu, 02 Jul 2026 02:23:08 GMT  
		Size: 140.6 MB (140596023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751a1c0c2b176eb7887ee596ac8e569a4b33a6d9f50ee54e457173cb5668e844`  
		Last Modified: Thu, 02 Jul 2026 02:23:01 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:d568ce6420b866f32eddf2ae3ccb66db14a3dbf60c9dbcf5c09a65fb845fc62c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9069629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a5ed4b4870dd184a03284a899e90393a304666f07bac012aff3374d7f43dcb6`

```dockerfile
```

-	Layers:
	-	`sha256:d8605e237cffa706e926d12835b94e17b1527396260503ba3aa7350495193a6f`  
		Last Modified: Thu, 02 Jul 2026 02:23:00 GMT  
		Size: 9.0 MB (9039133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eb1aaa745bb7d4405fc49d850cee191061fd16a67b71ebbc391abed2ca37154`  
		Last Modified: Thu, 02 Jul 2026 02:23:00 GMT  
		Size: 30.5 KB (30496 bytes)  
		MIME: application/vnd.in-toto+json
