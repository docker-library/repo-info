## `gradle:9-jdk25-graal-noble`

```console
$ docker pull gradle@sha256:84f7d4bafeed5c0133bdd1bb539dcf78a39c4425a6a4b29d0b3609f6ddafed9d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk25-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:dd9c42156d36e34ccac0d9358d3535b957cc3ed21a3fe51e497a8f75cd2349ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **683.0 MB (682979603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a64105c4920069c43c006770d293b00364d45f33a62768127beab37f5837ba5`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Thu, 24 Sep 2026 19:32:41 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:32:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:32:41 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:32:41 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:32:41 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:33:13 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:33:13 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 24 Sep 2026 19:33:13 GMT
ENV JAVA_VERSION=25.0.4.1.1
# Thu, 24 Sep 2026 19:33:23 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=05ccbbe783210b6886ff7b08fcd0b061c5dce4852b05db87284fc0e24abb08e2     && GRAALVM_AARCH64_DOWNLOAD_SHA256=e5f5e2f59643cf96765c741dc00b206f86c69c8c1bf843fe26050c871e0e2dbc     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.4.4.1.1     && GRAALVM_ARTIFACT_VERSION=25i4-25.0.4.1.1     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 24 Sep 2026 19:33:23 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:33:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:33:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:33:26 GMT
USER gradle
# Thu, 24 Sep 2026 19:33:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:33:26 GMT
USER root
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bbe29d955657927309235e3393fd9da5dfe8b9a8acfc7ba0272c2cd93fe18b`  
		Last Modified: Thu, 24 Sep 2026 19:34:01 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa6422c5eac35354eeedfec315cca2f33a397aedc29b16d1c471811b9add8ab4`  
		Last Modified: Thu, 24 Sep 2026 19:34:09 GMT  
		Size: 150.7 MB (150668595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87bda0ec987557c9ba4af77c9982a098a3c92eb1e413c17c307e0dbb5a02d6fd`  
		Last Modified: Thu, 24 Sep 2026 19:34:14 GMT  
		Size: 351.0 MB (350995677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b09623dbe0ce4815bd4f260b37eedbc1511740f139437796f92174d7e4d817c5`  
		Last Modified: Thu, 24 Sep 2026 19:34:10 GMT  
		Size: 151.5 MB (151524286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddbfc2ec3a9a2bf954a9adb97cc996b7e29c95bc100474b693c5e5b2ddc07fd5`  
		Last Modified: Thu, 24 Sep 2026 19:34:03 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:6c8f04896151c0fb2fc94f2219d4ba4e67d99368a045eb2e77fc944324340eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9145973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8acb8636e2bf3cbd7d0efc2f3bd45ea0d59496d28eb08c880e637f4beb5ec130`

```dockerfile
```

-	Layers:
	-	`sha256:58794c06738af7901f3fab41c28ca9633875f74a7933d4699b70128b69dbbb63`  
		Last Modified: Thu, 24 Sep 2026 19:34:02 GMT  
		Size: 9.1 MB (9115358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32dcf4fe4ea64a4d76e530aa2408d9c605734dae8706bd71cb8f2c430ef94fce`  
		Last Modified: Thu, 24 Sep 2026 19:34:01 GMT  
		Size: 30.6 KB (30615 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:cb12534ef19fd2d19d18245953bdaadd1cc28911df26f0ec64408035c4b3b9f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.5 MB (652452431 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aaa71c0a96064bddc963f6ea2d6a62486019ffa2a54cfea5dce501d00325eee`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Thu, 24 Sep 2026 19:32:31 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:32:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:32:31 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:32:31 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:32:31 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:33:08 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:33:08 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 24 Sep 2026 19:33:08 GMT
ENV JAVA_VERSION=25.0.4.1.1
# Thu, 24 Sep 2026 19:33:18 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=05ccbbe783210b6886ff7b08fcd0b061c5dce4852b05db87284fc0e24abb08e2     && GRAALVM_AARCH64_DOWNLOAD_SHA256=e5f5e2f59643cf96765c741dc00b206f86c69c8c1bf843fe26050c871e0e2dbc     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.4.4.1.1     && GRAALVM_ARTIFACT_VERSION=25i4-25.0.4.1.1     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 24 Sep 2026 19:33:18 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:33:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:33:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:33:21 GMT
USER gradle
# Thu, 24 Sep 2026 19:33:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:33:21 GMT
USER root
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:900be6f203400b654e80382042eb32650301ad36117a9119bf4c634defa26785`  
		Last Modified: Thu, 24 Sep 2026 19:33:58 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10d653671a8e234f3dfeb5ec02a244b72470edd51face0685fd7a5561757a9e`  
		Last Modified: Thu, 24 Sep 2026 19:34:04 GMT  
		Size: 145.7 MB (145733811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b6075723e6000de5d67a92b472d058e4e82bd20601f2b562d2797f466b0d9f0`  
		Last Modified: Thu, 24 Sep 2026 19:34:08 GMT  
		Size: 326.2 MB (326222116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8673e9215507f2e29b5206a8e247a14084b66d668ac101673cc2a13a463b61e4`  
		Last Modified: Thu, 24 Sep 2026 19:34:05 GMT  
		Size: 151.5 MB (151524274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6803333b8bf3884c1dc4a53241e5d151360e76f1ebe83e6bcb7c2d53f0cd6a4c`  
		Last Modified: Thu, 24 Sep 2026 19:33:59 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:d96405f1ffb48770bf95acb90cf40907b052a105130c4ced8d2eab6dc696d404
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9115658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a74988d49043de3c2d329d1bd8a466410f2046070f064313ec494e180185ae3`

```dockerfile
```

-	Layers:
	-	`sha256:24d4c96fe7852cc2ab1e819d10e5700810304d8fb26d6ac4a90e1455f5913b82`  
		Last Modified: Thu, 24 Sep 2026 19:33:58 GMT  
		Size: 9.1 MB (9084783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa65fd5be48eeb26630772c30f40ad2f4d8f11ab7bbb848e545292bde291661d`  
		Last Modified: Thu, 24 Sep 2026 19:33:58 GMT  
		Size: 30.9 KB (30875 bytes)  
		MIME: application/vnd.in-toto+json
