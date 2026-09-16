## `gradle:9-jdk21-graal-noble`

```console
$ docker pull gradle@sha256:637f8da19760b9a1b24478ccfb787ecddaba9e8d1fe0382e14182b480312415b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:8df44f7ab701097cdfb3750c08ec2037b5c9b610b2f8d0781dd225d90cdc193b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **619.4 MB (619354861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65b8cd16e90edbcb7682bd59acf612a1720c66ddac5c502efb13fe2a4f3c01a4`
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
# Wed, 16 Sep 2026 03:18:52 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 03:18:52 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 03:18:52 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 03:18:52 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 03:18:52 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 03:19:28 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 16 Sep 2026 03:19:28 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 16 Sep 2026 03:19:28 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 16 Sep 2026 03:19:37 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 16 Sep 2026 03:19:37 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 16 Sep 2026 03:19:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 16 Sep 2026 03:19:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 03:19:41 GMT
USER gradle
# Wed, 16 Sep 2026 03:19:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 16 Sep 2026 03:19:41 GMT
USER root
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0bdc4b3437ed204e6a8dfe2a14125a083b1ce4baa5a16d71497c22b6f9a17f`  
		Last Modified: Wed, 16 Sep 2026 03:20:16 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a12fc44ad5ff02f22e1d963ba4c10ee645a62521d5074188f1d82701f2f9fe`  
		Last Modified: Wed, 16 Sep 2026 03:20:28 GMT  
		Size: 148.2 MB (148223060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1164897837378e534a42a0170cd6e4b6b1f4abf61491b63c9cc75b2053e4691b`  
		Last Modified: Wed, 16 Sep 2026 03:20:33 GMT  
		Size: 290.0 MB (289986741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d57ce0bbcdc15d7ed3dc5d81fdba8d8daf7c7e4c4a6c26b8fcd93c16de5a13b`  
		Last Modified: Wed, 16 Sep 2026 03:20:29 GMT  
		Size: 151.4 MB (151354016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14718a79be18fe7e1589992e6d5335d8068cbb7f947987a4d3b166d17cb0f32f`  
		Last Modified: Wed, 16 Sep 2026 03:20:17 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:3285532c7551536f7e872cccb0af06521e53773c4a5707ad2496b58a7cbdac0a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9031612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccd45a86c4eb23d5d8f01df1b56a253162484346f5b926e93f5d9913c0b3f37b`

```dockerfile
```

-	Layers:
	-	`sha256:4f2ccee94ab1de6adbc0c5797b31114fefa3412c5ce2606838a5aa22ed5294c4`  
		Last Modified: Wed, 16 Sep 2026 03:20:16 GMT  
		Size: 9.0 MB (9003920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f79eb64076f73c6a55de668fe97d16f6859231738d1c2646f4ec49b9e54f0390`  
		Last Modified: Wed, 16 Sep 2026 03:20:15 GMT  
		Size: 27.7 KB (27692 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:53ae8cf4d49302e5bd2cf1bf685a580303b64255d74dd0a8f36e68ffeeb6f78b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.3 MB (605326472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f1d1f221780e6b550d3d643d6778b3a9a0fa4eff973883d75fc8caa493725e`
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
# Wed, 16 Sep 2026 03:18:24 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 03:18:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 03:18:24 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 03:18:24 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 03:18:24 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 03:19:02 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 16 Sep 2026 03:19:02 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 16 Sep 2026 03:19:02 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 16 Sep 2026 03:19:11 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 16 Sep 2026 03:19:11 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 16 Sep 2026 03:19:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 16 Sep 2026 03:19:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 03:19:14 GMT
USER gradle
# Wed, 16 Sep 2026 03:19:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 16 Sep 2026 03:19:15 GMT
USER root
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f811ae931d1f581c640e735ccf78061905f4f4950cafe2781ef66120306cb32a`  
		Last Modified: Wed, 16 Sep 2026 03:19:46 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fe918b00e7ad9a63dcb838f76d48ae949e78ed2c0b05aae2e840e40f3e89ff8`  
		Last Modified: Wed, 16 Sep 2026 03:19:53 GMT  
		Size: 143.3 MB (143333918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a207afd5c8759e6b1cf98c7348a79fbae9bca6bbcce474fc1c4e624739f6e910`  
		Last Modified: Wed, 16 Sep 2026 03:19:56 GMT  
		Size: 281.7 MB (281666341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51930333377b43205152cad2385b45ed961d8c72b1025eca5c486e5d17615ae1`  
		Last Modified: Wed, 16 Sep 2026 03:19:54 GMT  
		Size: 151.4 MB (151353984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e51544474733084731f1f4102f79b1f17e7cce2a43caaaad553e77753d796216`  
		Last Modified: Wed, 16 Sep 2026 03:19:48 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:dac814ee7c5c9a238ef9bfab2559aa9134ae409d03704d8ef53c1282d1877108
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9027309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c299a3845ba6d279cf510cb7577631e2f57bbdf445d840ad60a5ce03c5acc63b`

```dockerfile
```

-	Layers:
	-	`sha256:6e643d7800bb04deeb73f2dbb76efff41d6216be11c1c1dca46c39969439d08a`  
		Last Modified: Wed, 16 Sep 2026 03:19:47 GMT  
		Size: 9.0 MB (8999453 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9897ac97060c6fde9ebfa8ceea9e1fc00cbe14ff780e11c07618558c476897ea`  
		Last Modified: Wed, 16 Sep 2026 03:19:46 GMT  
		Size: 27.9 KB (27856 bytes)  
		MIME: application/vnd.in-toto+json
