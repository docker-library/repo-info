## `gradle:jdk17-graal-noble`

```console
$ docker pull gradle@sha256:b691e707455c9634d53bf71303c2599b9926d6a7653cb174d993e05fbe4b20bc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:jdk17-graal-noble` - linux; amd64

```console
$ docker pull gradle@sha256:7be44e5ff8ac1e8a51f43e956ec4f126cde55c71377c44a7391f33a2abc1bdbf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **623.0 MB (623048176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66dc77d28ff961a3fb8e31808aa4d2ebd467e5e0b0c66595b580573bb4e270a0`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Thu, 24 Sep 2026 19:35:16 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:35:16 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:35:16 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:35:16 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:35:16 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:35:55 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:35:55 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 24 Sep 2026 19:35:55 GMT
ENV JAVA_VERSION=17.0.9
# Thu, 24 Sep 2026 19:36:04 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Thu, 24 Sep 2026 19:36:04 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:36:04 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:36:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:36:06 GMT
USER gradle
# Thu, 24 Sep 2026 19:36:06 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:36:06 GMT
USER root
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d81e36a6d2ebdbb4637f68ea016ab9ed7dcb4069493bc4c437f105bba641c1b`  
		Last Modified: Thu, 24 Sep 2026 19:36:42 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eea33140f27a66832087572fadf8eec021eba4edf3717b64dfa87dc1b62c1229`  
		Last Modified: Thu, 24 Sep 2026 19:36:51 GMT  
		Size: 150.7 MB (150668764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5dba9a39abfab0ef12271bbdf00120bb3fe890f93935ce713e940329ada721b`  
		Last Modified: Thu, 24 Sep 2026 19:36:58 GMT  
		Size: 291.1 MB (291064114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e9f2f35b3c8ca118b726ae7f4cc36d97d064f61c232e9697415038ed0b64106`  
		Last Modified: Thu, 24 Sep 2026 19:36:52 GMT  
		Size: 151.5 MB (151524259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e6b255cc8a6b123fff2eded783307eaad71c5cffb64405ea9e76cffde903c3`  
		Last Modified: Thu, 24 Sep 2026 19:36:43 GMT  
		Size: 25.6 KB (25605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:9564fc8bc71d9dc9ef2218f71096a1b314a1495785ae53c4e8acf1f112cbd233
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.1 MB (9051585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d4ba63e5239dc88c64a7663fa82e8d00f3b1758f0ae94b460e42f720a661494`

```dockerfile
```

-	Layers:
	-	`sha256:c196061a38d8c74a5655a9186c2729d2f509e0a2bc538d3832782d5d2e3608e2`  
		Last Modified: Thu, 24 Sep 2026 19:36:42 GMT  
		Size: 9.0 MB (9023789 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88639e6e0d5c3b94ec78ea8785130045fd7b7f5001587bdac3a8945abd44592f`  
		Last Modified: Thu, 24 Sep 2026 19:36:42 GMT  
		Size: 27.8 KB (27796 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk17-graal-noble` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:e5de65b749e67befe2cb14ae98d8f21d0d8992fc807f621803db41b819a0064d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **609.7 MB (609732857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77e007071193aefd4ef4cd37a44b505d128601d07c56996ad445bd1b43c407d2`
-	Default Command: `["gradle"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Thu, 24 Sep 2026 19:34:50 GMT
CMD ["gradle"]
# Thu, 24 Sep 2026 19:34:50 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 24 Sep 2026 19:34:50 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 24 Sep 2026 19:34:50 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 24 Sep 2026 19:34:50 GMT
WORKDIR /home/gradle
# Thu, 24 Sep 2026 19:35:27 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 24 Sep 2026 19:35:27 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 24 Sep 2026 19:35:27 GMT
ENV JAVA_VERSION=17.0.9
# Thu, 24 Sep 2026 19:35:36 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading GraalVM"     && GRAALVM_AMD64_DOWNLOAD_SHA256=e47ba7229cef02393e19d5b8f46f7f1cab4829dd17bfe84d5431fc8ff0e22a96     && GRAALVM_AARCH64_DOWNLOAD_SHA256=c3281b21f5220c2f76cf6fa0d646bc42e2d729af2c022bb06e557a613ba16102     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/jdk-${JAVA_VERSION}/graalvm-community-jdk-${JAVA_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_HOME}"     && for bin in "$JAVA_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && gu --version     && native-image --version # buildkit
# Thu, 24 Sep 2026 19:35:36 GMT
ENV GRADLE_VERSION=9.8.0
# Thu, 24 Sep 2026 19:35:36 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Thu, 24 Sep 2026 19:35:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 24 Sep 2026 19:35:39 GMT
USER gradle
# Thu, 24 Sep 2026 19:35:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 24 Sep 2026 19:35:40 GMT
USER root
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ebb983c629d70f7a14f106bbbda699326de49d9571caad0502dba9ccc6c7af`  
		Last Modified: Thu, 24 Sep 2026 19:36:11 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae03010cbf7e510875ff19609c93c09ea07846a15407cc1ff5c388a7aa38859`  
		Last Modified: Thu, 24 Sep 2026 19:36:19 GMT  
		Size: 145.7 MB (145734345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7c32a7756d813e364dd772c5367a65c95adf7228d37047de1c876f2d7b5e9e`  
		Last Modified: Thu, 24 Sep 2026 19:36:21 GMT  
		Size: 283.5 MB (283502022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5f0915f308a4d380654b03cf2e635b9e0d87a5972786bd928bd38cc1b2b0dc`  
		Last Modified: Thu, 24 Sep 2026 19:36:19 GMT  
		Size: 151.5 MB (151524262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f075b07c84c328beaa2f78869b572945d730fd0ebe579daf897b08d2dd227a`  
		Last Modified: Thu, 24 Sep 2026 19:36:13 GMT  
		Size: 29.3 KB (29330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk17-graal-noble` - unknown; unknown

```console
$ docker pull gradle@sha256:e64755312028a6c086fb36ee4aee486257b8de8ff500be1d08c878407bbd61da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.0 MB (9047278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1183a52c209c277a7578a9c977de538d1dc4159ba7d55c7552ce96524035fd50`

```dockerfile
```

-	Layers:
	-	`sha256:e3dd618af49a5059d4dfae1fdbd89b3b05a1b795b63f794100ceebad828b6424`  
		Last Modified: Thu, 24 Sep 2026 19:36:12 GMT  
		Size: 9.0 MB (9019318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6941071e26f35fea3deb17a7bef1e09d2174cdcb34940549183e30ed75e6ebf4`  
		Last Modified: Thu, 24 Sep 2026 19:36:11 GMT  
		Size: 28.0 KB (27960 bytes)  
		MIME: application/vnd.in-toto+json
