## `gradle:jdk21-graal-resolute`

```console
$ docker pull gradle@sha256:7cf9d9363865723f37b5a91d27872b0a26e8713dbd87d4c064ba830d3985ab38
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-graal-resolute` - linux; amd64

```console
$ docker pull gradle@sha256:f21e5c62dae40608fe6af21f830a877f3af15c00f805152356c51235492cfba7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **649.2 MB (649203035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b41cd81f13581dcb6c48634f612173090b603b886d425fd5622b22b504556b7e`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Wed, 16 Sep 2026 03:18:50 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 03:18:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 03:18:50 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 03:18:50 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 03:18:50 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 03:19:43 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 16 Sep 2026 03:19:43 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 16 Sep 2026 03:19:43 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 16 Sep 2026 03:19:52 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 16 Sep 2026 03:19:52 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 16 Sep 2026 03:19:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 16 Sep 2026 03:19:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 03:19:55 GMT
USER gradle
# Wed, 16 Sep 2026 03:19:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 16 Sep 2026 03:19:56 GMT
USER root
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7abb8bbc904e8cde28e7e8aa809be0a183ccbb1aa5d485717e79dce5abb8e4da`  
		Last Modified: Wed, 16 Sep 2026 03:20:33 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c314f14eefdfaea91a4d398f3e7a6a1037fcd93900b6eb7d09ae9445c100ce65`  
		Last Modified: Wed, 16 Sep 2026 03:20:43 GMT  
		Size: 166.3 MB (166262677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d979600c46959daac12e3237151b85ba6fc88048a721e063b6cc1760f6612441`  
		Last Modified: Wed, 16 Sep 2026 03:20:46 GMT  
		Size: 290.0 MB (289986044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cc28de22229516318157a56243d5a334ae00bc4d8d5393e3b7502847177d90`  
		Last Modified: Wed, 16 Sep 2026 03:20:43 GMT  
		Size: 151.4 MB (151353987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925ce2ed4c9e0d2c4507de3720c16be96701695eb4bf92fff888220347b3bb9b`  
		Last Modified: Wed, 16 Sep 2026 03:20:34 GMT  
		Size: 25.6 KB (25619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-graal-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:4ba0e1353f667960d62573a9edf2301628d7f3515d23c78fe8bbeb13f8c2dc2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.1 MB (11134288 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:814d2754b7ffb4a21ae064a319f9dbdb2ffaee2eca4245f197b69c0c40183c04`

```dockerfile
```

-	Layers:
	-	`sha256:79982566767afe4fcc4964d06d2c2170eedcd88255b40a96c7e19eeab32309c0`  
		Last Modified: Wed, 16 Sep 2026 03:20:34 GMT  
		Size: 11.1 MB (11104225 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:83825fa31b5f8dc46b1ac79cfe9b951790aa97a6bfb08618a8b2a56ca18c7509`  
		Last Modified: Wed, 16 Sep 2026 03:20:33 GMT  
		Size: 30.1 KB (30063 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-graal-resolute` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1cefd7f5ae95dc2d0757acf7fd55d921155d759ca396da223136af6b9454bde3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **633.2 MB (633193822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b23122a51503bdf64ca102a46d688eb26f26c0860a009739f0f4280aae5a41e`
-	Default Command: `["gradle"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Wed, 16 Sep 2026 03:18:23 GMT
CMD ["gradle"]
# Wed, 16 Sep 2026 03:18:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 16 Sep 2026 03:18:23 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 16 Sep 2026 03:18:23 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 16 Sep 2026 03:18:24 GMT
WORKDIR /home/gradle
# Wed, 16 Sep 2026 03:19:03 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 16 Sep 2026 03:19:03 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 16 Sep 2026 03:19:03 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 16 Sep 2026 03:19:13 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 16 Sep 2026 03:19:13 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 16 Sep 2026 03:19:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 16 Sep 2026 03:19:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 16 Sep 2026 03:19:16 GMT
USER gradle
# Wed, 16 Sep 2026 03:19:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 16 Sep 2026 03:19:17 GMT
USER root
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec9cce1180e38d52b541a834ddecb80d0f50438fcb92ecb8af732cdcf459310d`  
		Last Modified: Wed, 16 Sep 2026 03:19:54 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519ea86dffb4e0fa547f4beda0213ff4ee9d4a9423641d602d001f0e5823a0f5`  
		Last Modified: Wed, 16 Sep 2026 03:20:02 GMT  
		Size: 159.4 MB (159386609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d2913c7d1d75cff28338c638b7c3a19118c827a15a3d2f594f5d932af548621`  
		Last Modified: Wed, 16 Sep 2026 03:20:04 GMT  
		Size: 281.7 MB (281666071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8ba121ef054226320b6966b4cf19568c62b983a69467e77c1c1f7134a83691e`  
		Last Modified: Wed, 16 Sep 2026 03:20:01 GMT  
		Size: 151.4 MB (151354014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8753f85a4ab1866459cdad05b506171943f98fa07349829ae20106da1651da63`  
		Last Modified: Wed, 16 Sep 2026 03:19:55 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-graal-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:91870935ab116461f8048f335f5384bab6b6ed0eaa479ad3ee91ab571020dbe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.2 MB (11172956 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0edd2d6b8798639960d3d554fd1cd6881813aaac3bf17f640de6c12e40f9c165`

```dockerfile
```

-	Layers:
	-	`sha256:4a21dc98022eab1150feb53dfb125513615012d31d444d16523efb59db61b7eb`  
		Last Modified: Wed, 16 Sep 2026 03:19:55 GMT  
		Size: 11.1 MB (11142681 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1668a9163dd3d2b1816269dcc24625ca67147d1a2e2b22aee7f798c41bcda1ee`  
		Last Modified: Wed, 16 Sep 2026 03:19:54 GMT  
		Size: 30.3 KB (30275 bytes)  
		MIME: application/vnd.in-toto+json
