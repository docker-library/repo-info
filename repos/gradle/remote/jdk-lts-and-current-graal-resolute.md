## `gradle:jdk-lts-and-current-graal-resolute`

```console
$ docker pull gradle@sha256:edb1d3b4acbb8ebd558f8d65e99102eb01f54f50e9b91913ef49135dbcdc43a6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk-lts-and-current-graal-resolute` - linux; amd64

```console
$ docker pull gradle@sha256:c8e60c83fec5364268cc9d7b62574bc77d7152a0bf354d3622ff341321afd268
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **715.9 MB (715912553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:753010fe5f143849a706a933ebd539c587334978e165ee29bff66741c4aefb7a`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:23:37 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:23:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:23:37 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle       && echo "Ensuring Gradle detects installed JDKs"    && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 09 Sep 2026 02:23:37 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:23:37 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:24:21 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:24:21 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:24:21 GMT
ENV JAVA_LTS_HOME=/opt/java/graalvm25
# Wed, 09 Sep 2026 02:24:21 GMT
ENV JAVA_CURRENT_HOME=/opt/java/graalvm25
# Wed, 09 Sep 2026 02:24:32 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading LTS GraalVM"     && JAVA_LTS_VERSION=25.0.4     && GRAALVM_LTS_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_LTS_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking LTS GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_LTS_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_LTS_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing LTS GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_LTS_HOME}"         && echo "Downloading current GraalVM"     && JAVA_CURRENT_VERSION=25.0.4     && GRAALVM_CURRENT_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_CURRENT_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && if [ "${JAVA_LTS_VERSION}" != "${JAVA_CURRENT_VERSION}" ]; then       ARCHITECTURE=$(dpkg --print-architecture)       && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi       && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi       && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz       && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"             && echo "Checking current GraalVM download hash"       && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_CURRENT_AMD64_DOWNLOAD_SHA256}"; fi       && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_CURRENT_AARCH64_DOWNLOAD_SHA256}"; fi       && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -             && echo "Installing current GraalVM"       && tar --extract --gunzip --file graalvm.tar.gz       && rm graalvm.tar.gz       && mv graalvm-* "${JAVA_CURRENT_HOME}";     fi         && echo "Default Java to LTS GraalVM"     && ln --symbolic "${JAVA_LTS_HOME}" /opt/java/graalvm     && for bin in "$JAVA_LTS_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:24:32 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 02:24:32 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 02:24:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:24:35 GMT
USER gradle
# Wed, 09 Sep 2026 02:24:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 02:24:35 GMT
USER root
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e6d07e766baa1904f89e8aecb7c1cf41f921429db594e3d8b63b2fabe18236`  
		Last Modified: Wed, 09 Sep 2026 02:25:15 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa006462878f33ad4bf6d6a621021dd02370b11456b399519ac3300f46af8328`  
		Last Modified: Wed, 09 Sep 2026 02:25:23 GMT  
		Size: 175.0 MB (175016651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd95c7f64c0f8166dd25e61ce1992b0e740be30206861c1b5cda933c989780aa`  
		Last Modified: Wed, 09 Sep 2026 02:25:26 GMT  
		Size: 347.9 MB (347911737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edab668831f7118b823009a968a8f1b49ca9abbda2e1cf723b149f6249e773e`  
		Last Modified: Wed, 09 Sep 2026 02:25:23 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0facdca41d997fdbed6d83c894dd1f0b7712541ed39f39b22910309009d55f00`  
		Last Modified: Wed, 09 Sep 2026 02:25:16 GMT  
		Size: 25.6 KB (25606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-graal-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:c956504a39f71846ebfef21ca77c9f57931f1221d7f8e5b5beea1c4de779f7a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11260720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0db4e518c7fcb05a81edf56c71b510a5484d14c7e4cb0f3f99224b25e28f8772`

```dockerfile
```

-	Layers:
	-	`sha256:4f78728f3c7d8056470735826e78a01c1bd38dc980e8dfc0f2ed22832afc8f35`  
		Last Modified: Wed, 09 Sep 2026 02:25:15 GMT  
		Size: 11.2 MB (11220481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34742302265fb51c2b9c45d2c5aff4188ce5388d56ba37ee071264bd832e04a9`  
		Last Modified: Wed, 09 Sep 2026 02:25:15 GMT  
		Size: 40.2 KB (40239 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-lts-and-current-graal-resolute` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:a4c2c12384f1cbbfc8b6d36885b0cf1f8800694b877c9fb096e1a18f827be863
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **682.5 MB (682525848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d2ac373e030a010458f94986067460f0654116b33a72662bb561a75202151d1`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:20:34 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:20:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:20:34 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle       && echo "Ensuring Gradle detects installed JDKs"    && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Wed, 09 Sep 2026 02:20:34 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:20:34 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:21:18 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:21:18 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:21:18 GMT
ENV JAVA_LTS_HOME=/opt/java/graalvm25
# Wed, 09 Sep 2026 02:21:18 GMT
ENV JAVA_CURRENT_HOME=/opt/java/graalvm25
# Wed, 09 Sep 2026 02:21:29 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading LTS GraalVM"     && JAVA_LTS_VERSION=25.0.4     && GRAALVM_LTS_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_LTS_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking LTS GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_LTS_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_LTS_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing LTS GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_LTS_HOME}"         && echo "Downloading current GraalVM"     && JAVA_CURRENT_VERSION=25.0.4     && GRAALVM_CURRENT_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_CURRENT_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && if [ "${JAVA_LTS_VERSION}" != "${JAVA_CURRENT_VERSION}" ]; then       ARCHITECTURE=$(dpkg --print-architecture)       && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi       && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi       && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz       && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"             && echo "Checking current GraalVM download hash"       && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_CURRENT_AMD64_DOWNLOAD_SHA256}"; fi       && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_CURRENT_AARCH64_DOWNLOAD_SHA256}"; fi       && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -             && echo "Installing current GraalVM"       && tar --extract --gunzip --file graalvm.tar.gz       && rm graalvm.tar.gz       && mv graalvm-* "${JAVA_CURRENT_HOME}";     fi         && echo "Default Java to LTS GraalVM"     && ln --symbolic "${JAVA_LTS_HOME}" /opt/java/graalvm     && for bin in "$JAVA_LTS_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:21:29 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 02:21:29 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 02:21:32 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:21:32 GMT
USER gradle
# Wed, 09 Sep 2026 02:21:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 02:21:33 GMT
USER root
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8370bb74d6b8637f4298cccdb7a6e98ba672c1e844bff56184a813149889202a`  
		Last Modified: Wed, 09 Sep 2026 02:22:13 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:232709c92bca6cfe8b88c1f3b166d9d97dd3bcd0ef97cec259084c0ffa9d764b`  
		Last Modified: Wed, 09 Sep 2026 02:22:22 GMT  
		Size: 167.9 MB (167925273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05f4126c91025ed847a5ad39b1f7e3c54f7e4bc05a57f75ab328e26729105dd7`  
		Last Modified: Wed, 09 Sep 2026 02:22:25 GMT  
		Size: 322.5 MB (322480554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e6ba60569be1b89977cce532f31025556cd15a660ef870d8a1a10c2a864489`  
		Last Modified: Wed, 09 Sep 2026 02:22:21 GMT  
		Size: 151.4 MB (151354016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f089ca77b4036c6c3eb979997854a1227cbc0ce30311f9e20694c0693f84603a`  
		Last Modified: Wed, 09 Sep 2026 02:22:15 GMT  
		Size: 29.3 KB (29340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-lts-and-current-graal-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:3951764193f7eeb95e31a96124cbf2044e418d3dbd5a932014fb9cb560985a62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11273210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964b079cf6773a84cb0425c3162f90b02309b48bca9249e6b6b519e02bab55da`

```dockerfile
```

-	Layers:
	-	`sha256:a2a1a1d378c886447f2b4c4cd9c1e6a0c1aacec12d2d3e79badd3feef0b16536`  
		Last Modified: Wed, 09 Sep 2026 02:22:14 GMT  
		Size: 11.2 MB (11232663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cd2a0c55c8d744c0b7f4b47c2d28da343fdacaa9cc1acb40aba034c89749695`  
		Last Modified: Wed, 09 Sep 2026 02:22:13 GMT  
		Size: 40.5 KB (40547 bytes)  
		MIME: application/vnd.in-toto+json
