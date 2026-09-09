## `gradle:jdk21-resolute`

```console
$ docker pull gradle@sha256:42476a6a7f47c351b67769e87fcf897a97b07d3859b8a893fb44e8bc8431b02a
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

### `gradle:jdk21-resolute` - linux; amd64

```console
$ docker pull gradle@sha256:58861191fe658b5554b9c2da0a2f45a90ef865b1d997c3deb265e0551ee41c65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **453.9 MB (453898144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58cdf053bd50ad56a00c73711264d05d28d261e3d1fc05bafa31983adb067774`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 01 Sep 2026 20:36:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9485.tar --tag 26.04
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:37:00.369571+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:37:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9485.tar
# Wed, 09 Sep 2026 02:20:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:20:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:20:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:20:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:20:31 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 02:20:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:20:38 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:20:38 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:20:38 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:20:38 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 03:18:05 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 03:18:05 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 03:18:05 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 03:18:05 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 03:18:05 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 03:18:26 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 03:18:26 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 03:18:26 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 03:18:29 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 03:18:29 GMT
USER gradle
# Wed, 09 Sep 2026 03:18:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 03:18:30 GMT
USER root
```

-	Layers:
	-	`sha256:08f5f5b2a2b0d2a960804adef3bd1783c5f2c20f42db5e290dc05d9529d11ae2`  
		Last Modified: Wed, 02 Sep 2026 10:46:03 GMT  
		Size: 41.6 MB (41602703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a7c4f6d8c3863707c14af40aad062db2bb477271491c7d3e99e03394dd261e3`  
		Last Modified: Wed, 02 Sep 2026 10:46:06 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df76245fe3dab61368b5c851ed001fd50dd765898254fedb0da3cf8597b3d3e6`  
		Last Modified: Wed, 09 Sep 2026 02:20:58 GMT  
		Size: 30.4 MB (30351262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d57d902e9e5e50b186e039ba7a695381288b18e88e6de841d7be9595fa2c24c1`  
		Last Modified: Wed, 09 Sep 2026 02:21:01 GMT  
		Size: 158.1 MB (158123592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edecb4850e95bd8045aa3cf36a1944742ca284a3d9a0f10a5fd78129072511a9`  
		Last Modified: Wed, 09 Sep 2026 02:20:57 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c1b6537a2163c06983288b0b7fe20c52b66723236c13c456e354694461c546f`  
		Last Modified: Wed, 09 Sep 2026 02:20:57 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cc7c09265e1ba56768413ada21a025a9fdd8495fd0fad64e94e5e718262153`  
		Last Modified: Wed, 09 Sep 2026 03:18:56 GMT  
		Size: 1.3 KB (1286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9fa12ebfb5cdcc1ffc4046bd1dcac6d97789629cd3511f960e39d23f2f4476`  
		Last Modified: Wed, 09 Sep 2026 03:19:00 GMT  
		Size: 72.4 MB (72436613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542c964e4fc7eb73884e8d73356e2ce91d3b3ee99361489bf47d6bfe7bdf916e`  
		Last Modified: Wed, 09 Sep 2026 03:19:01 GMT  
		Size: 151.4 MB (151354017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15008b8b2a63507e969cb6e109083bc7c0d255dc15128d018ad36bb17eccd65a`  
		Last Modified: Wed, 09 Sep 2026 03:18:56 GMT  
		Size: 25.6 KB (25623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:12d7d56adae7f4470ac9412a8cd050f50357258353da8c91e8a487b9f3725a71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9485076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:622e287512ecb6b2dac29a1524fbe68672b4ade6592babf459e5c97affefcdf2`

```dockerfile
```

-	Layers:
	-	`sha256:4d66e1bb44c15b9d5d412f71b86eccb25b1f215c0e9cc29a94d8aa740195e34a`  
		Last Modified: Wed, 09 Sep 2026 03:18:56 GMT  
		Size: 9.5 MB (9459218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1e64a11f4c9da858a4c974f802f74e85c396f2761a5a533ec4fcde893e78110`  
		Last Modified: Wed, 09 Sep 2026 03:18:56 GMT  
		Size: 25.9 KB (25858 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-resolute` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:d447529c09ea0d5769d7d661512f007c9e18a3eb78dacd7b5d97f17d70a205e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **450.1 MB (450056710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc6bde0c7b2506effd5179c4d716a14b1e3024bfc0aa0d0007da98ab7b33a87`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9504.tar --tag 26.04
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:40:13.648724+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:40:13 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9504.tar
# Wed, 09 Sep 2026 02:17:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:17:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:17:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:17:57 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:17:57 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 02:18:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:18:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:18:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:18:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:18:05 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 03:32:47 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 03:32:47 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 03:32:47 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 03:32:47 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 03:32:47 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 03:33:09 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 03:33:09 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 03:33:09 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 03:33:13 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 03:33:13 GMT
USER gradle
# Wed, 09 Sep 2026 03:33:14 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 03:33:14 GMT
USER root
```

-	Layers:
	-	`sha256:56f0dbdea7403d4e7167e2c10f4212e62e9887f6701e295380c2c043a7f360a4`  
		Last Modified: Wed, 02 Sep 2026 10:46:14 GMT  
		Size: 40.7 MB (40734829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7189ca5dbddf377ce4968cfdcd1b9dcb34cd8528a48f0a7925b6c0ae89cf7603`  
		Last Modified: Wed, 02 Sep 2026 10:46:17 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ce7e7c8b5a6600795dbf42c0b372f09e0bfa1e97652c4ed30b95863a850ef1e`  
		Last Modified: Wed, 09 Sep 2026 02:18:26 GMT  
		Size: 30.1 MB (30053884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f59fdc62c7061da79fe989270e1d96b02bafbce357ec86478314487df26c904a`  
		Last Modified: Wed, 09 Sep 2026 02:18:29 GMT  
		Size: 156.4 MB (156405922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42cea0d7907d75dabff279864405c196b837242d89ca26a52362439d8b01fc6`  
		Last Modified: Wed, 09 Sep 2026 02:18:25 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5affe297bf7aa523af34e8e48269e7d4962b2f350ed9793f60d81a96b58a75e6`  
		Last Modified: Wed, 09 Sep 2026 02:18:25 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b40bad05647730f23a51000cb2a7adfa46b0c3cbef8a5991964d41cf3f99793`  
		Last Modified: Wed, 09 Sep 2026 03:33:39 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5400e1cd3d095e1af118223f0ad4578ad7a45bec55fce5b5228ccecccd6a2a4`  
		Last Modified: Wed, 09 Sep 2026 03:33:43 GMT  
		Size: 71.5 MB (71474417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7fab9eb680efb9d460204f7f74786e82ead3bbe29d74e4a4894090aeb834478`  
		Last Modified: Wed, 09 Sep 2026 03:33:44 GMT  
		Size: 151.4 MB (151353987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d151a339923ef1948e9489abae2591de3e48ec488df664382485a47fce4a11ec`  
		Last Modified: Wed, 09 Sep 2026 03:33:39 GMT  
		Size: 29.3 KB (29339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:52cf60ea9e35dc1241d0f5dd4f388c56d6a1795a679eb79a314e347c2c455671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9678861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b639cbcd235a6b5454a281a25d5e79d4c1a5b819eec5c44ceb614dd97c6483d`

```dockerfile
```

-	Layers:
	-	`sha256:e45bb6dc0cedce383e8260cb62a11e674f8cd444fe8a899f162dc4d61e72673b`  
		Last Modified: Wed, 09 Sep 2026 03:33:40 GMT  
		Size: 9.7 MB (9652807 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9309732013983785c381134a1d071daebf67bf31576712eeee1639d47f02183b`  
		Last Modified: Wed, 09 Sep 2026 03:33:39 GMT  
		Size: 26.1 KB (26054 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-resolute` - linux; ppc64le

```console
$ docker pull gradle@sha256:37ec11c3d45ad1846753d652e2ea904ba68d4da1d410291d9cb4e9c2fb531741
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **467.8 MB (467775052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f3b6e9a5a921d42476e774279332ace4a44af3eaabbe691a919b2d05b81f47`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Tue, 01 Sep 2026 20:39:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.9376.tar --tag 26.04
# Tue, 01 Sep 2026 20:39:29 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 01 Sep 2026 20:39:29 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 01 Sep 2026 20:39:29 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 01 Sep 2026 20:39:29 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-01T20:39:29.562440+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:39:29 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-01T20:39:29.562440+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 01 Sep 2026 20:39:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-e1c60b1bc0d25a2115f571511888c62b/images/.temp_layer.control_data.9376.tar
# Wed, 09 Sep 2026 05:03:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 05:03:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 05:03:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 05:03:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 05:03:12 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 05:03:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 05:03:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 05:03:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 05:03:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 05:03:48 GMT
CMD ["jshell"]
# Wed, 09 Sep 2026 08:49:01 GMT
CMD ["gradle"]
# Wed, 09 Sep 2026 08:49:01 GMT
ENV GRADLE_HOME=/opt/gradle
# Wed, 09 Sep 2026 08:49:01 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Wed, 09 Sep 2026 08:49:01 GMT
VOLUME [/home/gradle/.gradle]
# Wed, 09 Sep 2026 08:49:02 GMT
WORKDIR /home/gradle
# Wed, 09 Sep 2026 08:49:47 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Wed, 09 Sep 2026 08:49:47 GMT
ENV GRADLE_VERSION=9.7.1
# Wed, 09 Sep 2026 08:49:47 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Wed, 09 Sep 2026 08:49:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Wed, 09 Sep 2026 08:49:56 GMT
USER gradle
# Wed, 09 Sep 2026 08:50:00 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Wed, 09 Sep 2026 08:50:00 GMT
USER root
```

-	Layers:
	-	`sha256:c1b37b8cb426f7a210dd8786c06f171c63481c6db3c316a2614bec3766a0ae59`  
		Last Modified: Wed, 02 Sep 2026 10:46:24 GMT  
		Size: 46.8 MB (46812713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7921daa91a183933e9f6e51aa305ae2abf302203e4844d9714a4990c4dd3996b`  
		Last Modified: Wed, 02 Sep 2026 10:46:27 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b65147deb06f480107780034bf18cfabf673c35f30579f6eea96344753d592`  
		Last Modified: Wed, 09 Sep 2026 05:04:58 GMT  
		Size: 32.0 MB (32041761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:175baafa17079b096934d72470e2506b2d6e63b4fb3424a19d1815b7ea1ee6ae`  
		Last Modified: Wed, 09 Sep 2026 05:05:18 GMT  
		Size: 158.3 MB (158287711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:485d44974f25f2bd232f56c67c02f1eef0f48ca2d5fa722e78d32efadb3c6e1e`  
		Last Modified: Wed, 09 Sep 2026 05:05:15 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df125f2a35a8761f8d3111700c51b975d03ae171e545ce9a297a91084b2bef23`  
		Last Modified: Wed, 09 Sep 2026 05:05:15 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f993e6a1faacf38f726da79f57ab0045b7167575baa691cf56a0dff7e15b2e20`  
		Last Modified: Wed, 09 Sep 2026 08:51:00 GMT  
		Size: 1.3 KB (1285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ab09a3fd7f72836c2d1340b86f71b293193c940f222cd97a2f70df54a711aa6`  
		Last Modified: Wed, 09 Sep 2026 08:51:04 GMT  
		Size: 79.3 MB (79274131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8244d4bcc376614acc14d4cfe0090fdcfd6c9893ba52f8efa3864d5ba711036`  
		Last Modified: Wed, 09 Sep 2026 08:51:05 GMT  
		Size: 151.4 MB (151354024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55ad1b8188e5ceb80b689896cb679f406625ec94676927255c1838b835126ce`  
		Last Modified: Wed, 09 Sep 2026 08:51:00 GMT  
		Size: 379.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:13bb037f695da8a1fafeb68bef3c89b912f73c034269c8a2eb9cf15b590dec1b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9564726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5a6066254edc920b11fe3809bd162de1e11c349adfc5c6ae7fd3e7c878f2ef4`

```dockerfile
```

-	Layers:
	-	`sha256:a85f99b26fe0973eac7d08aaa506c4e4f21d11727a4497c27f069c24a806f563`  
		Last Modified: Wed, 09 Sep 2026 08:51:01 GMT  
		Size: 9.5 MB (9538796 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4eb76ac07ff247e625812a66f489f5a6754308e645f90a1fd5f93c618be49d7e`  
		Last Modified: Wed, 09 Sep 2026 08:51:00 GMT  
		Size: 25.9 KB (25930 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk21-resolute` - linux; s390x

```console
$ docker pull gradle@sha256:de96aa90d0876c9aade274a9fc5bc9b8a890c6a0248fc632348a2bad5a04e668
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **434.0 MB (434036437 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30f20fd5772bcd145e8ad26a356a0f12efd8b26466b53a6aa83fab9ef86b3174`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Mon, 17 Aug 2026 08:51:48 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9176.tar --tag 26.04
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T08:51:49.237511+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T08:51:49.237511+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 08:51:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9176.tar
# Fri, 21 Aug 2026 18:28:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:28:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:28:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:28:02 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:28:02 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Fri, 21 Aug 2026 18:29:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e4446ff06a276155697597cc0f1b15da004ff083f4964a35271ecee567177370';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='eba38e871b02d407897bfe017ea35352dfc1420ef6d2112425b0c67325ca509d';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='082dac6781cd86c1c1903608b8f354c6dc453313d81881a1e87b9a22663ac5ca';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2a57a86afa2e461757acc6c2bd198a3fdae4393d8d37fd66b6244e713c3c42ea';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:29:53 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:29:53 GMT
CMD ["jshell"]
# Fri, 21 Aug 2026 18:59:20 GMT
CMD ["gradle"]
# Fri, 21 Aug 2026 18:59:20 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 21 Aug 2026 18:59:20 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle # buildkit
# Fri, 21 Aug 2026 18:59:20 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 21 Aug 2026 18:59:20 GMT
WORKDIR /home/gradle
# Fri, 21 Aug 2026 18:59:35 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 21 Aug 2026 18:59:35 GMT
ENV GRADLE_VERSION=9.7.1
# Fri, 21 Aug 2026 18:59:35 GMT
ARG GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
# Fri, 21 Aug 2026 18:59:39 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking Gradle download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 21 Aug 2026 18:59:39 GMT
USER gradle
# Fri, 21 Aug 2026 18:59:40 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=acd53f1edaf02f1a8ff99879f8a34b302661a057d9b063ae9e35b552f804d20a
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 21 Aug 2026 18:59:40 GMT
USER root
```

-	Layers:
	-	`sha256:b1aa13925330270ece5314333db4d2d0539a9fa79fb104cd43d7595fe5aa69fc`  
		Last Modified: Mon, 17 Aug 2026 11:36:08 GMT  
		Size: 41.1 MB (41147115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d201668f161ff89d301e6e21bd71b4f685b5539cc6d2cda9e1c09a9dd2d0d04`  
		Last Modified: Mon, 17 Aug 2026 11:36:11 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7114632ae83df1e1502d6c642373bcccc679076b30514178c2bf4cd22320d390`  
		Last Modified: Fri, 21 Aug 2026 18:28:36 GMT  
		Size: 22.9 MB (22860065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7236e8b3b9c4cd1bba412ac0a9e33fba5ca470a9224ca6411e9052e612faa222`  
		Last Modified: Fri, 21 Aug 2026 18:30:21 GMT  
		Size: 147.4 MB (147355014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ae8dc2c1b181da54fa65382cf2f7ef4e61e0a2c55283f29c35016d0d98adc4`  
		Last Modified: Fri, 21 Aug 2026 18:30:19 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a89b82f237c2f2219bb3fd779e35cc9af885e63c8b11929a1b29fe77b52cc7e8`  
		Last Modified: Fri, 21 Aug 2026 18:30:19 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:135e2e1ca550f2fec9a3bcc261b0e3f4bc778cf64116cc65646718e06eb079ed`  
		Last Modified: Fri, 21 Aug 2026 19:00:19 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6f842cddd21e46a65a80246f4f52567c6e832087d9cf54836ed27777d80c968`  
		Last Modified: Fri, 21 Aug 2026 19:00:21 GMT  
		Size: 71.3 MB (71315522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba162a1f3e7759740f41c55bd2c42333c9cea76c9905310d00ade6d1cde9ec5`  
		Last Modified: Fri, 21 Aug 2026 19:00:22 GMT  
		Size: 151.4 MB (151354013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e4676e5cb30f1c959a8acbacde12f44fdbc48f3562fbe852bf86ad1adc6faa`  
		Last Modified: Fri, 21 Aug 2026 19:00:18 GMT  
		Size: 375.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk21-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:59675b6f1e04af5598205a4e92145749e76bddec322c6d738e67ce0c189a01a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9417219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7920f5c474becdc8fc7a6c5adeb1fd6796f1508c5069919330d3cda42f453a8`

```dockerfile
```

-	Layers:
	-	`sha256:f0023ea565af3a83462cb9eec88c22cf65068be78f79ebcba6d5ba4aadf96989`  
		Last Modified: Fri, 21 Aug 2026 19:00:18 GMT  
		Size: 9.4 MB (9391363 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:caded54fbe4bc5d32b15bdd0b13612d94dc228ded6c7f582782d414cb248a56b`  
		Last Modified: Fri, 21 Aug 2026 19:00:18 GMT  
		Size: 25.9 KB (25856 bytes)  
		MIME: application/vnd.in-toto+json
