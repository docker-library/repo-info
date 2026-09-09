## `gradle:jdk25-graal-noble`

```console
$ docker pull gradle@sha256:f41af333def791b5ca3b0795f01b3926c5c5f76e26572dae0b0f5219d70676db
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk25-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:d8e2c182371165b562e630bc091ed07597e2e7c188feef1ef38fcc9c37d04d16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **677.3 MB (677279447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:669e90a08cc3be25601f7b832ca1833d8aff479cf1c630cc1bcab3e85f049e1b`
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
# Wed, 09 Sep 2026 02:22:10 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:22:10 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:22:10 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 02:22:10 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:22:10 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:22:46 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:22:46 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:22:46 GMT
ENV JAVA_VERSION=25.0.4
# Wed, 09 Sep 2026 02:23:00 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:23:00 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 02:23:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 02:23:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:23:02 GMT
USER gradle
# Wed, 09 Sep 2026 02:23:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 02:23:03 GMT
USER root
```

-	Layers:
	-	`sha256:e51aee9c82ec5dd5ba2add49c45c6d85d460512757e2615b69bcdf9469c7cb58`  
		Last Modified: Mon, 07 Sep 2026 07:56:53 GMT  
		Size: 29.8 MB (29763253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65e6f9519637368d85abb209070163a39473e574fb149e25fbdeb309ca5ed2c8`  
		Last Modified: Wed, 09 Sep 2026 02:23:43 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:522ff9b34fb4b8c8be98ff4dfe424336075e72dd3631c912730eea65e9bd6eb2`  
		Last Modified: Wed, 09 Sep 2026 02:23:51 GMT  
		Size: 148.2 MB (148223474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47d766253122d8ac00d5a4a168241e1b54e2e97bdf410b8856fb4adc7debb38`  
		Last Modified: Wed, 09 Sep 2026 02:23:54 GMT  
		Size: 347.9 MB (347911774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0c34b60000b7b903303f5477f064f39786da9bf564baf0127903cde794b9f3`  
		Last Modified: Wed, 09 Sep 2026 02:23:51 GMT  
		Size: 151.4 MB (151354019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f04399e147e9b95426c8d0351d2f7e6e6afbb53b284a5c7b4c99bd256ef014`  
		Last Modified: Wed, 09 Sep 2026 02:23:44 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:c076f8c51d89fd49c85da6ddafb5d59e162d59e107e35893b100677a4cfa4686
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9148917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df9ac25b3fc2ad5d214394c35fe8aabec1f0ea74aede28a05a97c8856ff1ef95`

```dockerfile
```

-	Layers:
	-	`sha256:edd19be035e33a6620bd79ea88771c3f8babea58336bada6a050d29825ec2192`  
		Last Modified: Wed, 09 Sep 2026 02:23:43 GMT  
		Size: 9.1 MB (9118338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52a93bcf8640283e2697032940971ec587138dac8ce5679b5d9aee924a86eea3`  
		Last Modified: Wed, 09 Sep 2026 02:23:43 GMT  
		Size: 30.6 KB (30579 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk25-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:2e027eac789f49f748578e8a4bb663f66fd6769f098393c96f764cf277b87fa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.1 MB (646144931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22f2c8630d09a2093f30a714aed4ea2caae89aae7fc3c464697235fac01ff2cd`
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
# Wed, 09 Sep 2026 02:19:49 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:19:49 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:19:49 GMT
ENV JAVA_VERSION=25.0.4
# Wed, 09 Sep 2026 02:20:02 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:20:02 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 02:20:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 02:20:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:20:05 GMT
USER gradle
# Wed, 09 Sep 2026 02:20:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 02:20:05 GMT
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
	-	`sha256:ad1c1bb6418fa771a55309ff5e2aeffc526d1d933342ab012a5767982e48255e`  
		Last Modified: Wed, 09 Sep 2026 02:20:50 GMT  
		Size: 143.3 MB (143337758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374547c2473e3b91cba291ea2ef41902d230fca3a0d6546ca033a710b8a86332`  
		Last Modified: Wed, 09 Sep 2026 02:20:54 GMT  
		Size: 322.5 MB (322482489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee12be31f65138033a88ca9fb1618df47b04cf01a63f4ccd2af6a930b624e70c`  
		Last Modified: Wed, 09 Sep 2026 02:20:51 GMT  
		Size: 151.4 MB (151354016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486ea1e32fb8dcc481c0b983a9b99f88338ebaa611eb5bdc8892df1b183f18df`  
		Last Modified: Wed, 09 Sep 2026 02:20:44 GMT  
		Size: 29.3 KB (29334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:e34ca03c3551593aa0710b4ab170f6730ed9011ac384920804a116d1fc98ad3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9118602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89156722145ab66c61d8b6a9e4ecc71199f83ad1eadebfb09cbdf3489e656ec8`

```dockerfile
```

-	Layers:
	-	`sha256:3379d8f696e34a78a7a14e352a1caf912cfd53ffacb555ee7e63540db3a31e8f`  
		Last Modified: Wed, 09 Sep 2026 02:20:43 GMT  
		Size: 9.1 MB (9087763 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8d676b6f365ddf410d9ce7067ad3a90646be860ed28ac44de41291fd5a1ddfb`  
		Last Modified: Wed, 09 Sep 2026 02:20:42 GMT  
		Size: 30.8 KB (30839 bytes)  
		MIME: application/vnd.in-toto+json
