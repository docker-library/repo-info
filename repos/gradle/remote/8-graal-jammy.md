## `gradle:8-graal-jammy`

```console
$ docker pull gradle@sha256:9e4953a8e57c61fd1ab323d9fde621f496ec5b5591334aa2cee002f7dbc2cf27
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:8-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:d3ddf81ec2406729900c5e1fc2a666695d3f7c25037b02d7bfa269be06f94e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **592.1 MB (592120084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6a84df50918dd8faef3d7ad6054a6bd984e07845d523a3b6e199a2a28be5651`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:24:01 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 02:24:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 02:24:01 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 02:24:01 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 02:24:01 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 02:24:50 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 02:24:50 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 02:24:50 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 09 Sep 2026 02:25:00 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 02:25:00 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 09 Sep 2026 02:25:00 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 09 Sep 2026 02:25:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 02:25:03 GMT
USER gradle
# Wed, 09 Sep 2026 02:25:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 02:25:03 GMT
USER root
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:822f1af3a2bfaff89709a3036ed711867422191c20ce6f9fc6181f5b19691fb7`  
		Last Modified: Wed, 09 Sep 2026 02:25:36 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0b791b04bb8678d4f0a205573c93a2e3168a8a41ef08758c4a4797db97e3981`  
		Last Modified: Wed, 09 Sep 2026 02:25:43 GMT  
		Size: 134.3 MB (134255196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be99ef6dc0b49a2e4bb9c2fe8b00613b1fc06a2aaeec190deba72177da03158f`  
		Last Modified: Wed, 09 Sep 2026 02:25:46 GMT  
		Size: 290.0 MB (289986866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a77fcb16627d2acdd4ac7b0948cb19320473a1cb40693054cc5430e45498d32`  
		Last Modified: Wed, 09 Sep 2026 02:25:43 GMT  
		Size: 138.1 MB (138068533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a434763b355f5ef44fc3a73759309056be08df339da3df3a6141ac8587dae7d`  
		Last Modified: Wed, 09 Sep 2026 02:25:37 GMT  
		Size: 54.9 KB (54897 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:1cde79e919136aecceb1e7df6e1287ed1ab533c529560ac922923e13ab03e3f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9396177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12f1335c985b0ea8bc4e11c66aed537c1485c22ac5ba3e1857822a3c513fa436`

```dockerfile
```

-	Layers:
	-	`sha256:aff4653090aa182d67a7372dc36ca13540b72a36fd36c1a2f3447acef5653da8`  
		Last Modified: Wed, 09 Sep 2026 02:25:37 GMT  
		Size: 9.4 MB (9367106 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80a605353d49bb65a2070cedeb91648651826b5c9dd1cfe4c6cb4a2efdd4d7b2`  
		Last Modified: Wed, 09 Sep 2026 02:25:36 GMT  
		Size: 29.1 KB (29071 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:8-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:de31fdc473c65ac87c14ba52bf966c6392068ff7df3a142539a47c4bbd19d36e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **576.7 MB (576746259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9091deb83f8a8677ba6d4e72dae6956de9364dd5e5f4f13531caef53dd563f92`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:34:13 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 01:34:13 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 01:34:13 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 01:34:13 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 01:34:13 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 01:34:46 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 01:34:46 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Wed, 09 Sep 2026 01:34:46 GMT
ENV JAVA_VERSION=21.0.2
# Wed, 09 Sep 2026 01:34:55 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Wed, 09 Sep 2026 01:34:55 GMT
ENV GRADLE_VERSION=8.14.5
# Wed, 09 Sep 2026 01:34:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
# Wed, 09 Sep 2026 01:34:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 01:34:58 GMT
USER gradle
# Wed, 09 Sep 2026 01:34:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=6f74b601422d6d6fc4e1f9a1ab6522f642c2fdcbc15ae33ebd30ba3d7198e854
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 01:34:58 GMT
USER root
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcbc80db06eed11967973c8d50615b9252cb72c622b78ee0fa0a776c19bddadb`  
		Last Modified: Wed, 09 Sep 2026 01:36:19 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfeb464c96bda6a91ec6ac5463bbc08c528e986b2c7cd82a8c90746237fec475`  
		Last Modified: Wed, 09 Sep 2026 01:36:25 GMT  
		Size: 129.3 MB (129264587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:842e75bf4a6a2b49da37bc9093efa2f598232f4ec5d733be2dfe2b590c7938ff`  
		Last Modified: Wed, 09 Sep 2026 01:36:27 GMT  
		Size: 281.7 MB (281666519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a47aee0991dc129b59b64c22857e286c7f6b6692397bdd86acd1a85f7bbfd17`  
		Last Modified: Wed, 09 Sep 2026 01:36:25 GMT  
		Size: 138.1 MB (138068532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bc86b47ec4b68ed7546fe63dd6033ae86932729ea9262f3e739652fe8202d11`  
		Last Modified: Wed, 09 Sep 2026 01:36:20 GMT  
		Size: 59.5 KB (59528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:8-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:b9db8a39d3e1e594128c11a7067eaeebecee3c12e74e6821424b971fa4420a00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9365221 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83475553d570e3696fb9dd6d81b2bd4a59362826106ac08878d64d8d35ef1644`

```dockerfile
```

-	Layers:
	-	`sha256:a2eec3e12a5bbafa0d2d7786e065b0e5b4e4927023476d71a0af0ee74d61fec0`  
		Last Modified: Wed, 09 Sep 2026 01:36:19 GMT  
		Size: 9.3 MB (9335926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6ee09cb9392d31125385bc4c47e0ea48927a6f3efa68d994c3e2cbac9ae08e9`  
		Last Modified: Wed, 09 Sep 2026 01:36:18 GMT  
		Size: 29.3 KB (29295 bytes)  
		MIME: application/vnd.in-toto+json
