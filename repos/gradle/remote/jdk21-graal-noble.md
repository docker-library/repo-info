## `gradle:jdk21-graal-noble`

```console
$ docker pull gradle@sha256:6d9bed07277f19c4bcf89e183b11d7c5b55e8c604a40473ce316dbcff7f69805
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk21-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:3a0145f47265856b9cdd6fdf360e0d8c0bddaceaea9674dc2b1ad1296245753d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **619.3 MB (619348442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14cdca5e6fec4b41577b87cbaf8596482b878c842bafe2cc10bb0aafd942214b`
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
# Wed, 19 Aug 2026 17:39:59 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 17:39:59 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 17:39:59 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 17:39:59 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 17:39:59 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 17:40:24 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 19 Aug 2026 17:40:24 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 19 Aug 2026 17:40:24 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 19 Aug 2026 17:40:34 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 19 Aug 2026 17:40:34 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 17:40:34 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:40:36 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:40:36 GMT
USER gradle
# Wed, 19 Aug 2026 17:40:37 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:40:37 GMT
USER root
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab343b027e7a72b053fefb7bab66227dc4d46197fc5d86023c25750d6d64e2cb`  
		Last Modified: Wed, 19 Aug 2026 17:41:07 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53599ee56fae197805c46bf6d9a8016e21e6a44d8cee7eabaaee62192181b476`  
		Last Modified: Wed, 19 Aug 2026 17:41:16 GMT  
		Size: 148.2 MB (148228641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bcc683f6a85a4d76243615ce5cef6bb1e6e086478a92e87eaed1965310c29fd`  
		Last Modified: Wed, 19 Aug 2026 17:41:19 GMT  
		Size: 290.0 MB (289986052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00253bf3fcdf2c9cafaa846c2d12827722c7e49176e79264de092260ee866383`  
		Last Modified: Wed, 19 Aug 2026 17:41:16 GMT  
		Size: 151.4 MB (151354015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:300fa3f70889bc1a21211c2582fda69d8bb84e7e34e238de0a03ac0ab2a64273`  
		Last Modified: Wed, 19 Aug 2026 17:41:09 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:586e144b857fac99e8bf31fe0b4a390ab591a42521e9607193c92141cef1bf21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9031580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5fa14c35beea96698e86659ee5c06eb650fe1d319585a03a4feee5ad49a845a`

```dockerfile
```

-	Layers:
	-	`sha256:01f449bba205c503b0c85fefd012ce7d1a45e08fef496276c66639e7b6540efa`  
		Last Modified: Wed, 19 Aug 2026 17:41:09 GMT  
		Size: 9.0 MB (9003888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ae286dbd392a8d50ad889d876b5ff6e92c3d8a74db843e793686c33a2248d05`  
		Last Modified: Wed, 19 Aug 2026 17:41:08 GMT  
		Size: 27.7 KB (27692 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:f71775bae7c1bfbf244c2eb775274e0b7e06d2662c4d4dd9cfe7684fd5a56ca7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **605.3 MB (605261805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9dcd1166eb90ffb2eb03a507b6f9df1cd8499370226b522df19401d226f70056`
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
# Wed, 19 Aug 2026 17:40:15 GMT
CMD ["gradle"]
# Wed, 19 Aug 2026 17:40:15 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 19 Aug 2026 17:40:15 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 19 Aug 2026 17:40:15 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 19 Aug 2026 17:40:15 GMT
WORKDIR /home/gradle
# Wed, 19 Aug 2026 17:40:43 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 19 Aug 2026 17:40:43 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 19 Aug 2026 17:40:43 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 19 Aug 2026 17:40:54 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 19 Aug 2026 17:40:54 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 19 Aug 2026 17:40:54 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 19 Aug 2026 17:40:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 19 Aug 2026 17:40:57 GMT
USER gradle
# Wed, 19 Aug 2026 17:40:57 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 19 Aug 2026 17:40:57 GMT
USER root
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db70f1093deb39c0e2d8fe04837077f03d6c2ff5e93d1bc646cb4d294e4d9c93`  
		Last Modified: Wed, 19 Aug 2026 17:41:29 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d643b498fc14e5003d812b8a816db3aa8c519b78a80baa6920d983fc60d85b7`  
		Last Modified: Wed, 19 Aug 2026 17:41:37 GMT  
		Size: 143.3 MB (143323606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c622d25dcafcd4c10357d208460d44cb97f05e2f909424ddc3e236412f6b2c76`  
		Last Modified: Wed, 19 Aug 2026 17:41:39 GMT  
		Size: 281.7 MB (281666295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bce02538d28c64c69c09c31807438e014b489c60f05e49879806131a4b44ae18`  
		Last Modified: Wed, 19 Aug 2026 17:41:37 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6938b25c386afb2eae3b1539361a5b1034dedbdfac8f701b10b766c4b71ea776`  
		Last Modified: Wed, 19 Aug 2026 17:41:31 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:683c9b327ef0cefab3a8e5ca869b94af52068e994626ccba67c486807883e939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9027277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dfd5807c1fa3bb06ae65578b972d9a1a57347321fad4bb91fc627e697c60e8c9`

```dockerfile
```

-	Layers:
	-	`sha256:e748964b04bfbb1576996f249ce13bf343df00c462a3ec18d35b203e3abae2ee`  
		Last Modified: Wed, 19 Aug 2026 17:41:30 GMT  
		Size: 9.0 MB (8999421 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4db8b3bc3cb446e2da5f7628a3d0f7a84d83af0ffe7913714253cf2acd191e1e`  
		Last Modified: Wed, 19 Aug 2026 17:41:29 GMT  
		Size: 27.9 KB (27856 bytes)  
		MIME: application/vnd.in-toto+json
