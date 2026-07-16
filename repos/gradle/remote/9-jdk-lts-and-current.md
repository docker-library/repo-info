## `gradle:9-jdk-lts-and-current`

```console
$ docker pull gradle@sha256:bb2d7901e65b0ac6eb52c2c80ba4c3fd74b1250eeb94c5ef9acae79150db716a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `gradle:9-jdk-lts-and-current` - linux; amd64

```console
$ docker pull gradle@sha256:a010054658822c065954905b2205731fae60cdb091d1f68ce87082389c5ce027
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **461.3 MB (461341639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e3fd39748b21b67e88aaeecd504ce3cd5cd8222455d47c694a4fdc0e9df7a2f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 13 Jul 2026 16:06:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.8989.tar --tag 26.04
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:06:30.499069+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:06:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.8989.tar
# Thu, 16 Jul 2026 00:33:35 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:33:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:33:35 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:33:35 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:33:35 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 16 Jul 2026 00:33:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='3b23af7f7dfe82e1dc66509cb825d82d08372f2e7f66ae85a7fdb42a4c84bfcc';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 16 Jul 2026 00:33:58 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:33:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:33:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:33:58 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:14:23 GMT
COPY /opt/java/openjdk /opt/java/openjdk26 # buildkit
# Thu, 16 Jul 2026 01:14:24 GMT
RUN set -o errexit -o nounset     && ln --symbolic /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Thu, 16 Jul 2026 01:14:24 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Thu, 16 Jul 2026 01:14:24 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk26
# Thu, 16 Jul 2026 01:14:24 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:14:24 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:14:24 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 16 Jul 2026 01:14:24 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:14:24 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:14:46 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 16 Jul 2026 01:14:46 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:14:46 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:14:48 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:14:48 GMT
USER gradle
# Thu, 16 Jul 2026 01:14:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:14:49 GMT
USER root
```

-	Layers:
	-	`sha256:ed819469700fe2cd94f44a7c218a84e40cda16dd2e7e5238cbdef33e6153d536`  
		Last Modified: Mon, 13 Jul 2026 22:13:37 GMT  
		Size: 41.6 MB (41580757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3679419df184857c0d317d7cdaad6187f6c0f0b68dd2ed58becf174e28f4c1b`  
		Last Modified: Mon, 13 Jul 2026 22:13:40 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e666c755e74ba5a87e15df0a1b9d6b64867b7cb357ec5b764aafad5f8cf738cb`  
		Last Modified: Thu, 16 Jul 2026 00:34:17 GMT  
		Size: 16.1 MB (16065825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d660575937935d78ba69e82f1114b1420fdffb2513b348f27f097b0a675b3a99`  
		Last Modified: Thu, 16 Jul 2026 00:34:20 GMT  
		Size: 92.7 MB (92713410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aa999427a27ccf5b40661b73e14c839a892175b42264bfc8af5fe9acc344256`  
		Last Modified: Thu, 16 Jul 2026 00:34:17 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81df026c08c860d83b0e500eadc6a629c5391cf2150681cef06c37b4d12c683`  
		Last Modified: Thu, 16 Jul 2026 01:15:19 GMT  
		Size: 94.5 MB (94524490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0a00836c087eaab5c17e49e6614820f055dda2cf1035e25559778491a5dbec`  
		Last Modified: Thu, 16 Jul 2026 01:15:15 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4225ffdb25c2b5dee0b32d75dac22960bde33d8f616ca9454793723277f0c7a9`  
		Last Modified: Thu, 16 Jul 2026 01:15:15 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e4520ca262ee992c7d3dd059c79f04a88888fb40fecef730154716f09322ec`  
		Last Modified: Thu, 16 Jul 2026 01:15:18 GMT  
		Size: 75.8 MB (75831223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0a7daab91f38eee130da7fbac82dc0d40bc55a36c83923c169051d33b6e621`  
		Last Modified: Thu, 16 Jul 2026 01:15:21 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc2ad0e1f423c28f2437dc0099331dbcf98ecbfeff7a9f9439e877fc2a6bc84`  
		Last Modified: Thu, 16 Jul 2026 01:15:16 GMT  
		Size: 25.6 KB (25608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current` - unknown; unknown

```console
$ docker pull gradle@sha256:d64d86e06848bc4a06853271fe3b33796edd9b8249c1b19fd5bd46c4e7ac9172
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9476753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee11c1deb3fb4a4b58665a5a0bf0b69b62a8c25b912a9547cade67ec37c2c59b`

```dockerfile
```

-	Layers:
	-	`sha256:040d887cd6c6fc5770553bc05fbf2c0c915392f0fff29f40ac6fb69e6f6633b2`  
		Last Modified: Thu, 16 Jul 2026 01:15:15 GMT  
		Size: 9.4 MB (9439145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8605f345a938e85270891b10f5b4013a47e0bf7d17775e419e4ae67f3e41d49`  
		Last Modified: Thu, 16 Jul 2026 01:15:15 GMT  
		Size: 37.6 KB (37608 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-lts-and-current` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:09bee935e316bd8b874bfc7d03d6f3c98cb3d8b36aaaf0a206d4f09dfb82179a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **457.4 MB (457400278 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c7bea4e088c5110e0db9b11737edfdd9105b42524e831dd0894fb16be2913a8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9081.tar --tag 26.04
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:25:17.771941+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:25:17 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9081.tar
# Thu, 16 Jul 2026 00:35:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:35:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:35:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:35:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:35:59 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 16 Jul 2026 00:36:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='3b23af7f7dfe82e1dc66509cb825d82d08372f2e7f66ae85a7fdb42a4c84bfcc';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 16 Jul 2026 00:36:19 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:36:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:36:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:36:19 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:14:35 GMT
COPY /opt/java/openjdk /opt/java/openjdk26 # buildkit
# Thu, 16 Jul 2026 01:14:35 GMT
RUN set -o errexit -o nounset     && ln --symbolic /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Thu, 16 Jul 2026 01:14:35 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Thu, 16 Jul 2026 01:14:35 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk26
# Thu, 16 Jul 2026 01:14:35 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:14:35 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:14:35 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 16 Jul 2026 01:14:35 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:14:36 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:14:57 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 16 Jul 2026 01:14:57 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:14:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:15:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:15:00 GMT
USER gradle
# Thu, 16 Jul 2026 01:15:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:15:00 GMT
USER root
```

-	Layers:
	-	`sha256:55237ac9880d41596395b2030d7fc23af58cab7740672ae7f52b996301e5101a`  
		Last Modified: Mon, 13 Jul 2026 22:13:47 GMT  
		Size: 40.7 MB (40705344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:693710ba20392c457fbbb59aaaa97ef6c2550b80ef7c683300be650839bb9d6b`  
		Last Modified: Mon, 13 Jul 2026 22:13:50 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21608d8f28a203775204f147a678a2719e229c02396ad0426feef76d79be250`  
		Last Modified: Thu, 16 Jul 2026 00:36:38 GMT  
		Size: 16.1 MB (16079125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a9b6eb1382f4a3a7a8ef9fd0a8a87da65aae42e3a38f8ddca7ed9e218e9834`  
		Last Modified: Thu, 16 Jul 2026 00:36:41 GMT  
		Size: 91.7 MB (91680704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59196ef31af25668ac06dd8c782d8d62497a4e463d4f7a694dc3a9081be9a6e2`  
		Last Modified: Thu, 16 Jul 2026 00:36:38 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:460a9d197b93ea63af303206ba4fde943e84dbd111bdf9e226b30d8d05ac58c7`  
		Last Modified: Thu, 16 Jul 2026 01:15:32 GMT  
		Size: 93.5 MB (93504232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a85b57c1529f80576fbaa55e7caaf208c17ebc511d5e6ad833f69414c1c2d724`  
		Last Modified: Thu, 16 Jul 2026 01:15:27 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:223b99b0694fd22b20d4b7ec1f2fab15272e26a7c2811f59d334aa028bc3704e`  
		Last Modified: Thu, 16 Jul 2026 01:15:27 GMT  
		Size: 1.4 KB (1410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bda70701b5c8038b36b5a96cd19a77b3abf1246efb14c1b836209d614b23e03`  
		Last Modified: Thu, 16 Jul 2026 01:15:31 GMT  
		Size: 74.8 MB (74801224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7ce7b0712b306516ffd5d364c7fb0fa5b18549262a2da67a17c60d4f768147`  
		Last Modified: Thu, 16 Jul 2026 01:15:33 GMT  
		Size: 140.6 MB (140596021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d235bf58c3bf7e5a3ba948be818e8098bfedd7fbaf4bcd7cda115c2a3b827bbc`  
		Last Modified: Thu, 16 Jul 2026 01:15:28 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current` - unknown; unknown

```console
$ docker pull gradle@sha256:f5e2dbdd46d8e52bc8dfc1cd026ad9068a6cdc6516fcf8b1df5bd4fd6d119459
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9670143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54d3f608af338b0810e6bef1086e712b75cb4893223bc7eb0fbdc29b31873c82`

```dockerfile
```

-	Layers:
	-	`sha256:ead08bb2e282c909c5c13edb0b56463f3a921289806c69d813637b0cb655442c`  
		Last Modified: Thu, 16 Jul 2026 01:15:28 GMT  
		Size: 9.6 MB (9632201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64994e919fc2f525fea9cb2a5a37026011026f3f4dd41cc6a15e14b629af0280`  
		Last Modified: Thu, 16 Jul 2026 01:15:27 GMT  
		Size: 37.9 KB (37942 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-lts-and-current` - linux; ppc64le

```console
$ docker pull gradle@sha256:c089512d883b3ba7f150b71d6539f103608e082c5fae9dac9bf2aa70de92cc69
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **472.4 MB (472360034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e48a6092745d06cfed307a737ff179aed202081b6e7cab8b889cd592607ead28`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 13 Jul 2026 15:58:42 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9051.tar --tag 26.04
# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T15:58:43.512039+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T15:58:43.512039+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 15:58:43 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9051.tar
# Thu, 16 Jul 2026 00:39:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:39:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:39:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:39:44 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:39:44 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 16 Jul 2026 00:40:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='3b23af7f7dfe82e1dc66509cb825d82d08372f2e7f66ae85a7fdb42a4c84bfcc';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 16 Jul 2026 00:40:23 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:40:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:40:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:40:24 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:20:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk26 # buildkit
# Thu, 16 Jul 2026 01:20:59 GMT
RUN set -o errexit -o nounset     && ln --symbolic /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Thu, 16 Jul 2026 01:21:00 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Thu, 16 Jul 2026 01:21:00 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk26
# Thu, 16 Jul 2026 01:21:00 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:21:00 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:21:00 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 16 Jul 2026 01:21:00 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:21:00 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:21:42 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 16 Jul 2026 01:21:42 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:21:42 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:21:49 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:21:49 GMT
USER gradle
# Thu, 16 Jul 2026 01:21:50 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:21:50 GMT
USER root
```

-	Layers:
	-	`sha256:da93fc9e7a08b0f170c4b61e1cf9a2115ba0a3d68cfa67692c4dceee9966cda5`  
		Last Modified: Mon, 13 Jul 2026 22:13:58 GMT  
		Size: 46.8 MB (46799499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c25de32f797d08e02ab7b61d6f6773457c56c2063dd25d4c9fb0a292da97b1e`  
		Last Modified: Mon, 13 Jul 2026 22:14:01 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68ecfda4bf4276f19ae0f3c6a0e2d1f7796d25aacc9edc75033cfffc05124e30`  
		Last Modified: Thu, 16 Jul 2026 00:41:14 GMT  
		Size: 15.5 MB (15486862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baa679f5183b23be76d06e58592437b11ddee9677be20e6f471d646a7839462`  
		Last Modified: Thu, 16 Jul 2026 00:41:16 GMT  
		Size: 92.1 MB (92053985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a7b71fefff34488ca43e2bd9ccba6100e182cd5fd7ac45e331d8f962d0f775`  
		Last Modified: Thu, 16 Jul 2026 00:41:13 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604e2b71db63fdc0f505153e6ce849a46dc731dba2dad2c08ba8b04354342068`  
		Last Modified: Thu, 16 Jul 2026 01:22:53 GMT  
		Size: 93.9 MB (93901828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c89df642083b13f89f468ae19fa38ce29953aab6c4ee1223e37ca148fbaf191c`  
		Last Modified: Thu, 16 Jul 2026 01:22:47 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9922319f792cacb9cecf3276f5a31f2251a75fe23073eb6f108e7509607318`  
		Last Modified: Thu, 16 Jul 2026 01:22:47 GMT  
		Size: 1.4 KB (1417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6023d14fcfe972a649a657fe744f29c060af2fdbec1351abf9f31f58404d10b7`  
		Last Modified: Thu, 16 Jul 2026 01:22:53 GMT  
		Size: 83.5 MB (83517156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d772f07d33a4e6142efdb945c31579cc04f120b2d1b2546bc017418790b15b`  
		Last Modified: Thu, 16 Jul 2026 01:22:54 GMT  
		Size: 140.6 MB (140596023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f765bd1f5c27aa854e8c7c8e7324fcd91637da6cfbb317e3442db464f5bb3be4`  
		Last Modified: Thu, 16 Jul 2026 01:22:49 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current` - unknown; unknown

```console
$ docker pull gradle@sha256:534c52c236ecfba2e0b8b7e980d92f41ee504b4db39fb92906585bdd0671d29d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9521135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d68c010323bc0a6556148ba228ba4a78f067c60a85e7926ea03fcef684ffff91`

```dockerfile
```

-	Layers:
	-	`sha256:b4f0c64ce2333f203fc571414d63c14083b35b3ccd8020a8f1557418b55e8b6b`  
		Last Modified: Thu, 16 Jul 2026 01:22:48 GMT  
		Size: 9.5 MB (9483395 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c8b80a4462db86382d42ba0a07922d42baf074402a03569f0bda06f710833b6`  
		Last Modified: Thu, 16 Jul 2026 01:22:47 GMT  
		Size: 37.7 KB (37740 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk-lts-and-current` - linux; s390x

```console
$ docker pull gradle@sha256:088f8a3f5b765ac4623e2e4461ec31725f9c484fdb13fe06b6a2b42a3c0f2000
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **452.8 MB (452790003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53e688c9c6c55c45c7d77fb30a46f6d2f7c2b8b13675a5bd14a0dbc7ac3cea39`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 13 Jul 2026 21:46:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9066.tar --tag 26.04
# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T21:46:15.064196+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T21:46:15.064196+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 21:46:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9066.tar
# Thu, 16 Jul 2026 00:26:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:26:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:26:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:26:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:26:14 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 16 Jul 2026 00:26:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='69264a7a211bf5029830d07bc3370f879769d62ebc5b5488e90c9343a2da0e1f';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='3e4287cb98870ba824ed698854bdc27cff984254caf66dd12cc291e7bfdde26b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='72b0fbb201716ca465ab704ec0fb12971abab3fdde5ae8d03b125a273522cf05';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='3b23af7f7dfe82e1dc66509cb825d82d08372f2e7f66ae85a7fdb42a4c84bfcc';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='24b497d10acb6ee706ca30e1c8a929785c250cad54c5c12f1f8f93c3c06a53f7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 16 Jul 2026 00:26:30 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:26:30 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:26:30 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 00:26:30 GMT
CMD ["jshell"]
# Thu, 16 Jul 2026 01:14:00 GMT
COPY /opt/java/openjdk /opt/java/openjdk26 # buildkit
# Thu, 16 Jul 2026 01:14:00 GMT
RUN set -o errexit -o nounset     && ln --symbolic /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Thu, 16 Jul 2026 01:14:01 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Thu, 16 Jul 2026 01:14:01 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk26
# Thu, 16 Jul 2026 01:14:01 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:14:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:14:01 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Thu, 16 Jul 2026 01:14:01 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:14:01 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:14:18 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 16 Jul 2026 01:14:18 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:14:18 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:14:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:14:23 GMT
USER gradle
# Thu, 16 Jul 2026 01:14:23 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:14:23 GMT
USER root
```

-	Layers:
	-	`sha256:8bf47cf5e2e1fd91308da2c6ac3ffd390f5fe8d4eaad8f16c90039fac614fdb4`  
		Last Modified: Mon, 13 Jul 2026 22:14:29 GMT  
		Size: 41.2 MB (41157914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fee76025823faad7e29b9d2c280cb2c471faa01b3c79c303d1c8a2c99118ccbb`  
		Last Modified: Mon, 13 Jul 2026 22:14:32 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a3cf81bd7ed23cb172c61687c1fcf3b226c794a25d8e999e5cd7e0d2d4d2fd0`  
		Last Modified: Thu, 16 Jul 2026 00:26:55 GMT  
		Size: 14.6 MB (14639794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5c70bc993b1fa30b22a520094d80970f100fa5c8e2ad6820ad26844b9de540`  
		Last Modified: Thu, 16 Jul 2026 00:26:57 GMT  
		Size: 88.6 MB (88554217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad468fdf695ab2b672748b455140686fc9be29806d57e058769d49f18849b2b6`  
		Last Modified: Thu, 16 Jul 2026 00:26:55 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d411634a13e04d405b7270fe7364c9100151748c762a7033f18a0cb7e5fe21`  
		Last Modified: Thu, 16 Jul 2026 01:15:03 GMT  
		Size: 90.5 MB (90536864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82e2b0fc7d2f564a32420d59fe5491e3f7bec66bb53b0e187bb544d5217f0474`  
		Last Modified: Thu, 16 Jul 2026 01:15:00 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:467e4082ab651faa823c88b9de0806446f8ced826950d1035d7acbc2f0a02d35`  
		Last Modified: Thu, 16 Jul 2026 01:15:00 GMT  
		Size: 1.4 KB (1412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:524b466d131219325078d2c55288db702bc95e66683caec57b9015d2ede4afa8`  
		Last Modified: Thu, 16 Jul 2026 01:15:03 GMT  
		Size: 77.3 MB (77300523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86805df8abe2a945a7bd54cf64ca67780a9eb36903472fe8dc3ea4a305b110f7`  
		Last Modified: Thu, 16 Jul 2026 01:15:04 GMT  
		Size: 140.6 MB (140596021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2e3e0972c95f30c7312d074111fbd61e7ef65bd184f9ab5545cbfbbdfbdc1ad`  
		Last Modified: Thu, 16 Jul 2026 01:15:01 GMT  
		Size: 372.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk-lts-and-current` - unknown; unknown

```console
$ docker pull gradle@sha256:9ac44b3a78174db3605bd95fa593ce412cf1812e063d0ae49bf08b17fcfa2667
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9375344 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06063d0044ecbed75c5986ae8f254177f175e1120bc7280db26f93e427927e8`

```dockerfile
```

-	Layers:
	-	`sha256:be3924c6570de36c3b339e4e73656143d93be6ef59fb3ae0d830f3c450af4e89`  
		Last Modified: Thu, 16 Jul 2026 01:15:01 GMT  
		Size: 9.3 MB (9337738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97889b5a8378a7e7a54aaa2c0766c806274bf2b6eacd3959e9883518a498c11b`  
		Last Modified: Thu, 16 Jul 2026 01:15:00 GMT  
		Size: 37.6 KB (37606 bytes)  
		MIME: application/vnd.in-toto+json
