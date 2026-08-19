## `gradle:9-jdk-graal-noble`

```console
$ docker pull gradle@sha256:fbcfe236be3c7d5e2807a885358884bf090c081e97a6c0bd7dfdd884dd696398
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:47178b312f4c0aaa0f9777306bbf6375c01cc1ccf95596721f569ccc12137b5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **677.3 MB (677274739 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db612306996bbf95f5ecdcc079a40ad329ca4113bc07d5c7e0fa98278db05ad`
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
# Wed, 19 Aug 2026 17:39:07 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 17:39:07 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 17:39:07 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 17:39:07 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 17:39:07 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 17:39:31 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 19 Aug 2026 17:39:31 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 19 Aug 2026 17:39:31 GMT
ENV JAVA_VERSION=25.0.4
# Wed, 19 Aug 2026 17:39:41 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 19 Aug 2026 17:39:41 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 17:39:41 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:39:43 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:39:43 GMT
USER gradle
# Wed, 19 Aug 2026 17:39:44 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:39:44 GMT
USER root
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ed74edd9a073ae6cf179c2814b521d2feb0516ff226bcd94c77eda62327fb7`  
		Last Modified: Wed, 19 Aug 2026 17:40:19 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a13d6eb3d2afb1ed4a062ad0ef9bd0223e0c46a75c0905cc8cf86b3de24c9b`  
		Last Modified: Wed, 19 Aug 2026 17:40:26 GMT  
		Size: 148.2 MB (148229236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc0c07926088669f8dae82576df85993addcd82be15d937480264e72154f05e`  
		Last Modified: Wed, 19 Aug 2026 17:40:29 GMT  
		Size: 347.9 MB (347911751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd2162666b97494af0a2faccdc45dde84c128e0a4d57373eeb8badda90814de`  
		Last Modified: Wed, 19 Aug 2026 17:40:26 GMT  
		Size: 151.4 MB (151354016 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce8747e85267691bc18240ad630bba9bc012c413538be1c437d561643d3b668b`  
		Last Modified: Wed, 19 Aug 2026 17:40:20 GMT  
		Size: 25.6 KB (25611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:bd8b2a0e47c6add59f931e740cd103e6b017b261cce73d14ccac179e4457266b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9148894 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:def012bfd192326d260ecf0bc3b71924b4ae07029017ddfdfb7a3da1ab895d8b`

```dockerfile
```

-	Layers:
	-	`sha256:5791f5d8e6fcf22379ccfaf36f2ab5ce247572d28961b55f2eb7f22e30d972cc`  
		Last Modified: Wed, 19 Aug 2026 17:40:19 GMT  
		Size: 9.1 MB (9118316 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62684789927d533f34f609ce9b7c2572a2a1ca13c22e81dac441bc71bf763d5f`  
		Last Modified: Wed, 19 Aug 2026 17:40:19 GMT  
		Size: 30.6 KB (30578 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c21133762784aa0f7d9badabcec41ef2b774484601779e55ff0fc5ac9a2abd71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **646.1 MB (646078083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69263952e58f7cf409783c2ebfbebd4113957722b76e2e5bbc792eeb1480f601`
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
# Wed, 19 Aug 2026 17:39:16 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 17:39:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 17:39:16 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 17:39:16 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 17:39:17 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 17:39:45 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 19 Aug 2026 17:39:45 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 19 Aug 2026 17:39:45 GMT
ENV JAVA_VERSION=25.0.4
# Wed, 19 Aug 2026 17:39:57 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=3f4a89de8eaa96f2ed677f09957c7e872cd8467aad3537f8b5394c1b8c4b942e     && GRAALVM_AARCH64_DOWNLOAD_SHA256=22286f7ecd21b9aedb3226b9bf797469e1bd3eefc491e12ef3dd49b452d230b7     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.2.4     && GRAALVM_ARTIFACT_VERSION=25i2-25.0.4     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 19 Aug 2026 17:39:57 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 17:39:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:39:59 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:39:59 GMT
USER gradle
# Wed, 19 Aug 2026 17:40:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:40:00 GMT
USER root
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0efb66bdabda8c5781ad9f8e818391c8bf227da8dcec2377cb7764deced6d0de`  
		Last Modified: Wed, 19 Aug 2026 17:40:36 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64213eae310bb22a48aacb45b4106ee1732cae67f1ab7e4a4a91f2136065d67b`  
		Last Modified: Wed, 19 Aug 2026 17:40:43 GMT  
		Size: 143.3 MB (143323475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7857cd3d078f1587b90632c9a38e59ed03d492d24d0e0ba7d9f63ff1b1bfac3`  
		Last Modified: Wed, 19 Aug 2026 17:40:46 GMT  
		Size: 322.5 MB (322482701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc0255bbd58c9ea6577872aac76080d529d436ef1964488de08e4855c30a8172`  
		Last Modified: Wed, 19 Aug 2026 17:40:44 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:589fc465935ee3da114b086726ab6b53dcdee006e267a9f6debb397df2dbb182`  
		Last Modified: Wed, 19 Aug 2026 17:40:37 GMT  
		Size: 29.3 KB (29337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:3476dce2159584eb0e0ba063e61157fc821268364bbd45673854b3d8d6a88baf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9118580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66daf6eabc2827c338404297d7b0e326f8412f169d2ea09db13d193fcdac6fec`

```dockerfile
```

-	Layers:
	-	`sha256:521db1f6b3b335180f9be448a555d7953f97523a608a2c833514733a751b2a84`  
		Last Modified: Wed, 19 Aug 2026 17:40:37 GMT  
		Size: 9.1 MB (9087741 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:211ea841ac7ce5f5eba2ee9d86a41b118649ee1c2e50865ad73dacf44e603041`  
		Last Modified: Wed, 19 Aug 2026 17:40:36 GMT  
		Size: 30.8 KB (30839 bytes)  
		MIME: application/vnd.in-toto+json
