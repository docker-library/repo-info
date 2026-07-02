## `gradle:8-jdk17-graal-jammy`

```console
$ docker pull gradle@sha256:b1240017b2685667935226e386b14f78fc780693d1c4668d4f5bc8875f371349
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk17-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:1aec4b41a119de573aae4165c29a1724b8376493622ba7b0d86e5ac5fb49d0c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **585.6 MB (585640877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c10e45cee6fc6e82b6bb8ea299b443a240adea7ea8f06176a64cc0bce4111dd`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:22:54 GMT
CMD ["gradle"]
# Thu, 02 Jul 2026 02:22:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 02 Jul 2026 02:22:54 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 02 Jul 2026 02:22:54 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 02 Jul 2026 02:22:54 GMT
WORKDIR /home/gradle
# Thu, 02 Jul 2026 02:23:19 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 02 Jul 2026 02:23:19 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 02 Jul 2026 02:23:19 GMT
ENV JAVA_VERSION=17.0.9
# Thu, 02 Jul 2026 02:24:33 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Thu, 02 Jul 2026 02:24:33 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 02 Jul 2026 02:24:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 02 Jul 2026 02:24:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 02 Jul 2026 02:24:36 GMT
USER gradle
# Thu, 02 Jul 2026 02:24:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 02 Jul 2026 02:24:36 GMT
USER root
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a5a3509a402352cc1d262743def6d4eddbe6ae3b02d9a4b1a5b4b82151298b`  
		Last Modified: Thu, 02 Jul 2026 02:24:05 GMT  
		Size: 4.3 KB (4305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4325e16276de761c2f010ffd252315bd2775ca7f27053ce81fa5e70e7a248fb7`  
		Last Modified: Thu, 02 Jul 2026 02:24:13 GMT  
		Size: 126.7 MB (126709998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094bbc88a3f79fdcfde7749fbb42fd3ea8d2f7c47c7a0823af049d3cde606ea4`  
		Last Modified: Thu, 02 Jul 2026 02:25:17 GMT  
		Size: 291.1 MB (291064229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a9919c15faa1affac2707de1e91044af728fb392da7eddfe448fdaa8b9e5a32`  
		Last Modified: Thu, 02 Jul 2026 02:25:14 GMT  
		Size: 138.1 MB (138068533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ed4c00dc1964ff128c829a007cba18638765188e40123a674b3bef077a64d4`  
		Last Modified: Thu, 02 Jul 2026 02:25:08 GMT  
		Size: 54.9 KB (54899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:40ca072e530f1de23c5bc9d4fb359eccb6a4b7587c1523b0d959ec0d7cf3d888
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9414024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75a7b6ca0556c1ad38e24772203327f77532c053f68c01edaa5dd9ff0d7ec3f8`

```dockerfile
```

-	Layers:
	-	`sha256:217c62616ccc16d999b94066ded967fd1ec54a9bcdb23f8a655d41290756cea2`  
		Last Modified: Thu, 02 Jul 2026 02:25:09 GMT  
		Size: 9.4 MB (9386781 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78869ec8a96eb58844e0e7f35c6c92afc10d8b55bf49b4fe9c30d83928e80910`  
		Last Modified: Thu, 02 Jul 2026 02:25:08 GMT  
		Size: 27.2 KB (27243 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk17-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d7fdc7b2bc42c98fe32ec221f7e7ee9577ad35c164c0b84c2e195e46318587d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **572.1 MB (572087570 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b313a2dc9857ed7bafed1bddaa9c118764086e88c6b804bfa5fa4debdf09ba21`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:23:31 GMT
CMD ["gradle"]
# Thu, 02 Jul 2026 02:23:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 02 Jul 2026 02:23:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 02 Jul 2026 02:23:31 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 02 Jul 2026 02:23:31 GMT
WORKDIR /home/gradle
# Thu, 02 Jul 2026 02:23:55 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 02 Jul 2026 02:23:55 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 02 Jul 2026 02:23:55 GMT
ENV JAVA_VERSION=17.0.9
# Thu, 02 Jul 2026 02:24:06 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Thu, 02 Jul 2026 02:24:06 GMT
ENV GRADLE_VERSION=8.14.5
# Thu, 02 Jul 2026 02:24:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Thu, 02 Jul 2026 02:24:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 02 Jul 2026 02:24:09 GMT
USER gradle
# Thu, 02 Jul 2026 02:24:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 02 Jul 2026 02:24:10 GMT
USER root
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fff46297c807045aff3fb3e93bce5cd6074ceb6b35f5f7761ec24b004c0fcd5`  
		Last Modified: Thu, 02 Jul 2026 02:24:42 GMT  
		Size: 4.3 KB (4310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de28412f6ed40cf5c43a6fdb8d6c425e633da5f168ea9a0a6e763e4001a033d`  
		Last Modified: Thu, 02 Jul 2026 02:24:49 GMT  
		Size: 122.8 MB (122840063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9360dff0cdf64280607eae15431700633b61d76a125c0aa0b97a9d79d49a193a`  
		Last Modified: Thu, 02 Jul 2026 02:24:52 GMT  
		Size: 283.5 MB (283501904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2304ba633017988feb54e5b50bce2b3f0672eea0d153198a5534fc97ae4d998`  
		Last Modified: Thu, 02 Jul 2026 02:24:49 GMT  
		Size: 138.1 MB (138068540 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1de107cec620309882758923532e22594c74d9d363f87a03f856efdc1b88528c`  
		Last Modified: Thu, 02 Jul 2026 02:24:43 GMT  
		Size: 59.5 KB (59537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:c1195e89b59aed3e2cae683154494f9a69cefa4e181bb34624fd0254ef4b3f50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9382920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd74dfbbc36ada191256624601e89a4edc6ff5a52a0a919af382a0f0858419ee`

```dockerfile
```

-	Layers:
	-	`sha256:93e91b078c4255fea0841f8071eb6294bc93b94675dc368b8450548c16af4e94`  
		Last Modified: Thu, 02 Jul 2026 02:24:42 GMT  
		Size: 9.4 MB (9355525 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e366c0e0f1a109f18066b3ddff817310277d31e1321e1eda5acf4c349db4f7b4`  
		Last Modified: Thu, 02 Jul 2026 02:24:41 GMT  
		Size: 27.4 KB (27395 bytes)  
		MIME: application/vnd.in-toto+json
