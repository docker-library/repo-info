## `gradle:9-graal-jammy`

```console
$ docker pull gradle@sha256:742e8f8341f93d0f9c1903e83c1616cc18da4801f3e37bda8565222c23868d35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-graal-jammy` - linux; amd64

```console
$ docker pull gradle@sha256:effa84442b63b29f5f0ab93fc7d04a6484fc8420801d7ab5845f4db470a27be9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.1 MB (598099604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86b6d54604badd0306792d527680406b7bdb561ee8fb33be88cd93628c5439ab`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:20:29 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:29 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:29 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:29 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:20:59 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:20:59 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:20:59 GMT
ENV JAVA_VERSION=21.0.2
# Fri, 02 Oct 2026 01:21:08 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:08 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:08 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:11 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:11 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:12 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:12 GMT
USER root
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f830c7abbeb0848cb801fbb2be92dc387c0516297ac9bc840f07874c9e3a7cbb`  
		Last Modified: Fri, 02 Oct 2026 01:21:41 GMT  
		Size: 4.3 KB (4300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb2d089c56672e3789e1e1a7e413fc2d9fde23bed79be4b8ae060b6f8125653`  
		Last Modified: Fri, 02 Oct 2026 01:21:49 GMT  
		Size: 126.8 MB (126806941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875f73bf45f4319cc6dcdc2fe749c03ac993167d467119fdfaffdaceb0a15279`  
		Last Modified: Fri, 02 Oct 2026 01:21:52 GMT  
		Size: 290.0 MB (289986826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcd253f4739ba288f2644ef7fb9832cc44ecbec2dbcac626bc93acf98c1f1ab`  
		Last Modified: Fri, 02 Oct 2026 01:21:49 GMT  
		Size: 151.5 MB (151524263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e094f2fe924026fc687125aeb8315514ede757242994abcbc0e77daecf70cea6`  
		Last Modified: Fri, 02 Oct 2026 01:21:42 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:e9bdec66c3f4f705a33a8912433a9485c375c8fc0c9bf6d7bd6754288365ab7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9430339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc50e4e8ee0191dcf8547aad8c9fac8b1fbee4f3c1d267346bfbae7a23c49e4`

```dockerfile
```

-	Layers:
	-	`sha256:73a2a9629ffcb8037be33a516846de9880d6f7ee3ae64748c4d6ab21196635e2`  
		Last Modified: Fri, 02 Oct 2026 01:21:42 GMT  
		Size: 9.4 MB (9400338 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:435eeb76338c574a064132b28ce9676b09c76f7209e4243628736a347aaa92fb`  
		Last Modified: Fri, 02 Oct 2026 01:21:41 GMT  
		Size: 30.0 KB (30001 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-graal-jammy` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:6026461f9090e305b6f2e01a60e8e0dfa0a1508f03091ba6278463dc0204c2f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **583.9 MB (583864861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a4f64f66bf61ea2bb6aea20c11eeb96382f38a2ce1b9082e308b4e598e2b00a`
-	Default Command: `["gradle"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:20:31 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:31 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:31 GMT
RUN set -o errexit -o nounset     && echo "Adding gradle user and group"     && groupadd --system --gid 1000 gradle     && useradd --system --gid gradle --uid 1000 --shell /bin/bash --create-home gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:31 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:31 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:21:02 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:21:02 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:21:02 GMT
ENV JAVA_VERSION=21.0.2
# Fri, 02 Oct 2026 01:21:11 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:11 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:15 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:15 GMT
USER root
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d36f037819719474f5d9e08c0720c1d1451c1f6e9005916b596da64970427d5`  
		Last Modified: Fri, 02 Oct 2026 01:21:48 GMT  
		Size: 4.3 KB (4305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a9f5969502b6166ad988045b7032df79954c3c2af4537d2802dd6a86ab284c`  
		Last Modified: Fri, 02 Oct 2026 01:21:55 GMT  
		Size: 123.0 MB (122956349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:741e33f32e9b08e04d595e575622bb7a8e5ad52697d745eaf47f9d37b22d3335`  
		Last Modified: Fri, 02 Oct 2026 01:21:59 GMT  
		Size: 281.7 MB (281666444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53292891d3a63681b8417d6fb9570eef44e816d8f8cdc92dce18689293b419d0`  
		Last Modified: Fri, 02 Oct 2026 01:21:56 GMT  
		Size: 151.5 MB (151524260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef7b1e82a3a87d1995274426786c00cce01ebaed5efbd456e00c19f311eaa155`  
		Last Modified: Fri, 02 Oct 2026 01:21:49 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-graal-jammy` - unknown; unknown

```console
$ docker pull gradle@sha256:2f5ac13066dad2decb75c976fee2679d180cde38615ca586f2d779e97e666e7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9399455 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d07792d931a53db6647c90256aa97f978afef732cbde5eea240558fc9914b195`

```dockerfile
```

-	Layers:
	-	`sha256:30ad152b31183cc4712fee0bb7d2357881a2b34da14a9136dc8f54624302d8fd`  
		Last Modified: Fri, 02 Oct 2026 01:21:49 GMT  
		Size: 9.4 MB (9369194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06c81b8848e821ea9c69ec81db110ce75d0a6d10e6353976847958a7d09c6970`  
		Last Modified: Fri, 02 Oct 2026 01:21:48 GMT  
		Size: 30.3 KB (30261 bytes)  
		MIME: application/vnd.in-toto+json
