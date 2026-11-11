## `gradle:jdk21-graal-noble`

```console
$ docker pull gradle@sha256:df0d0da3b44233ff8cf3697b137805787205cbd5ad70feb09c5266e27c95b2fd
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:b8366b249fc95daebc0e9c9df1017c0fef6c63b8cae9f6bf18e1605ee49c1d28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **633.2 MB (633223844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b1540e868f11f9f7eb7f2704907950d0c3d63ebd70aa28c08bcc4f3a6f1a5fd`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 20:11:46 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:11:46 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:11:46 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 20:11:46 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:11:46 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:12:17 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 20:12:17 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 20:12:17 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Wed, 11 Nov 2026 20:12:28 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 20:12:28 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 20:12:28 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 20:12:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:12:30 GMT
USER gradle
# Wed, 11 Nov 2026 20:12:31 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:12:31 GMT
USER root
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de69e5cb97a18cd114a7565e96a5198a377c2ee29711db79d2ddedbcac962b6`  
		Last Modified: Wed, 11 Nov 2026 20:13:07 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d1662e5a4a217b9cfe16e5d2d8ee33c878675e055f73936d4d2c305323d49c`  
		Last Modified: Wed, 11 Nov 2026 20:13:16 GMT  
		Size: 150.8 MB (150836373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c937322eb60ce32cfaad3ed03b81823b960ba944cd3856da43583f8f3b4710e1`  
		Last Modified: Wed, 11 Nov 2026 20:13:19 GMT  
		Size: 317.8 MB (317772026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99d47834076e9972b16c1bcb15831b0796b0c960611e9c0c362835dbaca958a4`  
		Last Modified: Wed, 11 Nov 2026 20:13:15 GMT  
		Size: 134.8 MB (134820901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1fd1bb6a304aadf8bd8254916da86e465b273cc2f59158bb22037a7f77cf77e`  
		Last Modified: Wed, 11 Nov 2026 20:13:08 GMT  
		Size: 25.6 KB (25612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:188244a0b01b125f5d1ea95392d691c084766696cf702faa0981d88f295fc3d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9078423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02241101c9cbafb4e372d6371c4e1a0b5ac0a84fc707da3c854d9cb421be8d90`

```dockerfile
```

-	Layers:
	-	`sha256:7f3e0b7d89274f532c8b080763fee7f0b5f6e47307be04e2733ce32b5f6af60a`  
		Last Modified: Wed, 11 Nov 2026 20:13:07 GMT  
		Size: 9.0 MB (9049985 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20a6fb3e33ed74f301589ed8e882234cff2a4953b4d7147933c458d1b83cb2fa`  
		Last Modified: Wed, 11 Nov 2026 20:13:07 GMT  
		Size: 28.4 KB (28438 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:879a1799f79378821174c23cdb7e97a680d6db4075a0b5e13001c09d17634650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **621.7 MB (621700099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a753ed661965864650d08af1e6313222db4324d57c52abf819cf19d73c570cb9`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 19:51:50 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 19:51:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 19:51:50 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 19:51:50 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 19:51:50 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 19:52:19 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 19:52:19 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 19:52:19 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Wed, 11 Nov 2026 19:52:36 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 19:52:36 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 19:52:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 19:52:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 19:52:39 GMT
USER gradle
# Wed, 11 Nov 2026 19:52:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 19:52:39 GMT
USER root
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df8cc8b2fa46467f64ac4bbe0115243b5cca2ba1872ef829fb0ea70c66a26058`  
		Last Modified: Wed, 11 Nov 2026 19:53:14 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f44b9efb471bd6e4711f01488b50adfd1f3d4403a49e1f3b510a96b75695960c`  
		Last Modified: Wed, 11 Nov 2026 19:53:22 GMT  
		Size: 145.9 MB (145903280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c896e2603a3edf4ba3de813f92aa27bf547294e29cea98b1164aa34e85033b`  
		Last Modified: Wed, 11 Nov 2026 19:53:25 GMT  
		Size: 312.0 MB (312005135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab66ee31f0b12431ff0220a2e7f903fe4108985d3cf25af7910700bc0fd1efff`  
		Last Modified: Wed, 11 Nov 2026 19:53:22 GMT  
		Size: 134.8 MB (134820908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac659f31efa913a0adb9a5219220433a2053d97fea9e0e4bf7003e9d37eedde`  
		Last Modified: Wed, 11 Nov 2026 19:53:15 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:797b2c4dfadc7ae2e978dbe5c319aa68decbc2abfe014fe3f019e8c7c592e813
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9098646 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bd37dfd5525d042f12e12cdb43e83fa5cd0df595bab865935f9936024d7ee86`

```dockerfile
```

-	Layers:
	-	`sha256:75361727e8c92c17a26d131c6b7cd6d2ad73c9759b09570b34f666153cf1a66b`  
		Last Modified: Wed, 11 Nov 2026 19:53:15 GMT  
		Size: 9.1 MB (9070044 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d52f43a09b14a583dc87a7d2b862fd2b2a060f270ca5aaabb2fc719f7f2e0549`  
		Last Modified: Wed, 11 Nov 2026 19:53:14 GMT  
		Size: 28.6 KB (28602 bytes)  
		MIME: application/vnd.in-toto+json
