## `gradle:7-graal`

```console
$ docker pull gradle@sha256:7ba5529cc6b4388361043c8e28c434140bbbd0316a772788d749242e31951702
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-graal` - linux; amd64

```console
$ docker pull gradle@sha256:c6f05a866ab77e18312b526f0835a091c81e9d74cab6df8133da1af4d8daba6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.7 MB (597690305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfc3e9569bb797085d2dc084b0f11553476b315071c3658a060ef0b9cfdcfb56`
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
# Sat, 17 Oct 2026 00:22:57 GMT
CMD ["gradle"]
# Sat, 17 Oct 2026 00:22:57 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Oct 2026 00:22:57 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 17 Oct 2026 00:22:57 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Oct 2026 00:22:57 GMT
WORKDIR /home/gradle
# Sat, 17 Oct 2026 00:23:31 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 17 Oct 2026 00:23:31 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Sat, 17 Oct 2026 00:23:31 GMT
ENV JAVA_VERSION=17.0.9
# Sat, 17 Oct 2026 00:23:43 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Sat, 17 Oct 2026 00:23:43 GMT
ENV GRADLE_VERSION=7.6.6
# Sat, 17 Oct 2026 00:23:43 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Sat, 17 Oct 2026 00:23:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 17 Oct 2026 00:23:45 GMT
USER gradle
# Sat, 17 Oct 2026 00:23:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Sat, 17 Oct 2026 00:23:45 GMT
USER root
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c140d6b7c6ad1ecc01e6d5007b3edc74f22e574d72b14734924b61ef38f4b9`  
		Last Modified: Sat, 17 Oct 2026 00:24:19 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8dc86ef12f5f51192551925ada21be3f575613c78149a50c86830acef4f398`  
		Last Modified: Sat, 17 Oct 2026 00:24:26 GMT  
		Size: 148.3 MB (148334817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a261a2d084ce91722dfb66b446c30624ecefdd2057057f29b5094ddefe8122`  
		Last Modified: Sat, 17 Oct 2026 00:24:29 GMT  
		Size: 291.1 MB (291064098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e738af0f92394c09eeb300dd61cb4eb7899b0507fad3fa441e64964b6fc55d7`  
		Last Modified: Sat, 17 Oct 2026 00:24:26 GMT  
		Size: 128.5 MB (128469415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ef959a1df9142b86439dd032c0702ff857183f9ae23b3c729488101d2a31a1e`  
		Last Modified: Sat, 17 Oct 2026 00:24:21 GMT  
		Size: 54.9 KB (54898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:ed294dd150dfce87c4fea6abaa2ea332cdcb4aacd9c16bdd04efb762df447b50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8939289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:227a54aa019e3794829f824f968d9be2aae68a56ea7dc1886bf5ebfc33557c62`

```dockerfile
```

-	Layers:
	-	`sha256:9e82b95220ccd50f01f1d2e6bf790c308749b30aa4f61d36d8d4688aad97f1d3`  
		Last Modified: Sat, 17 Oct 2026 00:24:20 GMT  
		Size: 8.9 MB (8907221 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:632215a3fea96f25d3affba3070511766bc2f54e33a1b6e3cc13982a6908f99a`  
		Last Modified: Sat, 17 Oct 2026 00:24:19 GMT  
		Size: 32.1 KB (32068 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-graal` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:800123fcd0d020e2cf05b8a919bde9f336b80154725c86e856b6ec5f7c4cae34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.4 MB (584410858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b217db127a48f99bfb701d2fa1e8c240e508efc5a711bdab21123720b6fc198c`
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
# Sat, 17 Oct 2026 00:22:58 GMT
CMD ["gradle"]
# Sat, 17 Oct 2026 00:22:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Sat, 17 Oct 2026 00:22:58 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Sat, 17 Oct 2026 00:22:58 GMT
VOLUME [/home/gradle/.gradle]
# Sat, 17 Oct 2026 00:22:58 GMT
WORKDIR /home/gradle
# Sat, 17 Oct 2026 00:23:32 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Sat, 17 Oct 2026 00:23:32 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Sat, 17 Oct 2026 00:23:32 GMT
ENV JAVA_VERSION=17.0.9
# Sat, 17 Oct 2026 00:23:42 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Sat, 17 Oct 2026 00:23:42 GMT
ENV GRADLE_VERSION=7.6.6
# Sat, 17 Oct 2026 00:23:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Sat, 17 Oct 2026 00:23:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Sat, 17 Oct 2026 00:23:44 GMT
USER gradle
# Sat, 17 Oct 2026 00:23:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Sat, 17 Oct 2026 00:23:44 GMT
USER root
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffb9ed04c613cf3760560e93e0e3a2ba55284e38140ed99d8446f90507779b69`  
		Last Modified: Sat, 17 Oct 2026 00:24:16 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e6b36864ff3216011274bc7b06eff7ce0a2b12d3ce41d77eaa73792f55c6465`  
		Last Modified: Sat, 17 Oct 2026 00:24:28 GMT  
		Size: 143.4 MB (143439090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d14d048de9eaafb348d48a86355761a7333d6c9ef8df084a81bea27340a1535`  
		Last Modified: Sat, 17 Oct 2026 00:24:31 GMT  
		Size: 283.5 MB (283501753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e4a9d3623feea72a2a5c373bd68ab0118e1e51a18c14dbe29e783ce5c2a42d`  
		Last Modified: Sat, 17 Oct 2026 00:24:27 GMT  
		Size: 128.5 MB (128469417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e315f81abe671da96f54b7d15143fb574abc7144c34ecb269c5b1de3b384e8`  
		Last Modified: Sat, 17 Oct 2026 00:24:18 GMT  
		Size: 59.5 KB (59518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:d9d24975905f0034319e19c57456385592fa5da6f43e8fb0787376005f47b7c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8935319 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9cbe997ece70a50aefb0e5c071097e3d3b5b04b483fc24d477ba1fc4049c57f4`

```dockerfile
```

-	Layers:
	-	`sha256:fb4e5df39408f0a6d7a3d5217cf2bbe518f43facdfef2543eb0b33bf00e4cf57`  
		Last Modified: Sat, 17 Oct 2026 00:24:17 GMT  
		Size: 8.9 MB (8902918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4e5838dcdee61c45e96de7548d0c63d99ec1fbecdeab36fd56289b6be771140`  
		Last Modified: Sat, 17 Oct 2026 00:24:16 GMT  
		Size: 32.4 KB (32401 bytes)  
		MIME: application/vnd.in-toto+json
