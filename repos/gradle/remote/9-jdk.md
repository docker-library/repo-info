## `gradle:9-jdk`

```console
$ docker pull gradle@sha256:934a520ae0cc1f46764c2e6e1f6510d2fcdf6a7e12328b6aee34192d14f171a2
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

### `gradle:9-jdk` - linux; amd64

```console
$ docker pull gradle@sha256:f6b69e0049b648169ec38fb798074590b071caca056d8f0f057c824dab8806e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **366.8 MB (366816241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d99a0b41a6d502d72da7b70bc5027efd9c14003d51d748f025e0febeab60704`
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
# Thu, 16 Jul 2026 01:13:37 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:13:37 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:13:37 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:13:37 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:13:37 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:13:58 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 16 Jul 2026 01:13:58 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:13:58 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:14:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:14:00 GMT
USER gradle
# Thu, 16 Jul 2026 01:14:01 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:14:01 GMT
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
	-	`sha256:a9e8a68379dc2769fa395956039d422e396b8722047ad61bd830a8ca415cfb74`  
		Last Modified: Thu, 16 Jul 2026 01:14:26 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af9148686b5f4fc471dd70384b3c0b4b2b90bfd0d25dc8dbe0500d563368ff00`  
		Last Modified: Thu, 16 Jul 2026 01:14:29 GMT  
		Size: 75.8 MB (75830583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11f62f517fdde43d397924256d1e5c8a7fc584c2158d5cda7cbfb05859b29a3`  
		Last Modified: Thu, 16 Jul 2026 01:14:30 GMT  
		Size: 140.6 MB (140596026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e9856ddf265dae59fa379af2bcdbe8bb307753abd2e6f81e2489a74e8f1cd6`  
		Last Modified: Thu, 16 Jul 2026 01:14:26 GMT  
		Size: 25.6 KB (25614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk` - unknown; unknown

```console
$ docker pull gradle@sha256:7e937a1760b43d229845b39cd733f41836c1aa854c3588b13d4a7c6f87f1d3e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9352040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf71200e9f24f4e061430c8112013f482a42fbbff70cc9f8bd50b490e9fec798`

```dockerfile
```

-	Layers:
	-	`sha256:0433c57011f457ad7cb9b123f137a1e1ebb86114851930d8ca364b6e2bdb44d1`  
		Last Modified: Thu, 16 Jul 2026 01:14:26 GMT  
		Size: 9.3 MB (9321336 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:691b139647a18d41ba4ea6ab445ef63e4159875f00f28d0e169fa0315c941f06`  
		Last Modified: Thu, 16 Jul 2026 01:14:26 GMT  
		Size: 30.7 KB (30704 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:2966142c55a02b2617ee36c455ed19d0a6bb20b96eb32ed74e76bf7c4fbc8cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.9 MB (363895465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4611ea2f1d5ef3fd88d92fb57d05af17855728f9a721460da088db8b65326ca5`
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
# Thu, 16 Jul 2026 01:13:34 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:13:34 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:13:34 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:13:34 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:13:34 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:13:55 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 16 Jul 2026 01:13:55 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:13:55 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:13:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:13:58 GMT
USER gradle
# Thu, 16 Jul 2026 01:13:58 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:13:58 GMT
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
	-	`sha256:d0e0055db44c58c517c836e5e8dd883ed86425ce1c5f6264c05587d62d712a2d`  
		Last Modified: Thu, 16 Jul 2026 01:14:23 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beff8dddda943059a08f571c6c7f6d2f438c8176ed9f78f86d99c3dbfd7cba91`  
		Last Modified: Thu, 16 Jul 2026 01:14:26 GMT  
		Size: 74.8 MB (74800916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f694c84439cf0ae58e9e89f9c6d5a9ccfc1c033432eaab67cc7a411aea12be89`  
		Last Modified: Thu, 16 Jul 2026 01:14:28 GMT  
		Size: 140.6 MB (140596022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571fb4f7ea82d7237603b925746e84b11da0729abd6224b4c2381bba19d58e7f`  
		Last Modified: Thu, 16 Jul 2026 01:14:23 GMT  
		Size: 29.3 KB (29331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk` - unknown; unknown

```console
$ docker pull gradle@sha256:9050e104191d9f0ad84717c1dc33a17e1dba830eae36bd3543999a88f69705cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9546204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef9155942e2f2768a94d289c4dfa8f4836002bec5b5667298555e30306bc8640`

```dockerfile
```

-	Layers:
	-	`sha256:6780e0c0ca839631ea631d6d39e76c995df8e950c1a0c3d5155dfd6aa8a55456`  
		Last Modified: Thu, 16 Jul 2026 01:14:23 GMT  
		Size: 9.5 MB (9515111 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21fc80982c4a70a1d4e9a59aaf3b9c2961248755a1103091a15defe3ef86a05b`  
		Last Modified: Thu, 16 Jul 2026 01:14:23 GMT  
		Size: 31.1 KB (31093 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk` - linux; ppc64le

```console
$ docker pull gradle@sha256:3e4b7c21c03ecb51a69a4bbea8f48c6cee6360080311121a6510e8f080977b65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **378.5 MB (378458354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce9c28f4d7be883735e62268696ac704b092495f004245b0cf4ee003670e1639`
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
# Thu, 16 Jul 2026 01:11:55 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:11:55 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:11:55 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:11:55 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:11:55 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:12:57 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 16 Jul 2026 01:12:57 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:12:57 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:13:03 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:13:03 GMT
USER gradle
# Thu, 16 Jul 2026 01:13:04 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:13:04 GMT
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
	-	`sha256:ea453e64e094ebcd2f862c8eb32eba8ad9916a832608fda1a8db6180c93157e6`  
		Last Modified: Thu, 16 Jul 2026 01:13:58 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a9e75a85f0450e21c66828ed518cce7afb5a2a0e367951dfd2fdfaff9f838d6`  
		Last Modified: Thu, 16 Jul 2026 01:14:02 GMT  
		Size: 83.5 MB (83517583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6112a312cad5edff20436949afabbea0864d1cd08f5daf8a5a25fb2b3c9b936d`  
		Last Modified: Thu, 16 Jul 2026 01:14:03 GMT  
		Size: 140.6 MB (140596024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a3afbe83c61b0062828950371fb042850266bc022e529a0fa84716b4f3fd614`  
		Last Modified: Thu, 16 Jul 2026 01:13:58 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk` - unknown; unknown

```console
$ docker pull gradle@sha256:0939a469c2424afe4dd2fcf4cc9439e845f5886d1230d68e67f0c8ad9783c6c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9415167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ec2ad22cd832a5cf52b5ec10b0fe6ddb180682ed63e88128cbac152a9645171`

```dockerfile
```

-	Layers:
	-	`sha256:9373e4369fb9a3421aa9a53da8d0b425748b8da91de36bdb712a4543638be8d5`  
		Last Modified: Thu, 16 Jul 2026 01:13:58 GMT  
		Size: 9.4 MB (9384295 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2c08e1b7b9e387943b6eb7f4ab06dd1bb7ce2f2031de7e6ee60c1bfbb2747253`  
		Last Modified: Thu, 16 Jul 2026 01:13:57 GMT  
		Size: 30.9 KB (30872 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:9-jdk` - linux; s390x

```console
$ docker pull gradle@sha256:866740aba7bcf75d2f31e465e14ae877b7138eb3033e8142698acb4eacf3b007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.3 MB (362252938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88be6ca8039134dcd410e506e066cbf8534fae26b0883609ed883fb038e3d28e`
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
# Thu, 16 Jul 2026 01:11:53 GMT
CMD ["gradle"]
# Thu, 16 Jul 2026 01:11:53 GMT
ENV GRADLE_HOME=/opt/gradle
# Thu, 16 Jul 2026 01:11:53 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Thu, 16 Jul 2026 01:11:53 GMT
VOLUME [/home/gradle/.gradle]
# Thu, 16 Jul 2026 01:11:53 GMT
WORKDIR /home/gradle
# Thu, 16 Jul 2026 01:12:11 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Thu, 16 Jul 2026 01:12:11 GMT
ENV GRADLE_VERSION=9.6.1
# Thu, 16 Jul 2026 01:12:11 GMT
ARG GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
# Thu, 16 Jul 2026 01:12:15 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Thu, 16 Jul 2026 01:12:15 GMT
USER gradle
# Thu, 16 Jul 2026 01:12:16 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=9c0f7faeeb306cb14e4279a3e084ca6b596894089a0638e68a07c945a32c9e14
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Thu, 16 Jul 2026 01:12:16 GMT
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
	-	`sha256:16f4d22874284353e85094bfc7d6e65f3aacf4aa36d704aeb0611309cf6d97c9`  
		Last Modified: Thu, 16 Jul 2026 01:12:52 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ae0ce1ba29312219bbb7313cb411ab0cb56cdedae984e7ea40f9fb2d4131f4`  
		Last Modified: Thu, 16 Jul 2026 01:12:54 GMT  
		Size: 77.3 MB (77300598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8191efbe5ccaa9dfd0e107178fde654228d0c197997fe85f90e64a03548725`  
		Last Modified: Thu, 16 Jul 2026 01:12:55 GMT  
		Size: 140.6 MB (140596020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd38fdab5a3b9a386c78324c89f4f08c325344ac18c4f35460392c8fa0428bc`  
		Last Modified: Thu, 16 Jul 2026 01:12:52 GMT  
		Size: 374.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:9-jdk` - unknown; unknown

```console
$ docker pull gradle@sha256:2a67156127b6cfbd056be991cc3492bd84712657cd146101c3c974064bad6614
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.3 MB (9270527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:828f683d8343b74f817afc49fae112c73c252f77dfc5b179c2cd78c0e846279b`

```dockerfile
```

-	Layers:
	-	`sha256:2364efb912933554ed7648d02746dfa811334c2229c780cfad6184a9d2690a88`  
		Last Modified: Thu, 16 Jul 2026 01:12:52 GMT  
		Size: 9.2 MB (9239825 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0edc643e44b4e4344bc632c4d2f92405ccdeacec30d27d29c3654afc76b9a4c`  
		Last Modified: Thu, 16 Jul 2026 01:12:52 GMT  
		Size: 30.7 KB (30702 bytes)  
		MIME: application/vnd.in-toto+json
