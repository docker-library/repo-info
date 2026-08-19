## `gradle:9-jdk-graal-jammy`

```console
$ docker pull gradle@sha256:ff46440872fcdc134867f0f26797d922782b5d585421b6f292245fe977c67189
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:0bc00f6db1e78df140898a342572a32b0ac644a285b9a58ed21d4eae56e2b39e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.8 MB (597824927 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:588464d20960ed7b6205dca3548857087cd6d2bcd82bd7598e965d1d7a0266e7`
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
# Wed, 19 Aug 2026 17:40:04 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 17:40:04 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 17:40:04 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 17:40:04 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 17:40:04 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 17:40:28 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 19 Aug 2026 17:40:28 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 19 Aug 2026 17:40:28 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 19 Aug 2026 17:40:38 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 19 Aug 2026 17:40:38 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 17:40:38 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:40:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:40:40 GMT
USER gradle
# Wed, 19 Aug 2026 17:40:41 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:40:41 GMT
USER root
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c83451aa601575b8ea56af0a28bd8d8dcd3799c8b110e63467379ece66da70f8`  
		Last Modified: Wed, 19 Aug 2026 17:41:13 GMT  
		Size: 4.3 KB (4310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3bc2a613ea8f8aa981227c0d06ca1d9063d36dce8a9ed697df513f2b32d386`  
		Last Modified: Wed, 19 Aug 2026 17:41:20 GMT  
		Size: 126.7 MB (126717982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabc22a9737c559e8ad2863e1f9a44aee6dc75a10b2bc391b024b732fbea08a5`  
		Last Modified: Wed, 19 Aug 2026 17:41:23 GMT  
		Size: 290.0 MB (289986028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c53ced7b8e0ba2a622510879aeac4bc61258825b66b0c1134033b15d20903e`  
		Last Modified: Wed, 19 Aug 2026 17:41:20 GMT  
		Size: 151.4 MB (151354018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441a77ca8435c55f92c4133b87b7c08f2ca2fccb00a385427b9587fc1aea2b58`  
		Last Modified: Wed, 19 Aug 2026 17:41:15 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:dc13e87d45ba66bd5e72d05b7bb48d5cf912e250345475db6f4332931186a2c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9431408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29fa5e4a5ab0c06c0c83a08c924b21da724f22a1f64ee1ab6eba84c4615def4d`

```dockerfile
```

-	Layers:
	-	`sha256:10529081a3f08878a0d1cb9f6fd02522325c34d664fcbefc04192547efd80300`  
		Last Modified: Wed, 19 Aug 2026 17:41:14 GMT  
		Size: 9.4 MB (9401407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:faf0c4126b39b38b88f93a101be3aef9fc322470ada67f595c2afd8978d12535`  
		Last Modified: Wed, 19 Aug 2026 17:41:13 GMT  
		Size: 30.0 KB (30001 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:bb1bbe3cec8a2d978bc79eff90f288178e14c4ec5b59f3a49c282263dcba16af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.5 MB (583549426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45fe7bcfb0ad05b5879ab1e721cf5a2119fa25abbcd43b9c1757cbe8b0b6a213`
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
# Wed, 19 Aug 2026 17:40:21 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 17:40:21 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 17:40:21 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 17:40:21 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 17:40:21 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 17:40:46 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 19 Aug 2026 17:40:46 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 19 Aug 2026 17:40:46 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 19 Aug 2026 17:40:55 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 19 Aug 2026 17:40:55 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 17:40:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:40:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:40:57 GMT
USER gradle
# Wed, 19 Aug 2026 17:40:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:40:58 GMT
USER root
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fc8a56f9fa514fc7fbd668078de6678a1610a86a66fa1fe854537905d71d630`  
		Last Modified: Wed, 19 Aug 2026 17:41:30 GMT  
		Size: 4.3 KB (4316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae606668d95ff06a66afc065b273300be053b6b2fa4ac539e4534e9e59fe7d24`  
		Last Modified: Wed, 19 Aug 2026 17:41:36 GMT  
		Size: 122.9 MB (122875018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac532d3dbb6402048f683ff10965fff10c5ecc89f08706dd1521507d5612b5d`  
		Last Modified: Wed, 19 Aug 2026 17:41:40 GMT  
		Size: 281.7 MB (281666251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d9ab9ed0b98b99c721f1d499e0f637a731764a6b928e0352a72b141ca8403cd`  
		Last Modified: Wed, 19 Aug 2026 17:41:38 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59e09dc9f3f1bb459c85b81d217867dd162a8711db06d9670e51028b17f5ee2`  
		Last Modified: Wed, 19 Aug 2026 17:41:32 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:8d7d233447796629e84ce9fee68ad0b62e1f3685a412cee51de46d2ba742038b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9400524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bd01f3d34d00db231531bd4a3c85022882a946bd0ac87709baea6631f500581`

```dockerfile
```

-	Layers:
	-	`sha256:166c600b0b8b1ecb1b6dd1fdb29898f0a488b61db0d3fa8f2c6abb80ca45c0a6`  
		Last Modified: Wed, 19 Aug 2026 17:41:31 GMT  
		Size: 9.4 MB (9370263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:049ebb16ef4d35ba149503533482fa328f3a8c66fd230482fa43c5ee657adc7d`  
		Last Modified: Wed, 19 Aug 2026 17:41:30 GMT  
		Size: 30.3 KB (30261 bytes)  
		MIME: application/vnd.in-toto+json
