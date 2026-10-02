## `gradle:9-jdk17-graal-noble`

```console
$ docker pull gradle@sha256:ecdbcaf4cb5bc9be98d960ab0175c592e73843d5723243411b72ef630f53a1f6
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:2cc2605a028886a7b1d8cc5c3877c6cbe507baf85e7339805819fb3bfb3e4771
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **623.0 MB (623048691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e03ac8cf2e5673e6cfbd9d7324e566ea5cfe4a62193a38dea082008ce29156de`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:20:37 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:37 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:37 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:37 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:21:12 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:21:12 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:21:12 GMT
ENV JAVA_VERSION=17.0.9
# Fri, 02 Oct 2026 01:21:23 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:23 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:23 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:26 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:26 GMT
USER root
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0343bd8d089bec78f02c6a122e86ee918c8fb8e8fbb379dfdbca2986da0ca0`  
		Last Modified: Fri, 02 Oct 2026 01:22:00 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51e0b5a4add9d8b0140925f3ce649a3f8b52e5e4474b941a5276951f7731d36c`  
		Last Modified: Fri, 02 Oct 2026 01:22:08 GMT  
		Size: 150.7 MB (150668990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d71f377bb6100df0fb812be76450de2694d71e6c2142705a16e6b7d013b120`  
		Last Modified: Fri, 02 Oct 2026 01:22:11 GMT  
		Size: 291.1 MB (291064093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:449fac35d74e532e096a577b698088ef2e2f04ddc03b5f10b83bebb4674f248e`  
		Last Modified: Fri, 02 Oct 2026 01:22:08 GMT  
		Size: 151.5 MB (151524260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb8e4bbabbccf5e706e9828b4fbb6d0959ac09ee14fb39cf48062bdb946d05e0`  
		Last Modified: Fri, 02 Oct 2026 01:22:01 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:26fe81fd0c38a6e31a0f1f6f2c3e6c86ab7eb6a1e8406bebf50f9b0a18947907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9051585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d077ad56d66fb74ee6a5351e67f202ab3e8b52fca0cf25fb45af73a5bdf5c748`

```dockerfile
```

-	Layers:
	-	`sha256:dce7cf449f12b992e9fd44a4482d33aa9f29502c08c7bf6e2f39f8be168c5c16`  
		Last Modified: Fri, 02 Oct 2026 01:22:00 GMT  
		Size: 9.0 MB (9023789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a8b149030073234edc43d22a9303dffd1d6abf91366aece7041717809f0b1227`  
		Last Modified: Fri, 02 Oct 2026 01:22:00 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:9d7301692441f594b4066f1b571f46324f8483318bbdfce3f5b9056591e05ada
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **609.6 MB (609635416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7c4e12ed73c6ea2280579002d1669bef825d71b9dca684018e0ddbcf671fa8`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:20:55 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:55 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:55 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:55 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:21:27 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:21:27 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:21:27 GMT
ENV JAVA_VERSION=17.0.9
# Fri, 02 Oct 2026 01:21:36 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:36 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:39 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:40 GMT
USER root
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:199cdb78bfd0f2e944f601c872c1de24dc5095cc29b232563efca853dc0c1e1d`  
		Last Modified: Fri, 02 Oct 2026 01:22:13 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0be511aab1f6dbf8ea78d0cfefb926b4bd16dae39cf0bdbf7777e44bac36da76`  
		Last Modified: Fri, 02 Oct 2026 01:22:20 GMT  
		Size: 145.6 MB (145638468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623c61c0b153c91891a270c4399561148be43679f07b26345843bf442d4cc839`  
		Last Modified: Fri, 02 Oct 2026 01:22:23 GMT  
		Size: 283.5 MB (283501954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:172696b6c556c7628194c6d88c6ba5cb1f38b0da655a8487359ad1c83cd2fb87`  
		Last Modified: Fri, 02 Oct 2026 01:22:21 GMT  
		Size: 151.5 MB (151524257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b880fa996a10316fd1f9af294a7665ed2cc21348c05db6d38f729b2d771d5359`  
		Last Modified: Fri, 02 Oct 2026 01:22:14 GMT  
		Size: 29.3 KB (29332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:7d9386b09af247d478cd92f8f15196df0b918477b6164af80589164911574cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9047278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5307e03f292b65115693288cf6b07da0c4c4c635ff9e36b77933681f59641c2`

```dockerfile
```

-	Layers:
	-	`sha256:f3efa6449e14e5dcfb0fe57b21d6768f323602baf0ca0279956dca4cae4cb064`  
		Last Modified: Fri, 02 Oct 2026 01:22:13 GMT  
		Size: 9.0 MB (9019318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea44b424272c0c793ef3c66ead9c7399396ca189d00c349b7fcc552b260fe2d1`  
		Last Modified: Fri, 02 Oct 2026 01:22:13 GMT  
		Size: 28.0 KB (27960 bytes)  
		MIME: application/vnd.in-toto+json
