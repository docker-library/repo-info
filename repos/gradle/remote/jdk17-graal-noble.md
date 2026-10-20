## `gradle:jdk17-graal-noble`

```console
$ docker pull gradle@sha256:afca0e9ac0c8bf53ac7366b07cb1cc4a3994301389187e37783986bf3e36c337
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:d21eb30306e521693eed03845702cde261e89a22c0d33dd670b6e753a2f922fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **620.7 MB (620721832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab36d2e92d2fd0a2a9cb64f31a10b49ce095ae7ca0b2e587467ccb12e55ddb7c`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 17:53:37 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:53:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:53:37 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:53:37 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:53:37 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:54:09 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:54:09 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 20 Oct 2026 17:54:09 GMT
ENV JAVA_VERSION=17.0.9
# Tue, 20 Oct 2026 17:54:19 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Tue, 20 Oct 2026 17:54:19 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:54:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:54:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:54:21 GMT
USER gradle
# Tue, 20 Oct 2026 17:54:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:54:22 GMT
USER root
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3023a7a34ce854626e5ad7827adac69fad16a32abea2a6b54f07a90cb208b9e2`  
		Last Modified: Tue, 20 Oct 2026 17:54:52 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:950c24522e6f6c0855ef88538c67c5d599f5eb405a75b66d244ab8d66075e65e`  
		Last Modified: Tue, 20 Oct 2026 17:55:01 GMT  
		Size: 148.3 MB (148331525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad90f4b1da13415193098b10086c72fa5b69e0a53ca8e8404086079aa80133c`  
		Last Modified: Tue, 20 Oct 2026 17:55:04 GMT  
		Size: 291.1 MB (291064048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60a6420cc0af7ae26de42fde6698c67b7aa4b53e067f34cac437118411e55d50`  
		Last Modified: Tue, 20 Oct 2026 17:55:01 GMT  
		Size: 151.5 MB (151533574 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f47aa70215b82e77c10cb703b81200d2efd7a663f2f9cbe4da9249007233d9`  
		Last Modified: Tue, 20 Oct 2026 17:54:54 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:80376324a7581ad26eb7b57c4c5fe257c8b0e2370cc8ddbedebb5bff3a95347e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9050947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa77fdcc90b1ef219374b36da2704edc80dd51c187686bcd7ab0b2c4290eb20b`

```dockerfile
```

-	Layers:
	-	`sha256:5ad3fc842466eb3d1b8fb9fa10083d6ac452363240638000497da6d14443e174`  
		Last Modified: Tue, 20 Oct 2026 17:54:53 GMT  
		Size: 9.0 MB (9023151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be6cfa925461f34718db17419218cb35c8a4b38637c9e1204dea376bfd4fd8cd`  
		Last Modified: Tue, 20 Oct 2026 17:54:52 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:15277ecbf8bb65e74e09f1edc403263a8a41ebb5ba76f2e72eaac4a66ead59a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **607.4 MB (607444044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f75ff884a7a0493a4729d3b77ac5a2683980e16713bfc1cdfcc826e520394f32`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Tue, 20 Oct 2026 17:55:15 GMT
CMD ["gradle"]
# Tue, 20 Oct 2026 17:55:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 20 Oct 2026 17:55:15 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 20 Oct 2026 17:55:15 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 20 Oct 2026 17:55:15 GMT
WORKDIR /home/gradle
# Tue, 20 Oct 2026 17:55:50 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 20 Oct 2026 17:55:50 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 20 Oct 2026 17:55:50 GMT
ENV JAVA_VERSION=17.0.9
# Tue, 20 Oct 2026 17:56:02 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Tue, 20 Oct 2026 17:56:02 GMT
ENV GRADLE_VERSION=9.8.2
# Tue, 20 Oct 2026 17:56:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
# Tue, 20 Oct 2026 17:56:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 20 Oct 2026 17:56:05 GMT
USER gradle
# Tue, 20 Oct 2026 17:56:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=21bd5da2de49b642904077f38c0efdc7778e92b3ed0889392dca61b97e389607
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 20 Oct 2026 17:56:06 GMT
USER root
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc80fbd1a2a12ba83c1c37e3b2b38812342672b9ae6b6ef4f76b2b592b2f83a`  
		Last Modified: Tue, 20 Oct 2026 17:56:40 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f673553b43ce43b220a6b2b8e8a0e4b44643ad0c36e101f4c67ddf841494ea68`  
		Last Modified: Tue, 20 Oct 2026 17:56:48 GMT  
		Size: 143.4 MB (143438214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f865b9da72ca75bede9ae984bd58e88c297bf43853e62b37d3c98d226dae419`  
		Last Modified: Tue, 20 Oct 2026 17:56:50 GMT  
		Size: 283.5 MB (283501810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060085f36576fa0b03687c4819668d2ad062c7e10048a41296a5c6d91a01dbd2`  
		Last Modified: Tue, 20 Oct 2026 17:56:48 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248f0bcc9f552854b98e93057635485abf766187204e3164877f37f44d9b22d7`  
		Last Modified: Tue, 20 Oct 2026 17:56:41 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:90a5254b01df914ccb7430d04352f7ebd197b1408bf8ceffc534cf4f73b9cab5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9046640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d30efed8cdcec8fe35dde0cee40c640a1db3aab2d3cdb4e84d6dabf0dd80e731`

```dockerfile
```

-	Layers:
	-	`sha256:b3d3957cddf44337aa490f36229018969c5dada2de0e4b1a30921d15356998cf`  
		Last Modified: Tue, 20 Oct 2026 17:56:41 GMT  
		Size: 9.0 MB (9018680 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3f29cde7fea36e89e83834383d2b42666297419ff6f76a994740425e7abe677`  
		Last Modified: Tue, 20 Oct 2026 17:56:40 GMT  
		Size: 28.0 KB (27960 bytes)  
		MIME: application/vnd.in-toto+json
