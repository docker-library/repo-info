## `gradle:jdk17-graal-noble`

```console
$ docker pull gradle@sha256:b79bf6480c7ea8505a009017d41849972b70beb5b1b309028b400cf26e14d439
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:582f4b84822055d02787d4f43f046d5a3a94f196dc706c161541c571afadc568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **620.4 MB (620431845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c112b3b53a4446fda1488e1ef77887b59be3f74d9cfded95165b1d3393ad4344`
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
# Wed, 16 Sep 2026 03:18:58 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 03:18:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 03:18:58 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 03:18:58 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 03:18:58 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 03:19:36 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 16 Sep 2026 03:19:36 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 16 Sep 2026 03:19:36 GMT
ENV JAVA_VERSION=17.0.9
# Wed, 16 Sep 2026 03:19:48 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Wed, 16 Sep 2026 03:19:48 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 16 Sep 2026 03:19:48 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 16 Sep 2026 03:19:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 03:19:50 GMT
USER gradle
# Wed, 16 Sep 2026 03:19:51 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 16 Sep 2026 03:19:51 GMT
USER root
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fcd046d7d8aae15291f42dad8680664afcd492d8dd73c81e397a7da22298889`  
		Last Modified: Wed, 16 Sep 2026 03:20:23 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5fbff5f437bf5614c189cac1680134e0749f00b02aee9b249783619a8574ab7`  
		Last Modified: Wed, 16 Sep 2026 03:20:30 GMT  
		Size: 148.2 MB (148222736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9cd4e800b59d0bcf8e53d36a9dfaae0d36014d618424cd35bdca516b3be4ad`  
		Last Modified: Wed, 16 Sep 2026 03:20:33 GMT  
		Size: 291.1 MB (291064048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:360e3dfc4e3d844da004f3d4baaba6c09d7afbd317152dd06ff984cd59f59423`  
		Last Modified: Wed, 16 Sep 2026 03:20:30 GMT  
		Size: 151.4 MB (151354013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7ecec66e09a795f15486c233c6b9ad5a118b19803a64ec4a951c903cfac8e51`  
		Last Modified: Wed, 16 Sep 2026 03:20:24 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:28a2a27fab7edd9e102687ffa96902a68e2379b9387d8f5794ecfc23b63e6b8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9054631 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c15268e16e7f4b81c2d775a6ad0e330dca7317265b2db5e43db29151ada2491`

```dockerfile
```

-	Layers:
	-	`sha256:abac1d64d677afc3ff46d6a68e5fad2d83a9aa591572db479a3b0a28b1d04df1`  
		Last Modified: Wed, 16 Sep 2026 03:20:23 GMT  
		Size: 9.0 MB (9026835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d9e232a16a91a5c44c57dff25acb871750d032e76a87385c5727cb7d306e9d75`  
		Last Modified: Wed, 16 Sep 2026 03:20:23 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:3368e67a3cc78ecb50e58b82cf3db83797e920b4bcf3f07cb61a3095749c2c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **607.2 MB (607162040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:948aa6a29ad6eecf3859e163d0b1b99582336fd960fb8a6e3dff63912963cb00`
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
# Wed, 16 Sep 2026 03:18:37 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 03:18:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 03:18:37 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 03:18:37 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 03:18:37 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 03:19:09 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 16 Sep 2026 03:19:09 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 16 Sep 2026 03:19:09 GMT
ENV JAVA_VERSION=17.0.9
# Wed, 16 Sep 2026 03:19:21 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Wed, 16 Sep 2026 03:19:21 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 16 Sep 2026 03:19:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 16 Sep 2026 03:19:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 03:19:24 GMT
USER gradle
# Wed, 16 Sep 2026 03:19:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 16 Sep 2026 03:19:24 GMT
USER root
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:810b6b12c8cca09b0431c31e7e36996c91e28fd2059978ea48205b0650ccc2c7`  
		Last Modified: Wed, 16 Sep 2026 03:19:56 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6745d55184d6cd1bb3fb3394a7dab792b32bd471c5bfdeae799568698e89cbdc`  
		Last Modified: Wed, 16 Sep 2026 03:20:04 GMT  
		Size: 143.3 MB (143334010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d27e77ef176ef94f70505951a9db67212c8e3d7c93205691c78f7de5cefd0c15`  
		Last Modified: Wed, 16 Sep 2026 03:20:07 GMT  
		Size: 283.5 MB (283501785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a25d82d08dd9a784e402aaf1520b9dcbeb7f213758b34a26e1bad567b0fabd7`  
		Last Modified: Wed, 16 Sep 2026 03:20:04 GMT  
		Size: 151.4 MB (151354015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b06937bb2f27662d41a2e15ae437ea8889a802242e4bfa4f99c65d3b77983f`  
		Last Modified: Wed, 16 Sep 2026 03:19:58 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:9cd39ccf05e4a1e77e32cd93f1588dde0ab7d1ecd5e33e4a91c9dd2ba34ddd0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9050324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91b43b33720ba56e7a9bf07580acadda33cfce32e7bad9dd0a80bbcd58d39d64`

```dockerfile
```

-	Layers:
	-	`sha256:56a42af6e8154fa2b509d2e23e9227123164a18657b4232fe4e9cca035511646`  
		Last Modified: Wed, 16 Sep 2026 03:19:57 GMT  
		Size: 9.0 MB (9022364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5177b366ad0494da3cb0e62cee1dbd71c19d45c4f4165aea6dda1be354aebf93`  
		Last Modified: Wed, 16 Sep 2026 03:19:57 GMT  
		Size: 28.0 KB (27960 bytes)  
		MIME: application/vnd.in-toto+json
