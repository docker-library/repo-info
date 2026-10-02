## `gradle:9-jdk21-graal-noble`

```console
$ docker pull gradle@sha256:f4cf31ef8378fb07ce19353d439ddb498fc17d0ec344ef91ad90671bc1137c9f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk21-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:0bff9a97646431c72d02ea519863b06bc8924015ed9c2c21f2d9bb0fac21c288
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **622.0 MB (621971438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b9e08bdfb54f404a96fb1fb8859b67e010215966577ce7744a324c977ee10d8`
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
# Fri, 02 Oct 2026 01:20:26 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:26 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:26 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:26 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:26 GMT
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
# Fri, 02 Oct 2026 01:21:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:14 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:15 GMT
USER root
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6027f7eb9c5665876283225ed48d6008fd8a4fb078fbec38398cc30fb7f5deb7`  
		Last Modified: Fri, 02 Oct 2026 01:21:51 GMT  
		Size: 1.3 KB (1284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1a5b2efb65286f5bf19675657cb6e819b7e6e3576290c9a459e942744cc9f7`  
		Last Modified: Fri, 02 Oct 2026 01:21:58 GMT  
		Size: 150.7 MB (150669193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0383d1f8ec5c9c34eca8e6a1ab338e8154577546d96c78f2c772125a973871`  
		Last Modified: Fri, 02 Oct 2026 01:22:00 GMT  
		Size: 290.0 MB (289986638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aedd8cd00d755e148775b3c60447e7179760dc75931e7e254f976f5b34a765e`  
		Last Modified: Fri, 02 Oct 2026 01:21:58 GMT  
		Size: 151.5 MB (151524256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5939cd3d6d59ddecf4e9a9c34462a452ef59141eb6dfdb70a2df3dc82a9454`  
		Last Modified: Fri, 02 Oct 2026 01:21:52 GMT  
		Size: 25.6 KB (25613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:46c9d0e00734761fac27f47d356ad33dbb064d1f91636abc0083d2617a928995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9028564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce42da90898acce1e8ff13b7ebb331b0a0062d08e36248fae3cc0707c4a62b42`

```dockerfile
```

-	Layers:
	-	`sha256:1171e9073dc2ca51112c458ca31b7c7dbf245312a76dcb7cb9abb08ceba17355`  
		Last Modified: Fri, 02 Oct 2026 01:21:51 GMT  
		Size: 9.0 MB (9000874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:378321870e25699576245e1a984f01a8d146bf77c9c65255cc868678d7bd0ed5`  
		Last Modified: Fri, 02 Oct 2026 01:21:51 GMT  
		Size: 27.7 KB (27690 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk21-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:c81c91baac737529816a10111b09cb45647ffa7cdf60f67db7fc929b1a9d17a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **607.8 MB (607799284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d23f98668b88e95ed32901de5c9112cdc160c28af06695dc8088e51edf1a0cd`
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
# Fri, 02 Oct 2026 01:20:30 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 01:20:30 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 01:20:30 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 02 Oct 2026 01:20:30 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 01:20:30 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 01:21:04 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 01:21:04 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Fri, 02 Oct 2026 01:21:04 GMT
ENV JAVA_VERSION=21.0.2
# Fri, 02 Oct 2026 01:21:13 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=b048069aaa3a99b84f5b957b162cc181a32a4330cbc35402766363c5be76ae48     && GRAALVM_AARCH64_DOWNLOAD_SHA256=a34be691ce68f0acf4655c7c6c63a9a49ed276a11859d7224fd94fc2f657cd7a     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Fri, 02 Oct 2026 01:21:13 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 01:21:13 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 01:21:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 01:21:16 GMT
USER gradle
# Fri, 02 Oct 2026 01:21:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 01:21:16 GMT
USER root
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ca521ec179d85a54c164b43113e8d0666687fda502154b843fffd25bf3962dc`  
		Last Modified: Fri, 02 Oct 2026 01:21:49 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b570febc76936b6457b49d3c3383b9ab16bdaad0f920ad948a8649f8996cb8d1`  
		Last Modified: Fri, 02 Oct 2026 01:21:58 GMT  
		Size: 145.6 MB (145638043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122399afc8b798462f73a320d1bee78b18a1b2bd91c3284be149f5da6e67272`  
		Last Modified: Fri, 02 Oct 2026 01:22:01 GMT  
		Size: 281.7 MB (281666243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea06b88cd09b928c644fa982e8ea51f3cccb0feb4d2aeb05602231434d4b88c6`  
		Last Modified: Fri, 02 Oct 2026 01:21:58 GMT  
		Size: 151.5 MB (151524258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c44f358eba0a3d0c09a2c18e64b91b56285b5eefc4f4e6c974f4039311156aec`  
		Last Modified: Fri, 02 Oct 2026 01:21:51 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk21-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:78c26193c6e2fbfa27b46bfbbd2c7d77b49c12c844d0e1307d4db04f9b9d0dd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9024263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aafe0d41b30a4ed564e5cb0180b848b5f9a82988475dee2ab86d650ae686013e`

```dockerfile
```

-	Layers:
	-	`sha256:eb08e9dd1e108b75152cd7712abaa910ea10cf7b47c55dec44c42475e55d860a`  
		Last Modified: Fri, 02 Oct 2026 01:21:50 GMT  
		Size: 9.0 MB (8996407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:14844c9e9f2aee4ac3673c74750c4f7e10bb1d2f6ee897e15e24272fb623f752`  
		Last Modified: Fri, 02 Oct 2026 01:21:49 GMT  
		Size: 27.9 KB (27856 bytes)  
		MIME: application/vnd.in-toto+json
