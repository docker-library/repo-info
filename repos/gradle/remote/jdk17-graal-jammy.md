## `gradle:jdk17-graal-jammy`

```console
$ docker pull gradle@sha256:620f855faec7335454e80b55e8c53d3918ce7f7cc39a266a8cd05a97e0627ace
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk17-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:d559537e5f78b60993fd727574f13434554566d7437b306014da3b987f65f826
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.2 MB (599188201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a4831a7b9507b49184d142252690b4d6654eb427783f0a3f4a9ee3ceb281e48`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 17:53:38 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:53:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:53:38 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:53:38 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:53:38 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:54:10 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:54:10 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 20 Oct 2026 17:54:10 GMT
ENV JAVA_VERSION=17.0.9
# Tue, 20 Oct 2026 17:54:20 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Tue, 20 Oct 2026 17:54:20 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:54:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:54:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:54:22 GMT
USER gradle
# Tue, 20 Oct 2026 17:54:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:54:23 GMT
USER root
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4013047cbb6d60bbae9f15ce8768e316b8755657560c3a4ebd579e77d0b3c6`  
		Last Modified: Tue, 20 Oct 2026 17:54:53 GMT  
		Size: 4.3 KB (4308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448e0cbb83f86993033bf593ca3b17c16735a89e19dd0b56b74c3b44326bc7c5`  
		Last Modified: Tue, 20 Oct 2026 17:55:01 GMT  
		Size: 126.8 MB (126807845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdfb97ec4af9f3d528f432319f4fb13a6c5d6621e96bc6df7c73aef114d06cb9`  
		Last Modified: Tue, 20 Oct 2026 17:55:04 GMT  
		Size: 291.1 MB (291064398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b39e51c95f82b775407dd7e74a513639e39420f8dbad35a367e245ffd84af4ad`  
		Last Modified: Tue, 20 Oct 2026 17:55:02 GMT  
		Size: 151.5 MB (151533530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39283c2119b6629ef1cd121e9d9537cb03150c30ac758496cbeb83d666f12a79`  
		Last Modified: Tue, 20 Oct 2026 17:54:55 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:ba4655c87215b748c6159d9ddeb283d9b81aeb06eef7cb771fa201d7808a0a1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9445719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa889675a99f98b41ba28f94c67ef6a7f3f2eaa4881c2dc0b0c8b6ad5eaa0e3`

```dockerfile
```

-	Layers:
	-	`sha256:72674ca6aa0b2bd39274555a19ad7c997ff9c95e034150950b9e541eb387a8bc`  
		Last Modified: Tue, 20 Oct 2026 17:54:54 GMT  
		Size: 9.4 MB (9418162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ed0ae0a57576cb0d0e54f6b7c3aeff21c53fc4bd11fec0a98e16a483e19c5ca`  
		Last Modified: Tue, 20 Oct 2026 17:54:53 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:45f41219e20ce35d05541bee4366ae7dd384969045e4a6dc8a623c2bc78e906e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585704721 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0745d3007d30717d8ebc4ccc2fb4adae7065f0280a99b386846393d07b8be5d7`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 17:55:33 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:55:33 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:55:33 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:55:33 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:55:33 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:56:03 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:56:03 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 20 Oct 2026 17:56:03 GMT
ENV JAVA_VERSION=17.0.9
# Tue, 20 Oct 2026 17:56:13 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Tue, 20 Oct 2026 17:56:13 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:56:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:56:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:56:16 GMT
USER gradle
# Tue, 20 Oct 2026 17:56:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:56:16 GMT
USER root
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0d12ea1eefe3ce04af92141483b33bce044994dc051cceeba1516a8607e2f04`  
		Last Modified: Tue, 20 Oct 2026 17:56:49 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931b1962af8f4c1adfe0e2f8224c4e80ee66c4f2c7d50a9c93817a525d4660d4`  
		Last Modified: Tue, 20 Oct 2026 17:56:56 GMT  
		Size: 123.0 MB (122950807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd27d69a7fb56bfc2f16ff8ce3c77fc30372bfffc1c15286daa21e52b2bcd17`  
		Last Modified: Tue, 20 Oct 2026 17:57:00 GMT  
		Size: 283.5 MB (283501900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9439171b3ebe291cd1b2eaa9b13f5eaef1f2be92a8ddfe04c74efd366fac2d2`  
		Last Modified: Tue, 20 Oct 2026 17:56:57 GMT  
		Size: 151.5 MB (151533615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d19fd59607b9b377dbc8d47e13a5630e0fd7b819b7d2fb08dfce30f3e108f3f0`  
		Last Modified: Tue, 20 Oct 2026 17:56:50 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:640a0bda09ea04601e14bae8adaad7d6a794da25d8027d8baa83436a1bd20113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9414639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e61230be7f2a73834b1b13c58e41be40ce8cfe1ab185e7ef5d851ff369abc6e9`

```dockerfile
```

-	Layers:
	-	`sha256:09d006510fdff6c084d64fae4f84108eac0a06711aae23f84f4bef9315bc5d13`  
		Last Modified: Tue, 20 Oct 2026 17:56:50 GMT  
		Size: 9.4 MB (9386918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:929f000d8c9ced2b7e7f6f792c78c7c714e9f0777afce824d722804122752324`  
		Last Modified: Tue, 20 Oct 2026 17:56:49 GMT  
		Size: 27.7 KB (27721 bytes)  
		MIME: application/vnd.in-toto+json
