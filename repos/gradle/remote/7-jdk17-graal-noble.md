## `gradle:7-jdk17-graal-noble`

```console
$ docker pull gradle@sha256:4a0f551bdaa45ed38e19bacc499d9c7e0bfff305baafcf4a13b7ee6d0d887886
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:7dca07e0a40d70c3b511a6307da6a59daeee7f057884e53c1e7641f647e5c281
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.6 MB (597576972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:033ac358a9200166b79d92c198bbb38dc34a25c4cfb3f83c55b748bd520ba755`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 07 Sep 2026 06:58:02 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:58:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:58:02 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:04 GMT
ADD file:de4937ce3dfc7c89f05f1503c52434f0a631ac84995f0df65eed0754e5c97d48 in / 
# Mon, 07 Sep 2026 06:58:04 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:24:10 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:24:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:24:10 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 02:24:10 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:24:10 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:24:45 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:24:45 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:24:45 GMT
ENV JAVA_VERSION=17.0.9
# Wed, 09 Sep 2026 02:24:54 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:24:54 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 09 Sep 2026 02:24:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 09 Sep 2026 02:24:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:24:57 GMT
USER gradle
# Wed, 09 Sep 2026 02:24:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 09 Sep 2026 02:24:57 GMT
USER root
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2963795bfaf3d4636f233b300f41893bb5e30e94afbb00315efac5fb231b946b`  
		Last Modified: Wed, 09 Sep 2026 02:25:29 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee717366f6a3e70929ea1dc3db2dda1dfb69d4d28f8a3bc92dcb850264748061`  
		Last Modified: Wed, 09 Sep 2026 02:25:38 GMT  
		Size: 148.2 MB (148223771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58b33741d9ce1d198be379ae84c6162513f7a0d053fd925d19197b472ab89dbf`  
		Last Modified: Wed, 09 Sep 2026 02:25:41 GMT  
		Size: 291.1 MB (291064316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591a9c0147c607fc2b431c64c08a21e9a83c63abbc767b5e36821f5690c83aa8`  
		Last Modified: Wed, 09 Sep 2026 02:25:37 GMT  
		Size: 128.5 MB (128469416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35bb070671c05f7cb09339593d149544706b782dcce8966cf3cb70af9821d967`  
		Last Modified: Wed, 09 Sep 2026 02:25:31 GMT  
		Size: 54.9 KB (54896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:a163c39da144f14ef5ebf0a9008e9bdec07ac5e2f8cca65b258720e4f3385c79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8939270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09a1ecf647e70213d677553c5fce5a332951f7635c6bb3a039cf25a826ef479`

```dockerfile
```

-	Layers:
	-	`sha256:2c0ac5fcd8a16c2595dee646f07ef19a55d8e9b3bc4233faab301260f049dcb5`  
		Last Modified: Wed, 09 Sep 2026 02:25:30 GMT  
		Size: 8.9 MB (8907201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf70eb5120b583ba9cbfc601e1fb60d04dd01f0f9eb50dd14b7a969ec2d7a2ec`  
		Last Modified: Wed, 09 Sep 2026 02:25:29 GMT  
		Size: 32.1 KB (32069 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c7bf5ea965220999afe1dc674b8f6ed0c2434399e93d0e99bce379da42ae4ffa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.3 MB (584309354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d07efb6ce83e854f55dc7a8f425f8aa204c1964cf3c2b9a5bb61320510d6bce`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 07 Sep 2026 06:57:57 GMT
ARG RELEASE
# Mon, 07 Sep 2026 06:57:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 07 Sep 2026 06:57:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 07 Sep 2026 06:58:01 GMT
ADD file:06e064cbfe0750594affea730437107320bdf1e36232c304b900eaa55f88a633 in / 
# Mon, 07 Sep 2026 06:58:01 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:19:14 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:19:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:19:14 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 02:19:14 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:19:14 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:22:35 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:22:35 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:22:35 GMT
ENV JAVA_VERSION=17.0.9
# Wed, 09 Sep 2026 02:22:45 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:22:45 GMT
ENV GRADLE_VERSION=7.6.6
# Wed, 09 Sep 2026 02:22:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Wed, 09 Sep 2026 02:22:47 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:22:47 GMT
USER gradle
# Wed, 09 Sep 2026 02:22:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Wed, 09 Sep 2026 02:22:48 GMT
USER root
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e86abd995aa7597386447736e446ce58e0b309e671975393026621315525427`  
		Last Modified: Wed, 09 Sep 2026 02:20:42 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883f0b6010c90b22322b5df0afccd5e5f0ab17f39b954ee79868b86cd88e9b88`  
		Last Modified: Wed, 09 Sep 2026 02:23:26 GMT  
		Size: 143.3 MB (143337252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2147bfe7cf98f83aff9734dcc542151b2dd415f065c84993f3c2a8618b85f4dd`  
		Last Modified: Wed, 09 Sep 2026 02:23:29 GMT  
		Size: 283.5 MB (283501836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef43a4d64aed1d291e659c9ab80463f5f27c944cd3cdd3ecb48303bfbccddae8`  
		Last Modified: Wed, 09 Sep 2026 02:23:26 GMT  
		Size: 128.5 MB (128469417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f17a809e44a9463af345d5d5e82a8a6fed264a3778ad462b180b6573f6e9b994`  
		Last Modified: Wed, 09 Sep 2026 02:23:19 GMT  
		Size: 59.5 KB (59515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:a2dbf342222d99f4c72fd9097d94009e37fd980e7a815277f51dbdd754d701b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8935298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:617241d161fe7533885f9aa6316a923c76b4fbd6baf56246ec354a3ea0c8ffb6`

```dockerfile
```

-	Layers:
	-	`sha256:fe4138e18db852ddfa1b4be126dbb3e688e3767c6f1abc6362b1cc05e88e8e54`  
		Last Modified: Wed, 09 Sep 2026 02:23:20 GMT  
		Size: 8.9 MB (8902898 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3405204c23cb3d6a7d0f2bea0e37f29ad5d1cccf04e8ab73f5cb30fdea56aec`  
		Last Modified: Wed, 09 Sep 2026 02:23:19 GMT  
		Size: 32.4 KB (32400 bytes)  
		MIME: application/vnd.in-toto+json
