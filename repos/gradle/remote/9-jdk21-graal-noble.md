## `gradle:9-jdk21-graal-noble`

```console
$ docker pull gradle@sha256:ed78d292012b71397e3ae7491cd3161386255f3ad45a341f44b4d7070b74ce5a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:de82f7f05b9396a7bf34658cae4ce40a6a3464861e63d8cfe9a64813f59b2799
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **611.0 MB (611025168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30226640b12d4c06782aef20b125c0daeebcce6db5345d390090d088cfc6f09c`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:29:27 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:29:27 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:29:27 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:29:27 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:29:27 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:30:01 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:30:01 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 04 Aug 2026 01:30:01 GMT
ENV JAVA_VERSION=21.0.2
# Tue, 04 Aug 2026 01:30:10 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 04 Aug 2026 01:30:10 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 01:30:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 01:30:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:30:12 GMT
USER gradle
# Tue, 04 Aug 2026 01:30:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:30:13 GMT
USER root
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab67479572bb9027802199eb6dd17ca2a8c886b1b1ebd250a5ad3f8e9bfae6f3`  
		Last Modified: Tue, 04 Aug 2026 01:30:48 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125800e9200d233a0d5509558b8c860172db65075517344540b91dd9ed6a015a`  
		Last Modified: Tue, 04 Aug 2026 01:30:55 GMT  
		Size: 150.7 MB (150665063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4408a7fb24a976b054fdf31195eed21b0ba617c153dbd55fb342e6c4bf996e18`  
		Last Modified: Tue, 04 Aug 2026 01:30:57 GMT  
		Size: 290.0 MB (289986058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c98193e52dc81efa74d1fb92ed930e9b2ecea3754cf40eada6fab1450795f13a`  
		Last Modified: Tue, 04 Aug 2026 01:30:54 GMT  
		Size: 140.6 MB (140596005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998d3267ce51172a3e0e7fd439074447d01ce75f0ab10b5866dec19fd501c573`  
		Last Modified: Tue, 04 Aug 2026 01:30:49 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:7b6ff3b676e010b1a40ed743f19959a21759200b25d7a65edf62cfef363526a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9023422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:736588282ffef74e7311b82b57a6fe1b5ba74b8eccd8d0db4bfd52f919bd4dd9`

```dockerfile
```

-	Layers:
	-	`sha256:fb1a9f67342c85effbad1099369b759a82d2f656119bcd1b8ac3cc1d812fe9ac`  
		Last Modified: Tue, 04 Aug 2026 01:30:49 GMT  
		Size: 9.0 MB (8995731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3aed7d8a2b7638adefe8810b344af6aadfaa966693375747070d6ca28184dc4c`  
		Last Modified: Tue, 04 Aug 2026 01:30:48 GMT  
		Size: 27.7 KB (27691 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c5e9d5f543692e97729f49961c539f999d7a3eb804495b63f64e66da35121f49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.5 MB (594547904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37a77ad7267c97135f4dc95d4863c512a3e5b8d87dc0e12ebf0ee640fc3f8e5b`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:29:40 GMT
CMD ["gradle"]
# Tue, 04 Aug 2026 01:29:40 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 04 Aug 2026 01:29:40 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 04 Aug 2026 01:29:40 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 04 Aug 2026 01:29:40 GMT
WORKDIR /home/gradle
# Tue, 04 Aug 2026 01:30:12 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 04 Aug 2026 01:30:12 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 04 Aug 2026 01:30:12 GMT
ENV JAVA_VERSION=21.0.2
# Tue, 04 Aug 2026 01:30:20 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 04 Aug 2026 01:30:20 GMT
ENV GRADLE_VERSION=9.6.1
# Tue, 04 Aug 2026 01:30:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Tue, 04 Aug 2026 01:30:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 04 Aug 2026 01:30:23 GMT
USER gradle
# Tue, 04 Aug 2026 01:30:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 04 Aug 2026 01:30:23 GMT
USER root
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6698a5b8d1dda264247ee6fd72a264e31ea930f66756eabe52fa5f678f5118c8`  
		Last Modified: Tue, 04 Aug 2026 01:30:56 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417b3f585edc8c52df03a5a8f9d29076200e9ee004b62076dc570668ad6aa722`  
		Last Modified: Tue, 04 Aug 2026 01:31:02 GMT  
		Size: 143.4 MB (143368201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387f32627b3b032e61237d878c36463264845f1ff07ed98bbb19cd9c4bccd1f2`  
		Last Modified: Tue, 04 Aug 2026 01:31:04 GMT  
		Size: 281.7 MB (281666210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3d4a290b2299423b860dd3ea9cb98ed9c213f6b02b38e6672f226dbdaacf84`  
		Last Modified: Tue, 04 Aug 2026 01:31:03 GMT  
		Size: 140.6 MB (140596021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d418adb4ec52428d9714c6507e985cdabee455b6374afb938623e683d7efbcab`  
		Last Modified: Tue, 04 Aug 2026 01:30:57 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:e6da0ca12d30960a4579c618895ed83a747d961be204609a3e5b309aa797c567
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9019120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:67a1bd0a815e020506c13d2287cf7cc478b2de7c2c41963c491a00eb18cb9cb0`

```dockerfile
```

-	Layers:
	-	`sha256:d3fac41a32e07b508d8ef5cf73827327b3db28b81c34db93890ad9ca5ca7d60b`  
		Last Modified: Tue, 04 Aug 2026 01:30:56 GMT  
		Size: 9.0 MB (8991264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3458528170f144710b709ce52c49424b659bb787b84a5573d9a70eb8823424b`  
		Last Modified: Tue, 04 Aug 2026 01:30:56 GMT  
		Size: 27.9 KB (27856 bytes)  
		MIME: application/vnd.in-toto+json
