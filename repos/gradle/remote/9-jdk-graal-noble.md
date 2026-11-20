## `gradle:9-jdk-graal-noble`

```console
$ docker pull gradle@sha256:baf3d034ba9c3ae3fad28b002fa47d529d6dadf8c3406aa9821626ffbddfd483
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:eae49438ed3ee5bfedfc0dfae35af6dc9c9753aa93670e1a2764d361f66091f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **667.9 MB (667869467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ada3ced3e0f88de255cefcbd0c2326220c86f51f241e2ffda0aba717dec6cf`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:14 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:17:14 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:17:14 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:17:14 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:17:14 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:17:42 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:17:42 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:17:42 GMT
ENV JAVA_VERSION=25.0.5.0.3+6
# Fri, 20 Nov 2026 03:18:05 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=127bba6fbec0e106325d7c5b9124a16bfdf6a2c787624273c145a08e65f6889d     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=ac01657375e09552e26344e1b90068ad21161cc50cd4dc6d578e2dbf2894e843     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=25.0.5.0.3+1-25.0.5.0.3+6     && LIBERICA_NIK_VERSION=25.0.5.0.3+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:18:05 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 03:18:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 03:18:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:18:09 GMT
USER gradle
# Fri, 20 Nov 2026 03:18:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:18:09 GMT
USER root
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa58d2ec73034f094df8bc165352b9740946f5e1ec9c1066f5d6069f894c7ff`  
		Last Modified: Fri, 20 Nov 2026 03:18:47 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1d142bf33e2eaaca1a6864b8e0f88e6e992d6ef0c5f5d8a94ec9d91a715267`  
		Last Modified: Fri, 20 Nov 2026 03:18:55 GMT  
		Size: 154.6 MB (154550078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f9325ea11d531a48fa8b33ee75d17b23e4d58c1670403bb769b2e92f3b092b5`  
		Last Modified: Fri, 20 Nov 2026 03:18:58 GMT  
		Size: 348.7 MB (348678268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:507ea83d87f67772929e23f4a62c55bef38d381fba3bb7c8f43dc5a27b834b2d`  
		Last Modified: Fri, 20 Nov 2026 03:18:54 GMT  
		Size: 134.8 MB (134820898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe2a8e47cd39d5b7b8af38a9718a37f479c4d5cfaf0a40c999c84f200f0f965a`  
		Last Modified: Fri, 20 Nov 2026 03:18:48 GMT  
		Size: 25.6 KB (25604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:3a22cbf21fd9dc6fae8fd2984ff75e37c54cfa008f9170b7fb22dc419bce271d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9077549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7861304119cff1f20207e3769f108132b99c8d1a0693b6c39fd01cbfeb1cf73c`

```dockerfile
```

-	Layers:
	-	`sha256:1ab14cf237230aa0de6d451aa9fb939892687b53b510cc20bb9c13f67af98de1`  
		Last Modified: Fri, 20 Nov 2026 03:18:48 GMT  
		Size: 9.0 MB (9046557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b5d625ba8d0348e4507a759ac72bea04317acdfeded5916584c66e099c98066`  
		Last Modified: Fri, 20 Nov 2026 03:18:47 GMT  
		Size: 31.0 KB (30992 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:80d5139f29f6c649c4ecd6ec05fd41dfd4a6bb5b974d8d285e56408aca2dac4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **659.2 MB (659170283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0ad5cb1d6d1cf969e8ad4a44235d6a24fcebd3d99d6229dda4f4fbea15def26`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:43 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:17:43 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:17:43 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:17:43 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:17:43 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:18:29 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:18:29 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:18:29 GMT
ENV JAVA_VERSION=25.0.5.0.3+6
# Fri, 20 Nov 2026 03:18:52 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=127bba6fbec0e106325d7c5b9124a16bfdf6a2c787624273c145a08e65f6889d     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=ac01657375e09552e26344e1b90068ad21161cc50cd4dc6d578e2dbf2894e843     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=25.0.5.0.3+1-25.0.5.0.3+6     && LIBERICA_NIK_VERSION=25.0.5.0.3+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:18:52 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 03:18:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 03:18:54 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:18:54 GMT
USER gradle
# Fri, 20 Nov 2026 03:18:55 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:18:55 GMT
USER root
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e0f453dc5668ee4b9406ab2938a6f165806c47586e274b650b00ed8b1a8d4ef`  
		Last Modified: Fri, 20 Nov 2026 03:19:34 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a51a03b1b8dc558f3d22e3e6d5bb8ae3db83473af55e4fd568e40aa9394d3a1`  
		Last Modified: Fri, 20 Nov 2026 03:19:41 GMT  
		Size: 149.4 MB (149413453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b9ddde29a61dd6f058a72497897dc6b6baafdbbf2a5e5741ebfea10a705120`  
		Last Modified: Fri, 20 Nov 2026 03:19:44 GMT  
		Size: 345.9 MB (345939958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bcd810c7242894565c35b099f38732902290d39a0f87065c52f09a6fbbb1c9`  
		Last Modified: Fri, 20 Nov 2026 03:19:41 GMT  
		Size: 134.8 MB (134820900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091bc6209a4f75bff77c5e50a3e38e63f8a633c4279ea5a4511cdc83a678c74b`  
		Last Modified: Fri, 20 Nov 2026 03:19:35 GMT  
		Size: 29.3 KB (29334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:29505a6897c2ec69d3551065e65250db8b7004cb2109d8680860e7acb07f340b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9097971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:548210148b24c51c1b50cd6fe14f01fbd2be2fbd818242f3e4b8c4909f5f55cf`

```dockerfile
```

-	Layers:
	-	`sha256:2b4920177b55a0cc4dff63fdddbcee84492d0a6c213bac94f2965f39177d3b4a`  
		Last Modified: Fri, 20 Nov 2026 03:19:34 GMT  
		Size: 9.1 MB (9066719 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d901b557c34671f0db4b4b2801a7c96ca7b542030737d79a5ec686d2d696c019`  
		Last Modified: Fri, 20 Nov 2026 03:19:34 GMT  
		Size: 31.3 KB (31252 bytes)  
		MIME: application/vnd.in-toto+json
