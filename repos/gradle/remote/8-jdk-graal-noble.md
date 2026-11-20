## `gradle:8-jdk-graal-noble`

```console
$ docker pull gradle@sha256:1994eaeb11f657d1fb46db50fc02e267d63be4ec6d2a1f2f27b114ed1186a919
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-jdk-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:1b0318395a655e6c9d2e7f08d3eb11db0cdd6b1faf33c83afd28e24f0e6eac9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **641.6 MB (641604211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fb477f74e520d47937a9607384241a30aadd728404e946eca8ae3948b7691c6`
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
# Fri, 20 Nov 2026 03:17:35 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:17:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:17:35 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:17:35 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:17:35 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:18:02 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:18:02 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:18:02 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Fri, 20 Nov 2026 03:18:16 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:18:16 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 03:18:16 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 03:18:20 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:18:20 GMT
USER gradle
# Fri, 20 Nov 2026 03:18:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:18:21 GMT
USER root
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efdf8506282aa23265b4e73f0bca91c4d71c7785313470b43332fd108455d777`  
		Last Modified: Fri, 20 Nov 2026 03:18:52 GMT  
		Size: 1.3 KB (1289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d4bd0479e5b8d57a7bec7472a2ff8e13337201d2b671774200d00e97e3fe71`  
		Last Modified: Fri, 20 Nov 2026 03:18:59 GMT  
		Size: 154.6 MB (154550600 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc469114d462e31e3a07c5e5701b3a9ce21af645f47da478d1b72aec801dc355`  
		Last Modified: Fri, 20 Nov 2026 03:19:02 GMT  
		Size: 317.8 MB (317772170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a9db6f6b5a1c7fcb6ef73d026b1eb555f66f8b65bc59bcde38b921c0a720c32`  
		Last Modified: Fri, 20 Nov 2026 03:18:59 GMT  
		Size: 139.4 MB (139431919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4156e28b0aff8dd53632fef0d577eb06f54c5d62edd5a454ff4c24b24575921b`  
		Last Modified: Fri, 20 Nov 2026 03:18:53 GMT  
		Size: 54.9 KB (54904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:88930ae0f74cd0c8f1409dee5cec06418f12be7215c66a60f965c28aa778baad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9052484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ca6d66a3efdc37c9e37418135dc2d181a6406dbb7e172e5962554866e2f660b`

```dockerfile
```

-	Layers:
	-	`sha256:ec3fdea14863afeef4b699ee4a08e9e28ef63fb13cd9172af32ffbd2efe5ceef`  
		Last Modified: Fri, 20 Nov 2026 03:18:53 GMT  
		Size: 9.0 MB (9019620 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4bbae84536dd78c8c66d225e9f5fc8a905e796b0b6b863e3eb9cf5fdcba8e9be`  
		Last Modified: Fri, 20 Nov 2026 03:18:52 GMT  
		Size: 32.9 KB (32864 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-jdk-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:67969bb88a54a154403ae99a1bb1d565e0ac1a14b89fa842efd77cabb66fbb35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **629.9 MB (629877123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3f9b4118880c7fe351dabaaf6a55ad8acf49a3cbcab438ddaa5a69937604a21`
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
# Fri, 20 Nov 2026 03:18:21 GMT
CMD ["gradle"]
# Fri, 20 Nov 2026 03:18:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 20 Nov 2026 03:18:21 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 20 Nov 2026 03:18:21 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 20 Nov 2026 03:18:21 GMT
WORKDIR /home/gradle
# Fri, 20 Nov 2026 03:18:51 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 20 Nov 2026 03:18:51 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 20 Nov 2026 03:18:51 GMT
ENV JAVA_VERSION=21.0.13.0.3+6
# Fri, 20 Nov 2026 03:19:03 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=94e0256d16a97268a548cd427a803f9c5b2ef2134c2f8521826532153ba70df0     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=00cc8ae405e44ee63de0827c7a4d49fd865db324cb75554fa291c459b4621af1     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.1.13+1-21.0.13.0.3+6     && LIBERICA_NIK_VERSION=23.1.13+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 20 Nov 2026 03:19:03 GMT
ENV GRADLE_VERSION=8.14.7
# Fri, 20 Nov 2026 03:19:03 GMT
ARG GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
# Fri, 20 Nov 2026 03:19:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 20 Nov 2026 03:19:07 GMT
USER gradle
# Fri, 20 Nov 2026 03:19:07 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=903bfc4bc7622323124054c10f509246212a1902948bdaf26c379cca8735e856
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 20 Nov 2026 03:19:07 GMT
USER root
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c2e71dd8590f1a49054c7d9ad3e301e0989d31eb5c78b49bdc8c501eef2815`  
		Last Modified: Fri, 20 Nov 2026 03:19:41 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae473da7ec302551b98a27d1ab0d25f0c01d94cf57841173e17d88d568782da`  
		Last Modified: Fri, 20 Nov 2026 03:19:48 GMT  
		Size: 149.4 MB (149413920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672017860732719c48e8a4f5107d59d231e9a4e9bc1ca73189039461173f0fe2`  
		Last Modified: Fri, 20 Nov 2026 03:19:51 GMT  
		Size: 312.0 MB (312005116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cdce937602c911ebebc0f8ac233ce2d7407bd355895531a4f4bce1a29398aad`  
		Last Modified: Fri, 20 Nov 2026 03:19:48 GMT  
		Size: 139.4 MB (139431920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc2bddddb220cadb30d7ac6f50331c2855c639c20f2018dbe57291d8131b870`  
		Last Modified: Fri, 20 Nov 2026 03:19:42 GMT  
		Size: 59.5 KB (59530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-jdk-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:caef63cd9549e385be36dddacdf46cb5a4a0ed266fbbe6d48645d74ffdde58ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9073043 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47b8eb12a8cc91b44bc33f0329bde7b869264393bc1507242d20dcba275379ef`

```dockerfile
```

-	Layers:
	-	`sha256:3fcbee8286c5113dfa409be5c524ab3beb8a0d7f81bfc77d0efd3d34e58b0130`  
		Last Modified: Fri, 20 Nov 2026 03:19:42 GMT  
		Size: 9.0 MB (9039847 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:59ab5a2734f2c5873716d2214abf1ea092ec9792665c81b99dd442f95e1be4a2`  
		Last Modified: Fri, 20 Nov 2026 03:19:41 GMT  
		Size: 33.2 KB (33196 bytes)  
		MIME: application/vnd.in-toto+json
