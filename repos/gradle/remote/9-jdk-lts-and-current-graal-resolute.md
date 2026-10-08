## `gradle:9-jdk-lts-and-current-graal-resolute`

```console
$ docker pull gradle@sha256:f7bb68061c0cb9c104d926d1c7a716680c92e91fa2adcc54c7665f885ef8c5ab
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `gradle:9-jdk-lts-and-current-graal-resolute` - linux; amd64

```console
$ docker pull gradle@sha256:99a3ca2f9e2028e5755b6df8a326a5143a49576294d5ec656af7aa5ba0ad17a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **713.7 MB (713695558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1713993dd7bc029612d0dd7ba44842c3335a5afbbf1eed451b63dc3553bdbf69`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9550.tar --tag 26.04
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:25:52.887617+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:25:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9550.tar
# Thu, 08 Oct 2026 16:41:55 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:41:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:41:55 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle       && echo "Ensuring Gradle detects installed JDKs"    && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 08 Oct 2026 16:41:55 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:41:55 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:42:37 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:42:37 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 08 Oct 2026 16:42:37 GMT
ENV JAVA_LTS_HOME=/opt/java/graalvm25
# Thu, 08 Oct 2026 16:42:37 GMT
ENV JAVA_CURRENT_HOME=/opt/java/graalvm25
# Thu, 08 Oct 2026 16:42:47 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading LTS GraalVM"     && JAVA_LTS_VERSION=25.0.4.1.1     && GRAALVM_LTS_AMD64_DOWNLOAD_SHA256=05ccbbe783210b6886ff7b08fcd0b061c5dce4852b05db87284fc0e24abb08e2     && GRAALVM_LTS_AARCH64_DOWNLOAD_SHA256=e5f5e2f59643cf96765c741dc00b206f86c69c8c1bf843fe26050c871e0e2dbc     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.4.4.1.1     && GRAALVM_ARTIFACT_VERSION=25i4-25.0.4.1.1     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking LTS GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_LTS_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_LTS_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing LTS GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_LTS_HOME}"         && echo "Downloading current GraalVM"     && JAVA_CURRENT_VERSION=25.0.4.1.1     && GRAALVM_CURRENT_AMD64_DOWNLOAD_SHA256=05ccbbe783210b6886ff7b08fcd0b061c5dce4852b05db87284fc0e24abb08e2     && GRAALVM_CURRENT_AARCH64_DOWNLOAD_SHA256=e5f5e2f59643cf96765c741dc00b206f86c69c8c1bf843fe26050c871e0e2dbc     && if [ "${JAVA_LTS_VERSION}" != "${JAVA_CURRENT_VERSION}" ]; then       ARCHITECTURE=$(dpkg --print-architecture)       && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi       && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi       && GRAALVM_RELEASE_TAG=graal-25.4.4.1.1     && GRAALVM_ARTIFACT_VERSION=25i4-25.0.4.1.1     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz       && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"             && echo "Checking current GraalVM download hash"       && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_CURRENT_AMD64_DOWNLOAD_SHA256}"; fi       && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_CURRENT_AARCH64_DOWNLOAD_SHA256}"; fi       && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -             && echo "Installing current GraalVM"       && tar --extract --gunzip --file graalvm.tar.gz       && rm graalvm.tar.gz       && mv graalvm-* "${JAVA_CURRENT_HOME}";     fi         && echo "Default Java to LTS GraalVM"     && ln --symbolic "${JAVA_LTS_HOME}" /opt/java/graalvm     && for bin in "$JAVA_LTS_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 08 Oct 2026 16:42:47 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:42:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:42:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:42:49 GMT
USER gradle
# Thu, 08 Oct 2026 16:42:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:42:50 GMT
USER root
```

-	Layers:
	-	`sha256:4e07a0f12b2c009f98326fa391e869bd52fc63728c482400af6cb752bc16744b`  
		Last Modified: Sun, 27 Sep 2026 12:12:08 GMT  
		Size: 41.8 MB (41837521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ad70e463aa4a17833d00d6d5d346c895ebb66fee637eefd67024dc6cdc2f1c`  
		Last Modified: Sun, 27 Sep 2026 12:12:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ae440763aa9fb163b8866eca2aeb3a04f3a2425675cc330fbc2439fcfc8576`  
		Last Modified: Thu, 08 Oct 2026 16:43:32 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5321bf1cc7a50adcf0f3f696342a20c4773032d08caf86a1e691e7c02f0fb9`  
		Last Modified: Thu, 08 Oct 2026 16:43:45 GMT  
		Size: 169.3 MB (169300937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9e4fc627f6038f7fba1b6b751ca85791d3168d7f034183deaa091e3e7183b40`  
		Last Modified: Thu, 08 Oct 2026 16:43:50 GMT  
		Size: 351.0 MB (350996043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da08fcfa2a7cf017d78716d306e190f1b16ac86a06440faca1e3b5ed29dabc9`  
		Last Modified: Thu, 08 Oct 2026 16:43:44 GMT  
		Size: 151.5 MB (151533610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37f9225e8a2cd0f1fe9c918d2d8c2200820b61c275938d76228445d1e5ed92b`  
		Last Modified: Thu, 08 Oct 2026 16:43:33 GMT  
		Size: 25.6 KB (25615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-graal-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:28f22f8897c2eb045c6e1202cc0d5de8bfda539db785d7473cdcffce8a38b6d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11300930 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda657b4999a1870522331832c528f81b98d10d2953a1e0a9fdabade7da3c937`

```dockerfile
```

-	Layers:
	-	`sha256:96ecf4657bb93190c45a2b9f7d843248406ebec8fede7c269650043bc785efb3`  
		Last Modified: Thu, 08 Oct 2026 16:43:33 GMT  
		Size: 11.3 MB (11260635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:436fe7d5bef0e99e8184bb796bfe214b778fa82f4c0caa9edc9ddef452dd58a9`  
		Last Modified: Thu, 08 Oct 2026 16:43:32 GMT  
		Size: 40.3 KB (40295 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-lts-and-current-graal-resolute` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:eb845f3204154659ca4cb9b52c97b7cb71fdc4b5ad206b683e11ad1ae48e45f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **681.5 MB (681461497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50be9ad00768e1613bf66662b99985bba3ce19f88c8d07a11af021e4739fae05`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9649.tar --tag 26.04
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:29:55.694692+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:29:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9649.tar
# Thu, 08 Oct 2026 16:41:39 GMT
CMD ["gradle"]
# Thu, 08 Oct 2026 16:41:39 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 08 Oct 2026 16:41:39 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle       && echo "Ensuring Gradle detects installed JDKs"    && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties    && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 08 Oct 2026 16:41:39 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 08 Oct 2026 16:41:39 GMT
WORKDIR /home/gradle
# Thu, 08 Oct 2026 16:42:21 GMT
RUN set -o errexit -o nounset     && export DEBIAN_FRONTEND=noninteractive     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 binutils         ca-certificates         fontconfig         locales         p11-kit         tzdata         unzip                 gcc         libc-dev         libz-dev         zlib1g-dev                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 08 Oct 2026 16:42:21 GMT
ENV JAVA_HOME=/opt/java/graalvm
# Thu, 08 Oct 2026 16:42:21 GMT
ENV JAVA_LTS_HOME=/opt/java/graalvm25
# Thu, 08 Oct 2026 16:42:21 GMT
ENV JAVA_CURRENT_HOME=/opt/java/graalvm25
# Thu, 08 Oct 2026 16:42:30 GMT
RUN set -o errexit -o nounset     && mkdir /opt/java         && echo "Downloading LTS GraalVM"     && JAVA_LTS_VERSION=25.0.4.1.1     && GRAALVM_LTS_AMD64_DOWNLOAD_SHA256=05ccbbe783210b6886ff7b08fcd0b061c5dce4852b05db87284fc0e24abb08e2     && GRAALVM_LTS_AARCH64_DOWNLOAD_SHA256=e5f5e2f59643cf96765c741dc00b206f86c69c8c1bf843fe26050c871e0e2dbc     && ARCHITECTURE=$(dpkg --print-architecture)     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi     && GRAALVM_RELEASE_TAG=graal-25.4.4.1.1     && GRAALVM_ARTIFACT_VERSION=25i4-25.0.4.1.1     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz     && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"         && echo "Checking LTS GraalVM download hash"     && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_LTS_AMD64_DOWNLOAD_SHA256}"; fi     && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_LTS_AARCH64_DOWNLOAD_SHA256}"; fi     && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -         && echo "Installing LTS GraalVM"     && tar --extract --gunzip --file graalvm.tar.gz     && rm graalvm.tar.gz     && mv graalvm-* "${JAVA_LTS_HOME}"         && echo "Downloading current GraalVM"     && JAVA_CURRENT_VERSION=25.0.4.1.1     && GRAALVM_CURRENT_AMD64_DOWNLOAD_SHA256=05ccbbe783210b6886ff7b08fcd0b061c5dce4852b05db87284fc0e24abb08e2     && GRAALVM_CURRENT_AARCH64_DOWNLOAD_SHA256=e5f5e2f59643cf96765c741dc00b206f86c69c8c1bf843fe26050c871e0e2dbc     && if [ "${JAVA_LTS_VERSION}" != "${JAVA_CURRENT_VERSION}" ]; then       ARCHITECTURE=$(dpkg --print-architecture)       && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_ARCHITECTURE=linux-x64; fi       && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_ARCHITECTURE=linux-aarch64; fi       && GRAALVM_RELEASE_TAG=graal-25.4.4.1.1     && GRAALVM_ARTIFACT_VERSION=25i4-25.0.4.1.1     && GRAALVM_PKG=https://github.com/graalvm/graalvm-ce-builds/releases/download/${GRAALVM_RELEASE_TAG}/graalvm-community-jdk-${GRAALVM_ARTIFACT_VERSION}_${GRAALVM_ARCHITECTURE}_bin.tar.gz       && wget --no-verbose --output-document=graalvm.tar.gz "${GRAALVM_PKG}"             && echo "Checking current GraalVM download hash"       && if [ "${ARCHITECTURE}" = "amd64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_CURRENT_AMD64_DOWNLOAD_SHA256}"; fi       && if [ "${ARCHITECTURE}" = "arm64" ]; then GRAALVM_DOWNLOAD_SHA256="${GRAALVM_CURRENT_AARCH64_DOWNLOAD_SHA256}"; fi       && echo "${GRAALVM_DOWNLOAD_SHA256} *graalvm.tar.gz" | sha256sum --check -             && echo "Installing current GraalVM"       && tar --extract --gunzip --file graalvm.tar.gz       && rm graalvm.tar.gz       && mv graalvm-* "${JAVA_CURRENT_HOME}";     fi         && echo "Default Java to LTS GraalVM"     && ln --symbolic "${JAVA_LTS_HOME}" /opt/java/graalvm     && for bin in "$JAVA_LTS_HOME/bin/"*; do         base="$(basename "$bin")";         [ ! -e "/usr/bin/$base" ];         update-alternatives --install "/usr/bin/${base}" "${base}" "${bin}" 1;     done         && echo "Testing GraalVM installation"     && java --version     && javac --version     && native-image --version # buildkit
# Thu, 08 Oct 2026 16:42:30 GMT
ENV GRADLE_VERSION=9.8.1
# Thu, 08 Oct 2026 16:42:30 GMT
ARG GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
# Thu, 08 Oct 2026 16:42:34 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 08 Oct 2026 16:42:34 GMT
USER gradle
# Thu, 08 Oct 2026 16:42:35 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=dce76f55f8e251a3a1f130eb120f30b3d271de2b76c9b0729d316b5a1b6dc01f
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 08 Oct 2026 16:42:35 GMT
USER root
```

-	Layers:
	-	`sha256:06db5ba23986104cd78dcfa853ddf2354c943d2efefc333eca2b447d4559d89c`  
		Last Modified: Sun, 27 Sep 2026 12:12:17 GMT  
		Size: 40.9 MB (40864755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa77813dc560f299656013d742628128cac51fdfda979349e96a9f09497170f`  
		Last Modified: Sun, 27 Sep 2026 12:12:20 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc601185a13c80dd67eed321d4bd5d568245343935fbe92eaab64df462a82f95`  
		Last Modified: Thu, 08 Oct 2026 16:43:15 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e3ff48d4b7f004fc4c9447b7e0da712847c764b5eeb99ceb3b68ea7243c805e`  
		Last Modified: Thu, 08 Oct 2026 16:43:29 GMT  
		Size: 162.8 MB (162810406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc7dd89315b332b4ce624d4d67eba9ccaebfd1738ab08b0580286a7ba215e8b4`  
		Last Modified: Thu, 08 Oct 2026 16:43:35 GMT  
		Size: 326.2 MB (326221556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2f0eb77503a984c95e41017602abd265ba950b84a0a8ce64595365de13644d`  
		Last Modified: Thu, 08 Oct 2026 16:43:29 GMT  
		Size: 151.5 MB (151533611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd724ae113bbee6ff9affb78ff657131ac79477f4a403e7694b1f3a06ecce152`  
		Last Modified: Thu, 08 Oct 2026 16:43:17 GMT  
		Size: 29.3 KB (29335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current-graal-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:e38278273881e2694f9b0d8277b016cf1b3c76fecf4dd8e1be55c070b410248c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.3 MB (11313420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a73cf1e1ebdae153c63a8e3a5ab06b0d7b37ac0972e206b3524e677a83cc3ea0`

```dockerfile
```

-	Layers:
	-	`sha256:044874132de9a0ae11b74753402ea2e9f278c2e63f847c0943a7bda60996aebe`  
		Last Modified: Thu, 08 Oct 2026 16:43:16 GMT  
		Size: 11.3 MB (11272817 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:947a4b1e47ec202c7810f83849f63621431702521fd814639792671283baef05`  
		Last Modified: Thu, 08 Oct 2026 16:43:15 GMT  
		Size: 40.6 KB (40603 bytes)  
		MIME: application/vnd.in-toto+json
