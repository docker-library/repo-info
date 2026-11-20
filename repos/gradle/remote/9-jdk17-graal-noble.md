## `gradle:9-jdk17-graal-noble`

```console
$ docker pull gradle@sha256:8ae1df57398a67463d2e6e18622b93145cdc73774e8f0f0eac88a026e72dda57
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:42fae76b1916a896aaf593698461828848e3e99da0a29c4e42d4d4c877323b3a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **621.6 MB (621649369 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:238f043f33a667d9eb54223f37af4db38486024799e2dea5d595a950ef021b48`
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
# Fri, 20 Nov 2026 03:17:24 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:17:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:17:24 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:17:24 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:17:24 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:17:53 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:17:53 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:17:53 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Fri, 20 Nov 2026 03:18:23 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:18:23 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 03:18:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 03:18:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:18:27 GMT
USER gradle
# Fri, 20 Nov 2026 03:18:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:18:28 GMT
USER root
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1fb22b251982edc8b05351ab165b64c49bf9aa07a8388cdb70118297f18020a`  
		Last Modified: Fri, 20 Nov 2026 03:19:01 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebf235fed3b843dc8b5f9bcf0525293e76082ecf7aae46ad5651fe1c2b5eddb`  
		Last Modified: Fri, 20 Nov 2026 03:19:09 GMT  
		Size: 154.6 MB (154551282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7445ada51e73c7a133d32eb9154573dc8bbd520a69d9985cc2bb2307665ef7b1`  
		Last Modified: Fri, 20 Nov 2026 03:19:12 GMT  
		Size: 302.5 MB (302456953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e78f1f088e528f5302974d079b54bc24db381fd17262c6c00021dbd75157a50`  
		Last Modified: Fri, 20 Nov 2026 03:19:08 GMT  
		Size: 134.8 MB (134820904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b53b30c66cd42c9072d82860605aabda1e249838ff753515aaf4ce49ede174c7`  
		Last Modified: Fri, 20 Nov 2026 03:19:02 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:ed5f876319d45309e5d90840fd995e0e56d15b0d31d946d2a7d4f5d1b624e4b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9093788 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2936608db766fb1f339f834c2a4dab99f5dbb45e1ac2007e5fe0713829c501a0`

```dockerfile
```

-	Layers:
	-	`sha256:7d5728d08d83bf7f430d22d08c52b99d6e36c5fb1438f624a9c3cea88aeceeaf`  
		Last Modified: Fri, 20 Nov 2026 03:19:01 GMT  
		Size: 9.1 MB (9065351 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5320c79cc2d43e086f603480b0fee7d51ae4b97702fefc7b1165ce2012e2ea8`  
		Last Modified: Fri, 20 Nov 2026 03:19:01 GMT  
		Size: 28.4 KB (28437 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:19743ba27f0d6d98a35e0dde43af73cd9d75816d7b2da0f40b9254ca05a280bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **610.2 MB (610215992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a762532cbfe6fce283de664fc98c51e56cae0a52ad8f486f80325d35e1b4212e`
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
# Fri, 20 Nov 2026 03:18:19 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:18:19 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:18:19 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:18:19 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:18:19 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:18:49 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:18:49 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:18:49 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Fri, 20 Nov 2026 03:19:02 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:19:02 GMT
ENV GRADLE_VERSION=9.9.1
# Fri, 20 Nov 2026 03:19:02 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Fri, 20 Nov 2026 03:19:05 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:19:05 GMT
USER gradle
# Fri, 20 Nov 2026 03:19:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:19:06 GMT
USER root
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e826e27fe57b3fedbcdf1051953ff406bfc7b664db63ed4661198ea118607da5`  
		Last Modified: Fri, 20 Nov 2026 03:19:39 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ddd8c599230dd810927f0b7cd168e8930cf41a807381ed9d86182bcbe8a2e0`  
		Last Modified: Fri, 20 Nov 2026 03:19:45 GMT  
		Size: 149.4 MB (149413832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0371e55f6e2efa705c97bff403a1ba5a11ee47eac8edf4890a9c29b01e9b8bb8`  
		Last Modified: Fri, 20 Nov 2026 03:19:48 GMT  
		Size: 297.0 MB (296985282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a3f8f846abdbda592c7f8b312c472a7baeb97e4b4e3be14edc9385c0c408d4`  
		Last Modified: Fri, 20 Nov 2026 03:19:46 GMT  
		Size: 134.8 MB (134820901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d93ae18b30250fd2b0fae5d7bbc96e6d8d0cc632dd6e043a48b3cc2cc01e9f`  
		Last Modified: Fri, 20 Nov 2026 03:19:40 GMT  
		Size: 29.3 KB (29341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:25dac0c12adb82aca2684fe6867cd5555f6c53940f090791a873752ae8094d1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9114012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a70cee908d32794f1734813207a94d349993c8295aa8f819964be887d6a82283`

```dockerfile
```

-	Layers:
	-	`sha256:3f3f9940ce886f73a6497cc166d1ba19150fc8ab9db6dfff76d9fa99e4573ff3`  
		Last Modified: Fri, 20 Nov 2026 03:19:39 GMT  
		Size: 9.1 MB (9085410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e9514ddf52e95c8147f5546660f9c4b7a15c59523f61311e36ec6ad95be41ee`  
		Last Modified: Fri, 20 Nov 2026 03:19:39 GMT  
		Size: 28.6 KB (28602 bytes)  
		MIME: application/vnd.in-toto+json
