## `gradle:9-jdk25-graal-noble`

```console
$ docker pull gradle@sha256:a8886ae015693b8a56a4ad4b8c1a4fc77acf2ea640437557fc93e9ea05502c03
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk25-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:bbcdfa4f2116d2a0c233873239912ceb5b75b5e29e8260fd9a3c94e043b45696
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.1 MB (664129965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da237f7628c2690cfc99bc0b51b3fcc920b9332b567f3832ed60bc1abf5ed69`
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
# Wed, 11 Nov 2026 20:11:07 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 20:11:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 20:11:07 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 20:11:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 20:11:07 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 20:12:18 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 20:12:18 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 20:12:18 GMT
ENV JAVA_VERSION=25.0.5.0.3+6
# Wed, 11 Nov 2026 20:12:33 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=127bba6fbec0e106325d7c5b9124a16bfdf6a2c787624273c145a08e65f6889d     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=ac01657375e09552e26344e1b90068ad21161cc50cd4dc6d578e2dbf2894e843     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=25.0.5.0.3+1-25.0.5.0.3+6     && LIBERICA_NIK_VERSION=25.0.5.0.3+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 20:12:33 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 20:12:33 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 20:12:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 20:12:35 GMT
USER gradle
# Wed, 11 Nov 2026 20:12:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 20:12:36 GMT
USER root
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44ddbf9c5e4c361f82cdc35882f06f8c2d69ec3f55a64caef04975a52d81ad1a`  
		Last Modified: Wed, 11 Nov 2026 20:13:16 GMT  
		Size: 1.3 KB (1288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2aa2792446c364542b188920b2685f2f00366b5d06497aa25c21a74c94969da`  
		Last Modified: Wed, 11 Nov 2026 20:13:24 GMT  
		Size: 150.8 MB (150836343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758f98f6974727494544accba4e5b33ba4cc32ca608c78015f406a9e30a49472`  
		Last Modified: Wed, 11 Nov 2026 20:13:27 GMT  
		Size: 348.7 MB (348678171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e880908e82ca69e451f1eb09b464a341c4433a6b7811c1777a46005e9e8b335`  
		Last Modified: Wed, 11 Nov 2026 20:13:24 GMT  
		Size: 134.8 MB (134820904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10742a799d3607a02bc84aa98d78fbd439bf214f97ab9e9ed166d7eb1daa67a9`  
		Last Modified: Wed, 11 Nov 2026 20:13:18 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:db1a085171b0e05c47c8569e96447206ac8847ac5cae7e70d9f91e53ef35d11b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9076932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19cb4f5301ed6fb2fc0e4b3115e9522090aa6ebc2ec263997ef2c5b424866dca`

```dockerfile
```

-	Layers:
	-	`sha256:798f82a543fa98c6864e6d27e88582352d9c6db59f9766abab74aae9c96366ae`  
		Last Modified: Wed, 11 Nov 2026 20:13:17 GMT  
		Size: 9.0 MB (9045941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e84debf429c6294a7f3537b39933e67bde6609e0f1bffbef1879841aed89907`  
		Last Modified: Wed, 11 Nov 2026 20:13:17 GMT  
		Size: 31.0 KB (30991 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:b9a803912f0f923ad014cd2c1f7594667a0b8dfb6a277f4a0f5a6f73786879b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **653.3 MB (653303031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1729791231598621654197627f999157e66b1491421576f6588417e0f71c688`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:22:53 GMT
CMD ["gradle"]
# Wed, 11 Nov 2026 23:22:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 11 Nov 2026 23:22:53 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 11 Nov 2026 23:22:53 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 11 Nov 2026 23:22:53 GMT
WORKDIR /home/gradle
# Wed, 11 Nov 2026 23:24:13 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 11 Nov 2026 23:24:13 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 11 Nov 2026 23:24:13 GMT
ENV JAVA_VERSION=25.0.5.0.3+6
# Wed, 11 Nov 2026 23:24:26 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading Liberica NIK"     && LIBERICA_NIK_AMD64_DOWNLOAD_SHA256=127bba6fbec0e106325d7c5b9124a16bfdf6a2c787624273c145a08e65f6889d     && LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256=ac01657375e09552e26344e1b90068ad21161cc50cd4dc6d578e2dbf2894e843     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_ARCHITECTURE=amd64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_ARCHITECTURE=aarch64; fi     && LIBERICA_NIK_RELEASE_TAG=25.0.5.0.3+1-25.0.5.0.3+6     && LIBERICA_NIK_VERSION=25.0.5.0.3+1     && LIBERICA_NIK_PKG=https://github.com/bell-sw/LibericaNIK/releases/download/${LIBERICA_NIK_RELEASE_TAG}/bellsoft-liberica-vm-openjdk${JAVA_VERSION}-${LIBERICA_NIK_VERSION}-linux-${LIBERICA_NIK_ARCHITECTURE}.tar.gz     && wget --no-verbose --output-document=liberica-nik.tar.gz "${LIBERICA_NIK_PKG}"         && echo "Checking Liberica NIK download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then LIBERICA_NIK_DOWNLOAD_SHA256="${LIBERICA_NIK_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${LIBERICA_NIK_DOWNLOAD_SHA256} *liberica-nik.tar.gz" | sha256sum --check -         && echo "Installing Liberica NIK"     && mkdir "${JAVA_HOME}"     && tar --extract --gunzip --file liberica-nik.tar.gz --strip-components=1 --directory "${JAVA_HOME}"     && rm liberica-nik.tar.gz     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing Liberica NIK installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 11 Nov 2026 23:24:26 GMT
ENV GRADLE_VERSION=9.9.1
# Wed, 11 Nov 2026 23:24:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
# Wed, 11 Nov 2026 23:24:28 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 11 Nov 2026 23:24:28 GMT
USER gradle
# Wed, 11 Nov 2026 23:24:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=d8a18a7a841dd5df825d35a685fad6f2d7f12ac0c280e57b67c27b4a520ba228
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 11 Nov 2026 23:24:29 GMT
USER root
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0648a83db2fde3fd52aa899b991664d02b11a61b72fd249139ce695bbb2158`  
		Last Modified: Wed, 11 Nov 2026 23:25:08 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea54ac575159769ecfc69da8f65bd92f2d9902d355df64920a50d7debc5bfa5e`  
		Last Modified: Wed, 11 Nov 2026 23:25:16 GMT  
		Size: 143.5 MB (143546295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5367b0714006e48e8dd1ce368b2bbd09780e148d8db9c315c2b1670dd516bf59`  
		Last Modified: Wed, 11 Nov 2026 23:25:21 GMT  
		Size: 345.9 MB (345939932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b9b638ebfd8422843a7169341691bbdba21a6059f9ff36707ed5a099965ff8`  
		Last Modified: Wed, 11 Nov 2026 23:25:16 GMT  
		Size: 134.8 MB (134820901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d43a45467c0abefb2e5f6da7564c3d9646f9bc9062c62a1df5dcb30655ae35a1`  
		Last Modified: Wed, 11 Nov 2026 23:25:09 GMT  
		Size: 29.3 KB (29329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:3330cdc067af8d62757b4d4b7e750c1efdb34388a31a269ff8a906e8fe0f3478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9097959 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4951fcab2c76f6b118133e1dfadaacd8bbe619dd1e238cdee1a33345d8ff0093`

```dockerfile
```

-	Layers:
	-	`sha256:a23913634239c7dffcb8c51dee7c5eb98b79fe4d49fc0a7dcaed9dc4414508f7`  
		Last Modified: Wed, 11 Nov 2026 23:25:09 GMT  
		Size: 9.1 MB (9066707 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cc95a06b568114616f1586a683b1473520183ecb8ec2e5298a0f3e988928934`  
		Last Modified: Wed, 11 Nov 2026 23:25:08 GMT  
		Size: 31.3 KB (31252 bytes)  
		MIME: application/vnd.in-toto+json
