## `gradle:9-jdk17-graal-jammy`

```console
$ docker pull gradle@sha256:d986805aa1cfd22d4448541754533d14e5227c8be354ba119aa791090e3aad59
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk17-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:104391af8bf9813cd16f28b4d00bbb9b8b01e770433a6bf62d8c12e82a4d615d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.8 MB (597793667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9865249090a8dc54fa89e4de42635e2e5e38fac29e5838b055a354aed889de7b`
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
# Tue, 18 Aug 2026 01:16:25 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 01:16:25 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 18 Aug 2026 01:16:25 GMT
ENV JAVA_VERSION=17.0.9
# Tue, 18 Aug 2026 01:16:35 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Tue, 18 Aug 2026 01:16:35 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 18 Aug 2026 01:16:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 18 Aug 2026 01:16:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 01:16:37 GMT
USER gradle
# Tue, 18 Aug 2026 01:16:38 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 01:16:38 GMT
USER root
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dda17dc60cdea6a630c4fff5f94447d29b67022639b44094c11592e8975d159`  
		Last Modified: Tue, 18 Aug 2026 01:17:10 GMT  
		Size: 4.3 KB (4315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ba3b1c28da86ebaeb27ff220115e5ea2c9b161240cf4000e736ea7c5aabd715`  
		Last Modified: Tue, 18 Aug 2026 01:17:17 GMT  
		Size: 126.7 MB (126734603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c1088f0d79849526ca8e65449eb0133595cb3f1227616abc3fab17cec66a30`  
		Last Modified: Tue, 18 Aug 2026 01:17:20 GMT  
		Size: 291.1 MB (291064211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c24b61d2d840c9321e85ca3a759428b052916214c5523e1e0f67976c259d64b2`  
		Last Modified: Tue, 18 Aug 2026 01:17:18 GMT  
		Size: 150.2 MB (150227948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3392563e9c9f630d40e717c1d72a76f60da5da41e2b7402177ad79b97d266577`  
		Last Modified: Tue, 18 Aug 2026 01:17:12 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:d5aad4fb332f41d7c1775cdb6451741780c3a51602c12326b2ccc97c949c65e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9447920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e381bbeff7079aeefd1745ba4cdf3818585c9f13a81bd8002c3c96addcd384de`

```dockerfile
```

-	Layers:
	-	`sha256:f4f078664c6562053c5bdaf36f2af057f0dea8280ef98db2ad3e7c700668114e`  
		Last Modified: Tue, 18 Aug 2026 01:17:11 GMT  
		Size: 9.4 MB (9420363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:377d29002712e940ebec90d1f78294d06bc95d770b180756d4adc6fb0ff3d88f`  
		Last Modified: Tue, 18 Aug 2026 01:17:10 GMT  
		Size: 27.6 KB (27557 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk17-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:0c94b86ace6ec850c3b4f4102f03b3055020d877ba0b1e75b721cb0a856a560b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **584.3 MB (584277904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e81581bced2249f20b13c8d051d3caf0d1686ba0de32e94b05c36fad5b25769`
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
# Tue, 18 Aug 2026 01:15:23 GMT
CMD ["gradle"]
# Tue, 18 Aug 2026 01:15:23 GMT
ENV GRADLE_HOME=/opt/gradle
# Tue, 18 Aug 2026 01:15:23 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Tue, 18 Aug 2026 01:15:23 GMT
VOLUME [/home/gradle/.gradle]
# Tue, 18 Aug 2026 01:15:23 GMT
WORKDIR /home/gradle
# Tue, 18 Aug 2026 01:15:54 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Tue, 18 Aug 2026 01:15:54 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Tue, 18 Aug 2026 01:15:54 GMT
ENV JAVA_VERSION=17.0.9
# Tue, 18 Aug 2026 01:16:06 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Tue, 18 Aug 2026 01:16:06 GMT
ENV GRADLE_VERSION=9.7.0
# Tue, 18 Aug 2026 01:16:06 GMT
ARG GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
# Tue, 18 Aug 2026 01:16:09 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Tue, 18 Aug 2026 01:16:09 GMT
USER gradle
# Tue, 18 Aug 2026 01:16:10 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=84fbba45c7f4c64abc77460e1c00f541e9f960e3c7ed2538f1ede19eacd873ae
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Tue, 18 Aug 2026 01:16:10 GMT
USER root
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e11b97dc93bd92cd4047fb5138340e675d9d2497e7c1274b8d8ac9945e3c5adc`  
		Last Modified: Tue, 18 Aug 2026 01:16:42 GMT  
		Size: 4.3 KB (4316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef8b10402c6b91eec177f3a1b0145bc4cd5ce6f456301b79ebb4d8261c05f8e`  
		Last Modified: Tue, 18 Aug 2026 01:16:51 GMT  
		Size: 122.9 MB (122893862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e17b60055fdd6ee06d27f0ca17e5e691226ade99e1e8a3511c954924e07cca`  
		Last Modified: Tue, 18 Aug 2026 01:16:55 GMT  
		Size: 283.5 MB (283501956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3823dbf287c86cfdda22b71ce89e71f4c99ab4085e5ea8ff54ed00e20bcd3219`  
		Last Modified: Tue, 18 Aug 2026 01:16:52 GMT  
		Size: 150.2 MB (150227949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55403a046032e4ec7a9510bcacf1c78a359ff7c154a08f1453998964700518b`  
		Last Modified: Tue, 18 Aug 2026 01:16:44 GMT  
		Size: 29.3 KB (29336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk17-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:74a660535b36a842a75e270f7678962d010d0fab5e2ab7a14400ed68d4e1c2e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9416840 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:275ecd937a30fd2861a2b0789012194ce6d790bffd373043e21759fec6e77e0a`

```dockerfile
```

-	Layers:
	-	`sha256:b5497ee3f04b9846260ee77fdaddcdd0acae6bb0d8b859bc46d2fd98329eb998`  
		Last Modified: Tue, 18 Aug 2026 01:16:43 GMT  
		Size: 9.4 MB (9389119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b95208cde8bd26d8a19df240da30fc675728ca684ac7cef5c618dbc714553a38`  
		Last Modified: Tue, 18 Aug 2026 01:16:43 GMT  
		Size: 27.7 KB (27721 bytes)  
		MIME: application/vnd.in-toto+json
