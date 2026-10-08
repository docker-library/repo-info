## `gradle:8-graal`

```console
$ docker pull gradle@sha256:4725d97f83e7e6ba7df60b76fcf0943dbf96c2aea8849e83690deb9cf21e28ad
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-graal` - linux; amd64

```console
$ docker pull gradle@sha256:adf20dd13651fa7a2d3d303b72359277aad6cc5a1f89a428f3f9143feb05264c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **609.9 MB (609904441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3f904f3cecb40c787e9544d3aa7d0484dfef8a226076eb2c5057e8d1feb3ce6`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 16:38:43 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:38:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:38:43 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:38:43 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:38:44 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:39:14 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:39:14 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 08 Oct 2026 16:39:14 GMT
ENV JAVA_VERSION=21.0.2
# Thu, 08 Oct 2026 16:42:39 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 08 Oct 2026 16:42:39 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 08 Oct 2026 16:42:39 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 08 Oct 2026 16:42:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:42:41 GMT
USER gradle
# Thu, 08 Oct 2026 16:42:42 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:42:42 GMT
USER root
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ef5c50d9927ab6bf9d2c517d6a6344d133fad8c51c042e7d2ffd7b11dfa772`  
		Last Modified: Thu, 08 Oct 2026 16:40:04 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b0156b17936f2b0607b3e393a04f9f0d0c7aabdbd62c2015fa68c4cee25360`  
		Last Modified: Thu, 08 Oct 2026 16:40:20 GMT  
		Size: 150.7 MB (150669660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142bf7493e725f1fb283a73a9022ffade7a39612cef368582032741678c8f6f6`  
		Last Modified: Thu, 08 Oct 2026 16:43:18 GMT  
		Size: 290.0 MB (289986789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdc82a2bdba1ab0ac3743758edf711ba31808c1a2e6a5af2499e31d37c6c1a2`  
		Last Modified: Thu, 08 Oct 2026 16:43:15 GMT  
		Size: 139.4 MB (139427345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0036b71c34834fcd8d333205a28b93cb5088bf6af6a874584518add1ab4b7b72`  
		Last Modified: Thu, 08 Oct 2026 16:43:10 GMT  
		Size: 54.9 KB (54908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:85dd219dba7a9ae537802da89323b5b906e043bca9634c20bafe572e68a09fa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9004621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:396402216b0a6705907eada5aa491147d17a2617dae89a635a321dd635df40be`

```dockerfile
```

-	Layers:
	-	`sha256:892fb9bbeea6cfc7124947a932be8f6a7163c4b7717227e6ae0075e4b8767186`  
		Last Modified: Thu, 08 Oct 2026 16:43:10 GMT  
		Size: 9.0 MB (8972504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5efdca7ea7efcb1cf6f33dc88b5a0b78ce539ceb389f7bf01a4aae375a05411e`  
		Last Modified: Thu, 08 Oct 2026 16:43:10 GMT  
		Size: 32.1 KB (32117 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-graal` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:fba96fa88fa2c9755c569b60758a89a8fdcf17d385dfafb1beb614f45bea4773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.7 MB (595733473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7091d6c231228554a0caedd23cae92326bbb576ce6db4c08cd20269170246bf0`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Thu, 08 Oct 2026 16:42:33 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:42:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:42:33 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:42:33 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:42:33 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:43:14 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:43:14 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 08 Oct 2026 16:43:14 GMT
ENV JAVA_VERSION=21.0.2
# Thu, 08 Oct 2026 16:43:23 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 08 Oct 2026 16:43:23 GMT
ENV GRADLE_VERSION=8.14.6
# Thu, 08 Oct 2026 16:43:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
# Thu, 08 Oct 2026 16:43:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:43:26 GMT
USER gradle
# Thu, 08 Oct 2026 16:43:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=7988ed071b2a07900e2ec715fca15c6ab72bce6db433af301fa7fa7e9407bd24
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:43:26 GMT
USER root
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0384274d53a6c77063ffe05132b48b18f73e559fd696e01d817f8e157abff2`  
		Last Modified: Thu, 08 Oct 2026 16:43:58 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:648eba9310ea4e38c7830c2ec8da5126a486773b481a654832946c608d4effd8`  
		Last Modified: Thu, 08 Oct 2026 16:44:07 GMT  
		Size: 145.6 MB (145638899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d5d7486e91a2a4b0c760e3f099b6cb057b2a8309f45e53ab1fc18d38a263dfa`  
		Last Modified: Thu, 08 Oct 2026 16:44:10 GMT  
		Size: 281.7 MB (281666276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3124d157f95d03554dd2e8d4c9cf6c73ada8470636b3a7f5a9e690bebd37f22`  
		Last Modified: Thu, 08 Oct 2026 16:44:07 GMT  
		Size: 139.4 MB (139427363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903102b9081128d75168f9956cf32b3948982ccfae9e834ac6bb541f73b5140c`  
		Last Modified: Thu, 08 Oct 2026 16:44:00 GMT  
		Size: 59.5 KB (59529 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-graal` - unknown; unknown

```console
$ docker pull gradle@sha256:3236608778c68f71d9ef2674788323688a7342cbcef022af6d2dbb4013274c34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9000655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c37e829afede09306624decb1b653b83f3eb6b91cdb7c25cb5f5f919a09d0c39`

```dockerfile
```

-	Layers:
	-	`sha256:3c5262a01393f9e37639ccc8d72972f102633ce3367cbe35bc2d04927601f6b3`  
		Last Modified: Thu, 08 Oct 2026 16:43:59 GMT  
		Size: 9.0 MB (8968205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eff4ee94403ca3723019f611669210c6cf4e12753f999ca60737c763c120809a`  
		Last Modified: Thu, 08 Oct 2026 16:43:58 GMT  
		Size: 32.5 KB (32450 bytes)  
		MIME: application/vnd.in-toto+json
