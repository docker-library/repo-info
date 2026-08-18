## `gradle:8-graal-jammy`

```console
$ docker pull gradle@sha256:da3ec0ac496d45c0fed2fbe097198871953c60f19fc400fc41fbfb00c8fdf682
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:9d1b4a091840fcddd55ed33261026aa1ccd9181932701794dbcafa0c0c003c87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.6 MB (584585897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da3973c2cd518deca7d7d22dbe0d2f59712ded9cc11771b128b6149437833f0`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:15:39 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 01:15:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 01:15:39 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 01:15:39 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 01:15:39 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 01:16:06 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 01:16:06 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 18 Aug 2026 01:16:06 GMT
ENV JAVA_VERSION=21.0.2
# Tue, 18 Aug 2026 01:16:15 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 18 Aug 2026 01:16:15 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 18 Aug 2026 01:16:15 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 18 Aug 2026 01:16:17 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 01:16:17 GMT
USER gradle
# Tue, 18 Aug 2026 01:16:18 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 01:16:18 GMT
USER root
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10d1c799ce4429d0e09b74d1b87efba9b5059640d443fafb62a9cd2c582a049`  
		Last Modified: Tue, 18 Aug 2026 01:16:49 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192ed627fe716c466b05b9857e358d3b4fff1df3c3772afa231b8dd30edb36b0`  
		Last Modified: Tue, 18 Aug 2026 01:16:57 GMT  
		Size: 126.7 MB (126734361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922d9dc9a72fad6c10fb96621a7b50942639108b96099410a9ee7877c3cfcab9`  
		Last Modified: Tue, 18 Aug 2026 01:17:02 GMT  
		Size: 290.0 MB (289986816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c633ff7bec6f333fffa3aa0c4765b17050b5a42b3c7c8229f39c200cbdee8e02`  
		Last Modified: Tue, 18 Aug 2026 01:16:58 GMT  
		Size: 138.1 MB (138068534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9203c6a63db6c85a7f72b2d872657b8b234f2901fa4e8c3b915aab59c9b008`  
		Last Modified: Tue, 18 Aug 2026 01:16:51 GMT  
		Size: 54.9 KB (54899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:74f1cac86728d8b806a42979173ed84107442da304360399757eec202e6890cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9394865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d725e322be3e213dc8d0c03080ef472fd984ba573196f6e1563efdf1c9da1fa`

```dockerfile
```

-	Layers:
	-	`sha256:985c44e28ad004f1bfc4c0794adfe4674b8563470362755b7646b90fea1732f9`  
		Last Modified: Tue, 18 Aug 2026 01:16:50 GMT  
		Size: 9.4 MB (9365794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad99f4742cff6bc32954c8764d22c92002883ba8cfcd3b7ddb233e540f9c8822`  
		Last Modified: Tue, 18 Aug 2026 01:16:49 GMT  
		Size: 29.1 KB (29071 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:34c1b1893446e0f3078b395a8946d5d99c8654b25321aa653b73f26a94b7339d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **570.3 MB (570313990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e68c3076cb661550e036d4ad64ffff4d9dfa4b8a5e8b490cc66cb1910340c52`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:15:38 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 01:15:38 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 01:15:38 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 01:15:38 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 01:15:38 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 01:16:11 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 01:16:11 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 18 Aug 2026 01:16:11 GMT
ENV JAVA_VERSION=21.0.2
# Tue, 18 Aug 2026 01:16:21 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 18 Aug 2026 01:16:21 GMT
ENV GRADLE_VERSION=8.14.5
# Tue, 18 Aug 2026 01:16:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Tue, 18 Aug 2026 01:16:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 01:16:23 GMT
USER gradle
# Tue, 18 Aug 2026 01:16:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 01:16:24 GMT
USER root
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1190e7d80c6721fd4bd1eec592eb4a2aa5d89d1d3f5cab5d27b47cc962bca3`  
		Last Modified: Tue, 18 Aug 2026 01:16:55 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7699efaad5f57f378cd7812221398cf69c5d2b3e39a8d91ecee1d9ec03f2889`  
		Last Modified: Tue, 18 Aug 2026 01:17:01 GMT  
		Size: 122.9 MB (122894854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe0edf2b579a793f87f1ffd42aebde3637030c6f3a7ebe14026c0c863747bfc6`  
		Last Modified: Tue, 18 Aug 2026 01:17:04 GMT  
		Size: 281.7 MB (281666284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506689794a7fdb52d1e44d4cd16a6c6f7ff746f436856735a5a1eb177f1141f4`  
		Last Modified: Tue, 18 Aug 2026 01:17:02 GMT  
		Size: 138.1 MB (138068533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc87eec5c694fec7700b1fa7f2a3662f7a23f0836b3bb19be26ac4abf38ac931`  
		Last Modified: Tue, 18 Aug 2026 01:16:56 GMT  
		Size: 59.5 KB (59520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:40f8270a73ede92193dd4e5306ebd13d5452b5c9d120a7b0fcf0c3c1e887308c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9363908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:405345b3cb2da435f25620c32ba52f4ddfeb20f52e91814189dd04a8727b222e`

```dockerfile
```

-	Layers:
	-	`sha256:d5a72097775579f311a43f0397c8aa3410427246adfb8591c8727a79d4681499`  
		Last Modified: Tue, 18 Aug 2026 01:16:56 GMT  
		Size: 9.3 MB (9334614 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3943265f9df6421c05a204b8db95bb35d335df01c66e57693dbefdb53f2a304c`  
		Last Modified: Tue, 18 Aug 2026 01:16:55 GMT  
		Size: 29.3 KB (29294 bytes)  
		MIME: application/vnd.in-toto+json
