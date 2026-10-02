## `gradle:graal-noble`

```console
$ docker pull gradle@sha256:9e135392a490c2eec751d5a0bc3595f208cf1d53fc16f9a21949fa8047a01fc2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:206a5edace7f92509be742e6b2093d7eec2cfde89bd9199a23c0560dd3fef2e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **683.0 MB (682980701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4e80a0b63fbff6dc22f5c7aec52ee6934b78cdec4343ced5fbf4e9fae56494f`
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
# Fri, 02 Oct 2026 01:20:20 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:20 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:20 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:20:57 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:20:57 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:20:57 GMT
ENV JAVA_VERSION=25.0.4.1.1
# Fri, 02 Oct 2026 01:21:10 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=05ccbbe783210b6886ff7b08fcd0b061c5dce4852b05db87284fc0e24abb08e2     && GRAALVM_AARCH64_DOWNLOAD_SHA256=e5f5e2f59643cf96765c741dc00b206f86c69c8c1bf843fe26050c871e0e2dbc     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.4.4.1.1     && GRAALVM_ARTIFACT_VERSION=25i4-25.0.4.1.1     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:10 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:10 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:13 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:13 GMT
USER root
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c10fa32c84b12361149581e9d05a59e06777c516b973835c67571162ad9ec48c`  
		Last Modified: Fri, 02 Oct 2026 01:21:50 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f96784ef8548c0e149d65ab48887ed44956d9b08b12180a441014de73bbe4e51`  
		Last Modified: Fri, 02 Oct 2026 01:21:58 GMT  
		Size: 150.7 MB (150669411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f466c1d6c1cdfa2a405c55ab9fba8df02b494007365f4146fb22cda877735935`  
		Last Modified: Fri, 02 Oct 2026 01:22:02 GMT  
		Size: 351.0 MB (350995680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7afd8f13f89f424df26d7b07ea2eff3d630c5687e958b1a62fff76c220a2a1b`  
		Last Modified: Fri, 02 Oct 2026 01:21:58 GMT  
		Size: 151.5 MB (151524263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f88b837670e817f94020b3e82baa25bc39060846196b70926d849b59dc156f`  
		Last Modified: Fri, 02 Oct 2026 01:21:52 GMT  
		Size: 25.6 KB (25609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:1607850a62ac93090724d8b3b5935ed67b2f44d1170f2f8f09dfe032e256ff48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9145973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d4321cdeaff4016597bbf69e19187176fb699f7d3efdc3d6a2a7fade01567d`

```dockerfile
```

-	Layers:
	-	`sha256:1c75f31ebeeb463ea2a93736a2257cd2ac18c5a056cea163f3eb75b51df89947`  
		Last Modified: Fri, 02 Oct 2026 01:21:51 GMT  
		Size: 9.1 MB (9115358 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:817c1636c3d8701034781cb2fc8228059d7f50b87a37aa12d3ef14d6abc296c3`  
		Last Modified: Fri, 02 Oct 2026 01:21:51 GMT  
		Size: 30.6 KB (30615 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:1380b914e84226266d5a189fbe9ed5e911fc70d7f315a7c79677b61c43268909
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **652.4 MB (652355440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:69d3d8452d8bc28c1968fe677020f316ca22c69fa290519b10054759e0b2bdbe`
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
# Fri, 02 Oct 2026 01:20:16 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:16 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:16 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:16 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:20:53 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:20:53 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:20:53 GMT
ENV JAVA_VERSION=25.0.4.1.1
# Fri, 02 Oct 2026 01:21:05 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=05ccbbe783210b6886ff7b08fcd0b061c5dce4852b05db87284fc0e24abb08e2     && GRAALVM_AARCH64_DOWNLOAD_SHA256=e5f5e2f59643cf96765c741dc00b206f86c69c8c1bf843fe26050c871e0e2dbc     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.4.4.1.1     && GRAALVM_ARTIFACT_VERSION=25i4-25.0.4.1.1     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:05 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:05 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:08 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:08 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:08 GMT
USER root
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88d427344a54fac750ece70b3db48c3c7932a5dd0d4064919f6f1ddb254f1810`  
		Last Modified: Fri, 02 Oct 2026 01:21:45 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04ba2a4a3f52c22633a765fd8ef2b0d0a2f98d67c97758174ae73425eaa6ba5`  
		Last Modified: Fri, 02 Oct 2026 01:21:52 GMT  
		Size: 145.6 MB (145638370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e940caa17813b1210857c544820b73cef1b6c07bec76534ce0bc74de387af9e4`  
		Last Modified: Fri, 02 Oct 2026 01:21:56 GMT  
		Size: 326.2 MB (326222070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93781b7754cb7f07175d062f1700cfee3a466e24d993e6deb2f589a8c0a0920`  
		Last Modified: Fri, 02 Oct 2026 01:21:53 GMT  
		Size: 151.5 MB (151524260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c19098ce9dcefdd46dd86f1b3fdae8c848ddd961d5bd7dff83f596b093dc64`  
		Last Modified: Fri, 02 Oct 2026 01:21:46 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:3ea2882f0586616b5ca8fc0ef74831923bd518f81024264c9036a0cd11904ae7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9115658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e53b345319ac847cb1c14d4426661443cb7fe27e878bd08fdbe41b273132d3a2`

```dockerfile
```

-	Layers:
	-	`sha256:f046d17940cf96997053dfb5dace81aafc8a493e2b83ee104ea42229baa21491`  
		Last Modified: Fri, 02 Oct 2026 01:21:46 GMT  
		Size: 9.1 MB (9084783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c4c8542cd5297c9eafdfb6dc6c093ba52ba0818ac0e2b5ef57848633a917f03`  
		Last Modified: Fri, 02 Oct 2026 01:21:45 GMT  
		Size: 30.9 KB (30875 bytes)  
		MIME: application/vnd.in-toto+json
