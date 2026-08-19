## `gradle:9-jdk25-graal-noble`

```console
$ docker pull gradle@sha256:491299caf0601acb654c13d46662b6f5ebf60e98838fe6dcb189669473568e68
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk25-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:815c1e5274a90689b84935c8d491df32586f914bb0f0e488393fdf9a97034905
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **676.1 MB (676148209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4521a2d3f600974d363260a1d0d811b0ebbae11f7b9bd0d19c54ddc536dbe6b`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:16:59 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 19:16:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 19:16:59 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 19:16:59 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 19:16:59 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 19:17:24 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 19:17:24 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 18 Aug 2026 19:17:24 GMT
ENV JAVA_VERSION=25.0.4
# Tue, 18 Aug 2026 19:17:35 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 18 Aug 2026 19:17:35 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 18 Aug 2026 19:17:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 18 Aug 2026 19:17:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 19:17:37 GMT
USER gradle
# Tue, 18 Aug 2026 19:17:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 19:17:38 GMT
USER root
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a50d4ef76ef0ee3e92939c801ab082f1e40a0a5a63dcd117789c7c2aabe0258`  
		Last Modified: Tue, 18 Aug 2026 19:18:17 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13ae200752ff7027285ef6835a67d5137c585b29d63bc72cf296daa289745acf`  
		Last Modified: Tue, 18 Aug 2026 19:18:29 GMT  
		Size: 148.2 MB (148228836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f09428eebe4ecc87ec9f1e728cd5ebfba4137680c5ad95656d97098bc45f08da`  
		Last Modified: Tue, 18 Aug 2026 19:18:35 GMT  
		Size: 347.9 MB (347911760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b79a47229d1260c6b0ae0e7c2f10cf8cb7a6c70bd2953e396070ad286a45db9`  
		Last Modified: Tue, 18 Aug 2026 19:18:30 GMT  
		Size: 150.2 MB (150227877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8056de40452a479f06b1b24224fc970471a443926a7a63d075dbfa1baac46fab`  
		Last Modified: Tue, 18 Aug 2026 19:18:18 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:155598e6e338a855f0304705f5eccbe3ff48e7554a80019416bbd2b647d926b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9147480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22fc74522cb1aa3295dd00fdb0f0ed3db1da5eeac71fb6d2d419b0a512f4c06`

```dockerfile
```

-	Layers:
	-	`sha256:5e79c7c827b784332536eeaca812d78e9d5574525df81029f296fc2119ac8478`  
		Last Modified: Tue, 18 Aug 2026 19:18:18 GMT  
		Size: 9.1 MB (9116901 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af38f3007a05f50a9fc721c118d3580d3224d04984371fc29fa539b3b627bece`  
		Last Modified: Tue, 18 Aug 2026 19:18:17 GMT  
		Size: 30.6 KB (30579 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk25-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:452b0c3f11350722d927a9f6439fe29d6709a5ee9f5b32d31645243c523bb8ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **644.9 MB (644948481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f861e78153f57a567753d520bb134e68f2dd790b823d371c04114d8c8e30099d`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 19:17:08 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 19:17:08 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 19:17:08 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 19:17:08 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 19:17:08 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 19:17:35 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 19:17:35 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 18 Aug 2026 19:17:35 GMT
ENV JAVA_VERSION=25.0.4
# Tue, 18 Aug 2026 19:17:45 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Tue, 18 Aug 2026 19:17:45 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 18 Aug 2026 19:17:45 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 18 Aug 2026 19:17:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 19:17:48 GMT
USER gradle
# Tue, 18 Aug 2026 19:17:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 19:17:48 GMT
USER root
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8bcea1dbf5debcef6da411fcf7c4b5abd1bdbe1fc1c6cdfd1ba10142a82a143`  
		Last Modified: Tue, 18 Aug 2026 19:18:23 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc0e53ca5ca523fbedbfed2e80bb8a3ede7191210fcf2e2ce32a7df4a7f6e68`  
		Last Modified: Tue, 18 Aug 2026 19:18:32 GMT  
		Size: 143.3 MB (143320168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5701fe39aba130275c4e23d412c0d741211af13b79e3411ce11d584f9e9565e`  
		Last Modified: Tue, 18 Aug 2026 19:18:36 GMT  
		Size: 322.5 MB (322482482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a4b0075e37d808f4d851bdba5f4b72f265504255e76531c7bc53f0a0651fd42`  
		Last Modified: Tue, 18 Aug 2026 19:18:32 GMT  
		Size: 150.2 MB (150227945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808b02f6bb45764502eea98b425da4c481eaf6fc021567eb45d5e64ec4aeda6`  
		Last Modified: Tue, 18 Aug 2026 19:18:25 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk25-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:9094784e72c1e8c0d0a8d9acb74339345d67c4e3d5d1d8af03bf2c1c6e6e6f53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9117165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a56b31d7865c1b386021f7c740e1b8e4dbf22c9c65ddee45035d88248217b9d8`

```dockerfile
```

-	Layers:
	-	`sha256:32964608e03bc1051ecf4b3c5db2c0eba1376b1b3c011dbaaf41d5b83f749ab2`  
		Last Modified: Tue, 18 Aug 2026 19:18:24 GMT  
		Size: 9.1 MB (9086326 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6836679892f1fb37540258e0a05140d85f38c4bfe6a18cde125597f453c965d`  
		Last Modified: Tue, 18 Aug 2026 19:18:24 GMT  
		Size: 30.8 KB (30839 bytes)  
		MIME: application/vnd.in-toto+json
