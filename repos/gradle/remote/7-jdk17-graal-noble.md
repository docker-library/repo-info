## `gradle:7-jdk17-graal-noble`

```console
$ docker pull gradle@sha256:5fbc066a7df73a39265b3a186df7264f9b211b6825a1ca21af1921027136e472
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:7-jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:b862acc85b61c59304ff289b7e7959d18effa8024c07c2dbf7c4b49b29a334b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **600.0 MB (600022987 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8912e21b60120740fdb963dbc1b3f24ca7a507536b1c8d6c555466d05ff2d63e`
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
# Fri, 02 Oct 2026 01:20:37 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:37 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:37 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:37 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:22:49 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:22:49 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:22:49 GMT
ENV JAVA_VERSION=17.0.9
# Fri, 02 Oct 2026 01:22:59 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:22:59 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 02 Oct 2026 01:22:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 02 Oct 2026 01:23:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:23:01 GMT
USER gradle
# Fri, 02 Oct 2026 01:23:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 02 Oct 2026 01:23:02 GMT
USER root
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0343bd8d089bec78f02c6a122e86ee918c8fb8e8fbb379dfdbca2986da0ca0`  
		Last Modified: Fri, 02 Oct 2026 01:22:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c425256dd67f1d884ff2ab5c1d01f991f37e31750a301db9937ddc5f9803aff`  
		Last Modified: Fri, 02 Oct 2026 01:23:42 GMT  
		Size: 150.7 MB (150668920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef4daf1d88557a5b6cd8382188985d1370562271c8b92a0b118fb90773d28c48`  
		Last Modified: Fri, 02 Oct 2026 01:23:45 GMT  
		Size: 291.1 MB (291064004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d2a8f2a5ff1336b1f1f5035570b7082357e02461ac16ecb25deed6c89e2ea8a`  
		Last Modified: Fri, 02 Oct 2026 01:23:41 GMT  
		Size: 128.5 MB (128469416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd6a52e8753b1c26b90f891470bb87cc0e7a4084b59960a600a391e6e66a33bc`  
		Last Modified: Fri, 02 Oct 2026 01:23:35 GMT  
		Size: 54.9 KB (54907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:dfbd4a0a35d842742ccfb9d84bac81fd5983d6dd1423c6e3e23165268ddbad1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8939280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:baab56af0629371534ef4a833095f1eec74d6d8d45c87149de1b8be7e3efc276`

```dockerfile
```

-	Layers:
	-	`sha256:7db9e163d0736679bc2a11190e43e13b2f6e00e302caaab68da0eb1eb7f4894d`  
		Last Modified: Fri, 02 Oct 2026 01:23:35 GMT  
		Size: 8.9 MB (8907211 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5ddab9a0d71eae868dd4e2f00892ce3969c46ac4926ab8143c0ba1586f4f832`  
		Last Modified: Fri, 02 Oct 2026 01:23:35 GMT  
		Size: 32.1 KB (32069 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:7-jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:767b0f4908178b01577e1b1e6966e9750ece4d28c8913609c75d5735d55664fd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **586.6 MB (586610212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e087afeb58de774d7ba693766fb7c691486379047211c77efb0f4ad4ce8e40ec`
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
# Fri, 02 Oct 2026 01:20:30 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:30 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:30 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:30 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:22:42 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make                 binutils         ca-certificates         curl         fontconfig         locales         p11-kit         tzdata         unzip         wget                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:22:42 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:22:42 GMT
ENV JAVA_VERSION=17.0.9
# Fri, 02 Oct 2026 01:22:52 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:22:52 GMT
ENV GRADLE_VERSION=7.6.6
# Fri, 02 Oct 2026 01:22:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
# Fri, 02 Oct 2026 01:22:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:22:54 GMT
USER gradle
# Fri, 02 Oct 2026 01:22:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=673d9776f303bc7048fc3329d232d6ebf1051b07893bd9d11616fad9a8673be0
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --version # buildkit
# Fri, 02 Oct 2026 01:22:54 GMT
USER root
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca521ec179d85a54c164b43113e8d0666687fda502154b843fffd25bf3962dc`  
		Last Modified: Fri, 02 Oct 2026 01:21:49 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7572a6effbeae32be9d7bd218f4cd370202b50b956d6c54c09bf1f41f394498`  
		Last Modified: Fri, 02 Oct 2026 01:23:34 GMT  
		Size: 145.6 MB (145638475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecae0fa34e830d6dcd5a9a04980afe77ef89cb2f6eb32c0f74cb4ee4662e43b`  
		Last Modified: Fri, 02 Oct 2026 01:23:36 GMT  
		Size: 283.5 MB (283501368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74bd9ec79409cb8fcceaea9d7f2ac3849c55778e6e9b09b1ade38d832035f51`  
		Last Modified: Fri, 02 Oct 2026 01:23:33 GMT  
		Size: 128.5 MB (128469441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:455089d919da8e4f9fd92ca5269d3ee9119966233b89b207be009f7fd31e561e`  
		Last Modified: Fri, 02 Oct 2026 01:23:27 GMT  
		Size: 59.5 KB (59523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:7-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:4064c67dc7a989c23dc57fed133994f519fdc34a42dd65276978da32c05ca8a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8935313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed9b62fe7eabe853400ba2cefa258fef91c57bad5e035ca3adb5542d5f55a8a0`

```dockerfile
```

-	Layers:
	-	`sha256:49d166b0fb5c1b4f927947cc16fcb9536c95ba3ea01cdb8e1f733bd3ae64ab9f`  
		Last Modified: Fri, 02 Oct 2026 01:23:27 GMT  
		Size: 8.9 MB (8902912 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4192f41a879418e5219e76b9c7bea27c5b9771e358fb7fd5b4cc9ccb083ecd2`  
		Last Modified: Fri, 02 Oct 2026 01:23:27 GMT  
		Size: 32.4 KB (32401 bytes)  
		MIME: application/vnd.in-toto+json
