## `gradle:8-graal-noble`

```console
$ docker pull gradle@sha256:40e99276c6772dec9e25ab692a8f10222c64aea53f5293e41342200f165fba01
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:699e26cd0daad0d1d28d104e2ef31acdbaee7977d0cdfe80175ed4d0946c4998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **606.1 MB (606097142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7d71d34ae7adc39902a4ae2b83b2fb589c4ea7df6fd0b1bd8ada9a95a91c4b5`
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
# Wed, 09 Sep 2026 02:22:19 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:22:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:22:19 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 02:22:19 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:22:19 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:22:50 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:22:50 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:22:50 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 09 Sep 2026 02:22:59 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:22:59 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 09 Sep 2026 02:22:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 09 Sep 2026 02:23:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:23:55 GMT
USER gradle
# Wed, 09 Sep 2026 02:23:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 02:23:55 GMT
USER root
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44abdd642d18c76d5a3f5093808da841c336ab5fecddb629d6c0318508d0a05`  
		Last Modified: Wed, 09 Sep 2026 02:23:35 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b69eb10d3fced22e4d01b4791da8af46e98ef5873644ad81281f1527c8c7a8eb`  
		Last Modified: Wed, 09 Sep 2026 02:23:43 GMT  
		Size: 148.2 MB (148223172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d88b7746856038223b0174a497da8c70771ad776851ade9538d28255d7522539`  
		Last Modified: Wed, 09 Sep 2026 02:23:46 GMT  
		Size: 290.0 MB (289985955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:160b08598d27a8abae9f6faf6faafe54ed4084b9e28c13fe432123ab83e94108`  
		Last Modified: Wed, 09 Sep 2026 02:24:15 GMT  
		Size: 138.1 MB (138068539 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aef35405102c7a2907e9fc46445b11f5031cac5b77af183efde5a2c6ca216cc`  
		Last Modified: Wed, 09 Sep 2026 02:24:12 GMT  
		Size: 54.9 KB (54902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:21f19cd830bb358ba8b00fc2b8ce9d421a5c66f50870a9db37f676c48394e568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9005767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37eaa9d6d17fd68f34b56c47f58b4f4ad13e40d0e3de39b00647b481e38f6df9`

```dockerfile
```

-	Layers:
	-	`sha256:8efb3ea98f6f729fd090a349594d2d3daf82535b6ca7238a30b5ccd1e8f80d55`  
		Last Modified: Wed, 09 Sep 2026 02:24:13 GMT  
		Size: 9.0 MB (8973649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2febc0f78bba76749f2dd00d4f4ac7202cbaa6aa73ac77cd3070861a5a9e6fa`  
		Last Modified: Wed, 09 Sep 2026 02:24:12 GMT  
		Size: 32.1 KB (32118 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:92af079ad571140ad8ec3394255fc512b5c5d05019b8b581f8b1d950378bb458
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.1 MB (592072068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33a1bdd74b6ffaacf1724139f338ec17b5fa612a9b9ae0418f1982779ab86bcf`
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
# Wed, 09 Sep 2026 02:20:44 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:20:44 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:20:44 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 02:20:44 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:20:44 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:21:16 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:21:16 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:21:16 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 09 Sep 2026 02:21:24 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:21:24 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 09 Sep 2026 02:21:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 09 Sep 2026 02:21:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:21:26 GMT
USER gradle
# Wed, 09 Sep 2026 02:21:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 02:21:27 GMT
USER root
```

-	Layers:
	-	`sha256:9332cde1e07015fd0f14e769fc74ea901a957e3f62a76de66638f99854867dd2`  
		Last Modified: Mon, 07 Sep 2026 07:57:03 GMT  
		Size: 28.9 MB (28940015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b95bdaa716cf7e2ff9f0ced3aa457221e3000a5157bc15fcc5097bce2caccab1`  
		Last Modified: Wed, 09 Sep 2026 02:21:59 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6adf79eaa528e0e1b2cc5df3690418a5918c21ba11094766ace73faa767ad8`  
		Last Modified: Wed, 09 Sep 2026 02:22:05 GMT  
		Size: 143.3 MB (143336412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6839d7f56bbdb2814d4952f3d63482548424e510ebda4a1d3dce93946a63b3ba`  
		Last Modified: Wed, 09 Sep 2026 02:22:08 GMT  
		Size: 281.7 MB (281666270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d075523c4f5246b2de0befd65005ee9607fea7c632b96eaf86b6f0001df0ad16`  
		Last Modified: Wed, 09 Sep 2026 02:22:05 GMT  
		Size: 138.1 MB (138068530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:289003e465641a8dec9ae026e9999b8f6b1fef80ff67d4e607ad6e06c2ae349c`  
		Last Modified: Wed, 09 Sep 2026 02:22:00 GMT  
		Size: 59.5 KB (59524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:8afba5a20e7767776ef0e3d6599d34bb4e09b032f27aa0e0a0594bd3dc56163f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9001800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a69b434ec70be6bf50526666d98240bb115205f15c5e01e5139a362291ec5a99`

```dockerfile
```

-	Layers:
	-	`sha256:7d81dc3a13b31da25db78b34eb04e564e0058947ebffa689e0636e5322f553fd`  
		Last Modified: Wed, 09 Sep 2026 02:21:59 GMT  
		Size: 9.0 MB (8969350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b9eae894bd3f4fe6028de7c9c207b93dc1adcce94c477bdec3574b8fd593335`  
		Last Modified: Wed, 09 Sep 2026 02:21:59 GMT  
		Size: 32.5 KB (32450 bytes)  
		MIME: application/vnd.in-toto+json
