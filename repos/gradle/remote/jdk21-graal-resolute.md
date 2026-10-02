## `gradle:jdk21-graal-resolute`

```console
$ docker pull gradle@sha256:9298a02977ff2fb9031d5d2283af5091c4c404862efb0e2e48e8e49a16de014e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-graal-resolute` - linux; amd64

```console
$ docker pull gradle@sha256:5327b0c16790ab5362d7d70b09f678f9d0d0e35b0f62edcf90f75d8b861edf4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.7 MB (652677885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9386838cf3e499c348ec68aa99615db667fdefe2f5d5b1458ec1ee474fa65497`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Fri, 02 Oct 2026 01:20:25 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:25 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:25 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:25 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:25 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:21:07 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:21:07 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:21:07 GMT
ENV JAVA_VERSION=21.0.2
# Fri, 02 Oct 2026 01:21:16 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:16 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:19 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:19 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:19 GMT
USER root
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7c7a30ca2ffcbb745251f1f30751cfa2cea2df19eda5bd8d25df896f4f4eaa`  
		Last Modified: Fri, 02 Oct 2026 01:22:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911890b513a8860ec44e7622205b419eb03d4d3b56c26ea7ef8d5ba7531c5f94`  
		Last Modified: Fri, 02 Oct 2026 01:22:10 GMT  
		Size: 169.3 MB (169302002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bda742c093e223d866bbc3db4159e15c7d79566ef36803405916411720d506`  
		Last Modified: Fri, 02 Oct 2026 01:22:12 GMT  
		Size: 290.0 MB (289986762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6918d9ab2eb9f4b12105ed0972019ae95c821427104e8894eaf30d59d18deb8c`  
		Last Modified: Fri, 02 Oct 2026 01:22:09 GMT  
		Size: 151.5 MB (151524290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ee2064ba68b028401609dac4251d4878364ec3cf1acc5039bbdc6123b784ff`  
		Last Modified: Fri, 02 Oct 2026 01:22:01 GMT  
		Size: 25.6 KB (25604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-graal-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:024d98c8598503de12dff25282bf5c78d4b3820a77b9f093399e2123625634e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11174324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d35b5c1e5594b64836b0300a76d6ea1a80b610cb16ea64f908aa98efb41fba9`

```dockerfile
```

-	Layers:
	-	`sha256:a9ad70fb3d7f491c46bb85f08b286aa4c3b16a485459411bfd918e61c3ce99df`  
		Last Modified: Fri, 02 Oct 2026 01:22:00 GMT  
		Size: 11.1 MB (11144261 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a432f66b13a4596fe361fdd57f00735e806235c001b5956e08d8450ffcaeca67`  
		Last Modified: Fri, 02 Oct 2026 01:22:00 GMT  
		Size: 30.1 KB (30063 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-graal-resolute` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d361964d74e613bc4d189a59a22e719547fe35f0305416af41b58cb931326354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **636.9 MB (636896257 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31121b32bc4fd7deaa4472677a9702dac6978aa1c368432ba939faadf2a2ec44`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Fri, 02 Oct 2026 01:20:21 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:21 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:21 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:21 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:20:57 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:20:57 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:20:57 GMT
ENV JAVA_VERSION=21.0.2
# Fri, 02 Oct 2026 01:21:07 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:07 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:07 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:10 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:11 GMT
USER root
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad366b5b0aefc3c46fe84c78e31aa5d18b4de1bad724250c441d86931c07d4d`  
		Last Modified: Fri, 02 Oct 2026 01:21:48 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12dfdc65d7d506abe8fbaf934bc17c3f69bdb1a7c138c002f492ce06a0e0340f`  
		Last Modified: Fri, 02 Oct 2026 01:21:56 GMT  
		Size: 162.8 MB (162809921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:950c3e4734e2b1ed2e39cb55d60180ecbcaef2ca04adf65b0610a8dc55a11509`  
		Last Modified: Fri, 02 Oct 2026 01:21:58 GMT  
		Size: 281.7 MB (281666277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095f88610c03f4b242761fbec78499ba1db052a7f8a04cda90c2bd1138f73748`  
		Last Modified: Fri, 02 Oct 2026 01:21:55 GMT  
		Size: 151.5 MB (151524262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30d1f33a65f336877972e0493d0566d57e15385a8b4281af3d92dd34754afa4`  
		Last Modified: Fri, 02 Oct 2026 01:21:49 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-graal-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:e67467af936047bb82c388ce85754f8b06dfc020552672838fb52902a7322368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11212992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fafc4348019480858bcd06b33e1a5775561243858c7608f15140da40b2ed91`

```dockerfile
```

-	Layers:
	-	`sha256:9c0172c8b1e900a5d47d6900630661ab55ba02b14210356fa4907627c835283b`  
		Last Modified: Fri, 02 Oct 2026 01:21:49 GMT  
		Size: 11.2 MB (11182717 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b65c7417130ef64ad3451e8b22a109e697a8184aaf8c3210bf96e5e0583a2303`  
		Last Modified: Fri, 02 Oct 2026 01:21:48 GMT  
		Size: 30.3 KB (30275 bytes)  
		MIME: application/vnd.in-toto+json
