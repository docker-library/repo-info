## `gradle:8-jdk17-graal-noble`

```console
$ docker pull gradle@sha256:e9a9db5adfad34cd27c312d47bc6c0c30a60bec55d0bb0612ddafbc68817e308
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:2d3f522795ddd149a79a2f36ebfdd7a2ad68a46a9f5b0b7a0533327b9a07514a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **607.2 MB (607171241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7fb655630632c1ce9996fd6e514a84c8aa7892e7f1d70bfa0f27e8381eaf6f1`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:17:26 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 19:17:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 19:17:26 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 19:17:26 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 19:17:26 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 19:17:52 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 19:17:52 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 18 Aug 2026 19:17:52 GMT
ENV JAVA_VERSION=17.0.9
# Tue, 18 Aug 2026 19:18:01 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Tue, 18 Aug 2026 19:18:01 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 18 Aug 2026 19:18:01 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 18 Aug 2026 19:18:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 19:18:03 GMT
USER gradle
# Tue, 18 Aug 2026 19:18:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 19:18:04 GMT
USER root
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2337ab24693d262c787861495ec3f10ca4245110125f7ea2e2d003537ef52627`  
		Last Modified: Tue, 18 Aug 2026 19:18:38 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28bf9fd15ee515e70bed8bd539c14d02dc474672d1fa8a2ffa70cee0b43452e8`  
		Last Modified: Tue, 18 Aug 2026 19:18:46 GMT  
		Size: 148.2 MB (148228838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be7b59317e9c9784ec5f9324edf2b8cea69e1986316fd2253be3d6e053dc2e9`  
		Last Modified: Tue, 18 Aug 2026 19:18:49 GMT  
		Size: 291.1 MB (291064833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05c2bdb67ddec1deaa1611606f3937b45e3bbd1ed011b9a62fd329f2cac1bda9`  
		Last Modified: Tue, 18 Aug 2026 19:18:46 GMT  
		Size: 138.1 MB (138068537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aad5db244e736e05e4c32771846a336151277d15c736f7037590646b6cdc747`  
		Last Modified: Tue, 18 Aug 2026 19:18:40 GMT  
		Size: 54.9 KB (54906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:80b05fa7ee4f359b2cb8f56cc26b3fe03af15f9240c00c95db9b571d12c975fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9021192 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a96dabb326063fe61e2507ef4bd54022111874d8d3546e4dab3beeeccdc6c6e3`

```dockerfile
```

-	Layers:
	-	`sha256:ba43f689a7216a554d8c32e38d4e7be13805096289153bb8026edf8029b4cd5e`  
		Last Modified: Tue, 18 Aug 2026 19:18:39 GMT  
		Size: 9.0 MB (8992758 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86449aa37f4924e1095c16448e65cf354120af600b40f5cc9bae721ec786b3b2`  
		Last Modified: Tue, 18 Aug 2026 19:18:38 GMT  
		Size: 28.4 KB (28434 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d2e04fab4f50c14ed83b63fa6c825c41b096b783ced0ae22302ea0161c305081
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **593.8 MB (593839134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6115919b5331bdb9e131d50f6ee66f3d39579a12c5a983cc75456bcb5c3306bc`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:17:21 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 19:17:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 19:17:21 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 19:17:21 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 19:17:21 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 19:17:50 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 19:17:50 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 18 Aug 2026 19:17:50 GMT
ENV JAVA_VERSION=17.0.9
# Tue, 18 Aug 2026 19:17:59 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Tue, 18 Aug 2026 19:17:59 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 18 Aug 2026 19:17:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 18 Aug 2026 19:18:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 19:18:01 GMT
USER gradle
# Tue, 18 Aug 2026 19:18:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 19:18:02 GMT
USER root
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a4aeef03cf15479a3643c9bf788c74f679e25e3271628150986695d80724e56`  
		Last Modified: Tue, 18 Aug 2026 19:18:36 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f600607a32053b8a67fa6c677ea47004205cb8a9018d9990ae42b9b30b5a2a9c`  
		Last Modified: Tue, 18 Aug 2026 19:18:42 GMT  
		Size: 143.3 MB (143320617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9fdc4cd8aae281c8c33c09fbc41d6fb624275a7757d33809cd6572ec0224c57`  
		Last Modified: Tue, 18 Aug 2026 19:18:45 GMT  
		Size: 283.5 MB (283501899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee4b899af0700e0283a9129c074880804292c9476819ae2db492a8ea76814340`  
		Last Modified: Tue, 18 Aug 2026 19:18:42 GMT  
		Size: 138.1 MB (138068535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d350133760df1494463b2bf2406b88298018c70d86316a43dec9229dfef817`  
		Last Modified: Tue, 18 Aug 2026 19:18:37 GMT  
		Size: 59.5 KB (59530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:d6b02ef8607f124212af3298b3cb01300cd0fe3a3d7ec17438aa3400571af6ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9016933 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:926be9c05133e058bb9e56a32e33cf32fae331b07d5461bdf9f56113f38c2f33`

```dockerfile
```

-	Layers:
	-	`sha256:9b8121beb3100c369c62da9e0c0d070dd5d92e6a03b79187f87c947480aca332`  
		Last Modified: Tue, 18 Aug 2026 19:18:36 GMT  
		Size: 9.0 MB (8988311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35f34d8638da59dd527282c7c634d74b93578f5feb1c6bec3daf0f767af17b19`  
		Last Modified: Tue, 18 Aug 2026 19:18:36 GMT  
		Size: 28.6 KB (28622 bytes)  
		MIME: application/vnd.in-toto+json
