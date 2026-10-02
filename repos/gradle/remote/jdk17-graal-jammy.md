## `gradle:jdk17-graal-jammy`

```console
$ docker pull gradle@sha256:cef7c7c6eeb8a6fb3c98f79d78acd8aa829bf41a38331675412310e9eb5bf0f3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk17-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:4bf562978c6f220af410d29c16e3d03bc572b4e1d7f4d78565a15e4016228fc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.2 MB (599177733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abfec710ca84d1dce073ea3ce35a8bc92153bec6ba5094389fdb54165973a983`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:20:59 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:59 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:59 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:59 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:21:30 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:21:30 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:21:30 GMT
ENV JAVA_VERSION=17.0.9
# Fri, 02 Oct 2026 01:21:40 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:40 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:40 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:43 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:43 GMT
USER root
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a47280c11eec60799dc52520cb2e11d936598401faded249f623fab5861f4c43`  
		Last Modified: Fri, 02 Oct 2026 01:22:15 GMT  
		Size: 4.3 KB (4305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9aef48122f7ca34b75e0ad359ca287f423596a26a0bc502549878435884c1b`  
		Last Modified: Fri, 02 Oct 2026 01:22:22 GMT  
		Size: 126.8 MB (126807370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:848c9f8cce6548d233027fe91437f89e2188b10746d9c3f88621410f4009631d`  
		Last Modified: Fri, 02 Oct 2026 01:22:27 GMT  
		Size: 291.1 MB (291064535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8a2bdd6366642a25394d4f174e2072787df5ad63ef3e012b068eb9594beac41`  
		Last Modified: Fri, 02 Oct 2026 01:22:22 GMT  
		Size: 151.5 MB (151524255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7caab940aee9f66a38433dfdfdb9a0816ca2b0c543e9c24d51fcbf1bf6076e4`  
		Last Modified: Fri, 02 Oct 2026 01:22:16 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:62b436e9f2a4e0c90ca4a19de820b2aac632984493bf0d60520c9f29b16ddccd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9448266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d436a84033fea26cfe6c86012c09a6992e7b439708737e7b3bfe32ba52882712`

```dockerfile
```

-	Layers:
	-	`sha256:a7feceecc3d14b01fded37972c7ce5732a1aef5a40613467c904492f7a02ee7e`  
		Last Modified: Fri, 02 Oct 2026 01:22:16 GMT  
		Size: 9.4 MB (9420709 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10c6c2d88a5f320ab96929b93dcb3678a6138d921f5a70a59dcafe0e8b9953f8`  
		Last Modified: Fri, 02 Oct 2026 01:22:15 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c7ac6879f01ef5d85376d4419430cfae3711e05714bf3fd87d9191cb2077027a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.7 MB (585700067 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fde27406d750d69ca897aee20754d54521bbc6662fa00f1304dfa453288f50c7`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:20:56 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:56 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:56 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:56 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:56 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:21:25 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:21:25 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:21:25 GMT
ENV JAVA_VERSION=17.0.9
# Fri, 02 Oct 2026 01:21:37 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:37 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:37 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:40 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:41 GMT
USER root
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f07429b4bb45fa1aae1679977f073fa6c66cf93eecc957fadffa7494dea7039`  
		Last Modified: Fri, 02 Oct 2026 01:22:12 GMT  
		Size: 4.3 KB (4304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7a5b7de0e5615e82e9fe1a6fe6d6d59a80a89b27d5741d2beca01bfbce2be5`  
		Last Modified: Fri, 02 Oct 2026 01:22:18 GMT  
		Size: 123.0 MB (122956024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8ceffe3580df1625f3cb7b22aaaef6efeed8bec647da71d007f8a4cb723bb1`  
		Last Modified: Fri, 02 Oct 2026 01:22:22 GMT  
		Size: 283.5 MB (283501937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:635a51a278f0339d059ca1452db6d818ad4c4fe2a3b96de19c996c18810eddb5`  
		Last Modified: Fri, 02 Oct 2026 01:22:19 GMT  
		Size: 151.5 MB (151524304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43bf4345567dca38cf18b94998154b016e439a760454d17af5091893f8f326d6`  
		Last Modified: Fri, 02 Oct 2026 01:22:14 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:53d3843ac2058f8cc5f61428f800702a0ee060f3d7422816cd00cb45c47a338c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9417186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a25cb2b55a354e68b2658c9d8dc83d5348a875c0f1ef204de2784cc1b26f0be`

```dockerfile
```

-	Layers:
	-	`sha256:3bc6f0eedbabaffc0800e929d5fce3ed9df10561e4129fe24566e5ce2fe9d760`  
		Last Modified: Fri, 02 Oct 2026 01:22:13 GMT  
		Size: 9.4 MB (9389465 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4836a5356e55bbb14c43f9604b01dd5e9c45604c30bdf42bc333f1f528373e5`  
		Last Modified: Fri, 02 Oct 2026 01:22:12 GMT  
		Size: 27.7 KB (27721 bytes)  
		MIME: application/vnd.in-toto+json
