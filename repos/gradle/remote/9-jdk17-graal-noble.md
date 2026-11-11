## `gradle:9-jdk17-graal-noble`

```console
$ docker pull gradle@sha256:74679fa9198395dac22b288a50048675da5e82a8dcc6a0ef0c616ea597599d15
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:b017110a53dc1d90431034be66a2a27d87f0c9fa760f8940eaac6ca238156f97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **617.9 MB (617909508 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90bb27a78964740e0b9c136a0d47b8de446454cdaee97f43110d4801f7e052be`
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
# Wed, 11 Nov 2026 20:13:00 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:13:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:13:00 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 20:13:00 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:13:00 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:13:30 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 20:13:30 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 20:13:30 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Wed, 11 Nov 2026 20:13:42 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 20:13:42 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 20:13:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 20:13:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:13:44 GMT
USER gradle
# Wed, 11 Nov 2026 20:13:45 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:13:45 GMT
USER root
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee8dd76e36377b174c5154a4a04238a3d21c9e0ef7f7261fba990e07a90a95af`  
		Last Modified: Wed, 11 Nov 2026 20:14:19 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00ad888224b1f61fab274debee49d677c17404bdcdf9c67119983de6a8a88b94`  
		Last Modified: Wed, 11 Nov 2026 20:14:26 GMT  
		Size: 150.8 MB (150837043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c215c7be4bac9eef82005c1224e5789177751a86be3a9e8c6627ac95035b68e`  
		Last Modified: Wed, 11 Nov 2026 20:14:29 GMT  
		Size: 302.5 MB (302457020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bd5c43723869eb4e7e2c909e5321c5a06861a470be8ddac234cb3dfe59ebe9`  
		Last Modified: Wed, 11 Nov 2026 20:14:26 GMT  
		Size: 134.8 MB (134820902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a81912a3c9f97119b3becd535ba18c55d35d29c9083a60754953d508e01c54`  
		Last Modified: Wed, 11 Nov 2026 20:14:21 GMT  
		Size: 25.6 KB (25613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:81f3cd1c61d27c9f9faaa8d3465f7020d4803e096d3aae4d6e33b7f1df115893
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9093173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d82b5a7f39924c4c067cd3fb1e19816e05a90765a841766511f2e8e160df20c2`

```dockerfile
```

-	Layers:
	-	`sha256:7a47c9cdca7058e2f389f15cd8caf79f12e1b633d5004846100e4f1a1a9dc7a6`  
		Last Modified: Wed, 11 Nov 2026 20:14:20 GMT  
		Size: 9.1 MB (9064735 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b646e295c557888b44a175706a3e5611c0d873742e9b8c9f9dfc94533320d306`  
		Last Modified: Wed, 11 Nov 2026 20:14:19 GMT  
		Size: 28.4 KB (28438 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:af701f18e1a2275373497f60aa4225148fdb228e1cddbcd4bd6c8fa6d6e3e71f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **606.7 MB (606679421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8974ed52f1c3a7272cbd255116001e1f078442b584ee7ab4520ca286be6a3008`
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
# Wed, 11 Nov 2026 19:53:13 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 19:53:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 19:53:13 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 19:53:13 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 19:53:13 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 19:53:42 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 19:53:42 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 19:53:42 GMT
ENV JAVA_VERSION=17.0.21.0.3+6
# Wed, 11 Nov 2026 19:53:59 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=0e6b739f30701397534bd75119d2ede5ffad0dc7b26d48d6c28e7aa88f8cde30     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=fd0b2796c7cfba8f1425e4c77d5a2043e0504b4e59b87a0d8a6eddf440aeea3c     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=23.0.14+1-17.0.21.0.3+6     && LIBERICA_NIK_VERSION=23.0.14+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 19:53:59 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 19:53:59 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 19:54:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 19:54:02 GMT
USER gradle
# Wed, 11 Nov 2026 19:54:02 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 19:54:02 GMT
USER root
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2993b31ba5d1090b2d053afd14ab7aff728cc077fdb46f595345241f62ceb6`  
		Last Modified: Wed, 11 Nov 2026 19:54:35 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a4f14c459d327cf30e2aa5ad2799903e40ba9286433de0ef8e0abc0ffff4cdd`  
		Last Modified: Wed, 11 Nov 2026 19:54:42 GMT  
		Size: 145.9 MB (145902666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d74123521c75e814cd68b3012da76090a1a30d75db0e25bfff50996499bc00`  
		Last Modified: Wed, 11 Nov 2026 19:54:44 GMT  
		Size: 297.0 MB (296985079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65db5e2a3d6b9f6a0a807e2b433bbb3acd1bfc76cbd4ac129b333d442d510170`  
		Last Modified: Wed, 11 Nov 2026 19:54:42 GMT  
		Size: 134.8 MB (134820901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb076f1812ddf2d3fe6b09be7ba399b7d64737409fc909a6d72e86a12801b3e0`  
		Last Modified: Wed, 11 Nov 2026 19:54:36 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:2819f74e4b868a321a2acfe64b20d4f88d397222f9099f41546c17199c46e3ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9113396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc3e5f4b22c1e61f142f9f3f1dc7dc846a56c1f5b86e9ad4190096cfb422330b`

```dockerfile
```

-	Layers:
	-	`sha256:f53fb421c6728d253eb79368d0d7eb932e718ab9f2a2bb97a5edb2d11ee7ef74`  
		Last Modified: Wed, 11 Nov 2026 19:54:36 GMT  
		Size: 9.1 MB (9084794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a44a9b5c1172b7a0b33594416c203c1aa50dbd1053c9073c8f754761bac1317d`  
		Last Modified: Wed, 11 Nov 2026 19:54:35 GMT  
		Size: 28.6 KB (28602 bytes)  
		MIME: application/vnd.in-toto+json
