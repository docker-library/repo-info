## `gradle:jdk25-graal-noble`

```console
$ docker pull gradle@sha256:78c4ed31c734feabdebb8a0b2c1b2a1e26a6ed13d6a544d744e7c64b8cd9745c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk25-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:6122e044483bb9a6e888bf3ab001a3d1ff495fd27c10992a6d17bab0aebe432f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **661.9 MB (661932522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:641d710323b25d5b9091bd8738a685b85444aaaa14ee4b1b96b649353a516b26`
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
# Tue, 04 Aug 2026 01:29:04 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:29:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:29:04 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:29:04 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:29:04 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:29:39 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:29:39 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 04 Aug 2026 01:29:39 GMT
ENV JAVA_VERSION=25.0.2
# Tue, 04 Aug 2026 01:29:50 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e0be791c8fda4d03b6b0a0cb824fef3149736170057b3a515252b44419606af0     && GRAALVM_AARCH64_DOWNLOAD_SHA256=b4580d9f223d0a4b3a1757e58b18ff4c1db950e67e105fc5cb741457d2384a71     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 04 Aug 2026 01:29:50 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 01:29:50 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 01:29:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:29:53 GMT
USER gradle
# Tue, 04 Aug 2026 01:29:53 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:29:53 GMT
USER root
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a68712747ab2feb68195554de5ca8fbba253ca87f0ba6e04236b5c0be2e83d`  
		Last Modified: Tue, 04 Aug 2026 01:30:30 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6de58f1b00cf526971e539f2bf6d8d6b6977553dbaddc5658077cc01d523ad51`  
		Last Modified: Tue, 04 Aug 2026 01:30:37 GMT  
		Size: 150.7 MB (150664620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2622462356faeb3ed6afe2ab5fb5c9bd1e9db1200cb43f8340c9715d2fd5855`  
		Last Modified: Tue, 04 Aug 2026 01:30:41 GMT  
		Size: 340.9 MB (340893896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785bc2752915b0d02d69883b60df26073f6275bbf8d549a6811927eddb563762`  
		Last Modified: Tue, 04 Aug 2026 01:30:37 GMT  
		Size: 140.6 MB (140595970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9a464614fae0731f6b84fb692ff9d113d3425ef02be981f807e67721498a926`  
		Last Modified: Tue, 04 Aug 2026 01:30:31 GMT  
		Size: 25.6 KB (25607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:47e82aee8ed83bdcba18c22b46674116a88456b7d5498a0d55a37ea7dabee5d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9072960 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f948700eca3667db58533d62d08b0fd3680ca1038594bbc7544d85e27c71ce29`

```dockerfile
```

-	Layers:
	-	`sha256:8fabe515857b2945f50a734da38e025ab41328b1d8e7c661577da9cfe0c7e5c5`  
		Last Modified: Tue, 04 Aug 2026 01:30:30 GMT  
		Size: 9.0 MB (9042725 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0473dfdfe475fe7dbfe67a6700648862d54b6b7f0bd3cc06e765d3e5cdeac925`  
		Last Modified: Tue, 04 Aug 2026 01:30:30 GMT  
		Size: 30.2 KB (30235 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d34c669f2e3dddc78d2290eb2bff2726aff2f98580e098ed2832400dc77d8e5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **628.9 MB (628869025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5864c05b0ccdcca5cf7468631d38aecf7ff474bebde8bf3ebd6499eecbd5165b`
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
# Tue, 04 Aug 2026 01:29:14 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:29:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:29:14 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:29:14 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:29:14 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:29:49 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:29:49 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 04 Aug 2026 01:29:49 GMT
ENV JAVA_VERSION=25.0.2
# Tue, 04 Aug 2026 01:30:02 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e0be791c8fda4d03b6b0a0cb824fef3149736170057b3a515252b44419606af0     && GRAALVM_AARCH64_DOWNLOAD_SHA256=b4580d9f223d0a4b3a1757e58b18ff4c1db950e67e105fc5cb741457d2384a71     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 04 Aug 2026 01:30:02 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 01:30:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 01:30:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:30:04 GMT
USER gradle
# Tue, 04 Aug 2026 01:30:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:30:05 GMT
USER root
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c2a7b73feac334f7bbbca1dd8eb15a33482642cb9b4fea927ec5c511f811be2`  
		Last Modified: Tue, 04 Aug 2026 01:30:42 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780c07fc7d98b8b98e5314f3a1d261cb97b4a8fd0ae4028b8d412a313ee697e6`  
		Last Modified: Tue, 04 Aug 2026 01:30:49 GMT  
		Size: 143.4 MB (143368715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c912bd90f3ca4715788836b81ff85566f0d1880a4ca0902b42afc5277013c256`  
		Last Modified: Tue, 04 Aug 2026 01:30:52 GMT  
		Size: 316.0 MB (315986814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af770f7c731fd24d210a941b795e92e935a40935a34695a27c4d9c831b37371`  
		Last Modified: Tue, 04 Aug 2026 01:30:49 GMT  
		Size: 140.6 MB (140596021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16dac9b329379812cc204bf9df4f15585a7727a5f86ac92b29d785091edc23a`  
		Last Modified: Tue, 04 Aug 2026 01:30:43 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:5d4527b7e5407e300345320a79a50770e4f89a6253db3e87dc32835690f2608a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9068212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc9ba8d212798559365e94909a1e91e4b5c66f1bd91a6df9a0e68ba04d82cf88`

```dockerfile
```

-	Layers:
	-	`sha256:7f74e4f7d94181c4ce1bfae8e9be1d749ffb9675383d3ce3f3cf7db89197c1ed`  
		Last Modified: Tue, 04 Aug 2026 01:30:42 GMT  
		Size: 9.0 MB (9037717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa75e078441fe3d0a0abb758c5bbeba7566406595db28914d884e94a5b4118e4`  
		Last Modified: Tue, 04 Aug 2026 01:30:42 GMT  
		Size: 30.5 KB (30495 bytes)  
		MIME: application/vnd.in-toto+json
