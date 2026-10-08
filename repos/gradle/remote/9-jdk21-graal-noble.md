## `gradle:9-jdk21-graal-noble`

```console
$ docker pull gradle@sha256:1087b439f2cc287efa61e14b4de5c32d6e58be64f5f7b971b77b9c17bef77008
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:efd9d96c112bf34c9f2419444df53269135d3a6b3f19db00cdb07b96127f2f7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **622.0 MB (621981380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9589ffb9ac9e00255c87a8bca9cc0cc0a66500d8e95f161367c95cbb2e1146e`
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
# Thu, 08 Oct 2026 16:39:41 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:39:41 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:39:41 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:39:41 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:39:41 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:40:15 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:40:15 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 08 Oct 2026 16:40:15 GMT
ENV JAVA_VERSION=21.0.2
# Thu, 08 Oct 2026 16:40:24 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 08 Oct 2026 16:40:24 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:40:24 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:40:26 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:40:26 GMT
USER gradle
# Thu, 08 Oct 2026 16:40:27 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:40:27 GMT
USER root
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3f4f14b19afd07074cbfaac7a16c7cf020f67c6d440c5da5673b9933c954e72`  
		Last Modified: Thu, 08 Oct 2026 16:40:58 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27adf5a256748692be9fa8c7838f13b0352731fe3b848bab51e5a1a5750db4e`  
		Last Modified: Thu, 08 Oct 2026 16:41:05 GMT  
		Size: 150.7 MB (150669688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c31c958130beab7673ae9bac22616d88c229bf874eab3d4ec98354966d57e10`  
		Last Modified: Thu, 08 Oct 2026 16:41:08 GMT  
		Size: 290.0 MB (289986732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e934f62595dd067d23bea171aa0f976361dfeb53ee5482384c8dc7b2097a8e50`  
		Last Modified: Thu, 08 Oct 2026 16:41:05 GMT  
		Size: 151.5 MB (151533605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f017982dd9372bdeeadcf28559d58dd6eac59b4f6b4106c16f5f1d279febd5`  
		Last Modified: Thu, 08 Oct 2026 16:40:59 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:7ae703263cff6a03bd9f3f79835cab0a53102a5df76bea623ab55f3389252035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9028566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:876530b0e32cf35942a7ff79dfd1054f530ad28cc1acdf7c762277cf4e7d1b6c`

```dockerfile
```

-	Layers:
	-	`sha256:db32d8bc72a99bb5c46faa80ddb2093f4d42fafbd1bf90edb2f2117a6769b446`  
		Last Modified: Thu, 08 Oct 2026 16:40:58 GMT  
		Size: 9.0 MB (9000874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74d76ee37cc4088414871717f69e1d9938d2ee854f959fd7e4e295ce1954d917`  
		Last Modified: Thu, 08 Oct 2026 16:40:57 GMT  
		Size: 27.7 KB (27692 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1143c41e7a06c80e61f7b3ced4a0cb69a108afe5a74e5d0b54eb2f8f807fb50f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **607.8 MB (607809648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b997b641ae98ea73406c2e0cb93dd693365c1bd4b1c06da65bf6e7c404d294d`
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
# Thu, 08 Oct 2026 16:39:36 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:39:36 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:39:36 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 08 Oct 2026 16:39:36 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:39:36 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:40:09 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:40:09 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 08 Oct 2026 16:40:09 GMT
ENV JAVA_VERSION=21.0.2
# Thu, 08 Oct 2026 16:40:19 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 08 Oct 2026 16:40:19 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:40:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:40:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:40:22 GMT
USER gradle
# Thu, 08 Oct 2026 16:40:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:40:22 GMT
USER root
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4e720d29ce0521dd6332de9d0595f4e46bef22b75c98ed152085c12cb6de76`  
		Last Modified: Thu, 08 Oct 2026 16:40:55 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e713ff74b2e0f52a6f8e404e4c907da54fd1c4b845e9e291270194783202ab`  
		Last Modified: Thu, 08 Oct 2026 16:41:03 GMT  
		Size: 145.6 MB (145638990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8630bc893acefad6d388e1e695f5ba39b25ebe2bf3930573ce0eacd2d7fa498a`  
		Last Modified: Thu, 08 Oct 2026 16:41:06 GMT  
		Size: 281.7 MB (281666309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa311310b1ecff478219d175bd2b2d3937d75796e56173f4d576d3bbbd96ab78`  
		Last Modified: Thu, 08 Oct 2026 16:41:03 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b14e17e38b62c76afe598b873aec52a70abf73dcf01420725a10b624c4cab2`  
		Last Modified: Thu, 08 Oct 2026 16:40:57 GMT  
		Size: 29.3 KB (29334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:5fd0047a7440e006515eac4520bca9a91350f4a244400485e8c4a436f26ff162
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9024263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77b26c8049b6990b1e515b99a0641a4fe9723d3ee44dc2b11c960d82787a9238`

```dockerfile
```

-	Layers:
	-	`sha256:66242f75525ea0a6b1494e01e1612fc3d1003e4b66440a386ff5bc1e52bf2b20`  
		Last Modified: Thu, 08 Oct 2026 16:40:56 GMT  
		Size: 9.0 MB (8996407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7cc09c508e8ce5b4a3de13c32b1e226f2e574dddc71ce6f51479386ddaa752dd`  
		Last Modified: Thu, 08 Oct 2026 16:40:55 GMT  
		Size: 27.9 KB (27856 bytes)  
		MIME: application/vnd.in-toto+json
