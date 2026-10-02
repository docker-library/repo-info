## `gradle:jdk-25-and-26-resolute`

```console
$ docker pull gradle@sha256:028feac2cc281e99287e2f9386fe01ee80942b813613f150555fc3d3a5939265
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

### `gradle:jdk-25-and-26-resolute` - linux; amd64

```console
$ docker pull gradle@sha256:c025b2635a09b4ab292263f63ca4def1a15432ba97c55e4e6a549cfd7edeabfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **475.6 MB (475606148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af06cfbb5caa9c50e8c384167741005b1b7ec5faf09f5c4ac5dc1362aae90515`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
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
# Fri, 02 Oct 2026 01:19:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:25 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:19:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:19:46 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:18:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk26 # buildkit
# Fri, 02 Oct 2026 02:18:58 GMT
RUN set -o errexit -o nounset     && ln --symbolic /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Fri, 02 Oct 2026 02:18:58 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Fri, 02 Oct 2026 02:18:58 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk26
# Fri, 02 Oct 2026 02:18:58 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:18:58 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:18:58 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Fri, 02 Oct 2026 02:18:58 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:18:58 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:19:21 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:19:21 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 02:19:21 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 02:19:24 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:19:24 GMT
USER gradle
# Fri, 02 Oct 2026 02:19:25 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:19:25 GMT
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
	-	`sha256:5dec61325458743419767b1cdc12e81a2be1dbc91a32f6e636b1ae8a9f3de325`  
		Last Modified: Fri, 02 Oct 2026 01:20:04 GMT  
		Size: 19.1 MB (19050748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39241fdc590960796b3d9c3f2af903fe6fec12565870dc9479c422412be513d`  
		Last Modified: Fri, 02 Oct 2026 01:20:05 GMT  
		Size: 92.8 MB (92755973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:130739ca07b1d777e0fa39437e80478ef07b21bc7bc0f30a97b0a5fae89bbb4e`  
		Last Modified: Fri, 02 Oct 2026 01:20:03 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e3838651700cbc7844cd87e2ad1b29e56b841f3470eb23c3acede59641e64`  
		Last Modified: Fri, 02 Oct 2026 02:19:56 GMT  
		Size: 94.6 MB (94563580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1e2afd0e707e2bddf0e3fe59704744354492b84267e8d1c1ab6c0755a60a05`  
		Last Modified: Fri, 02 Oct 2026 02:19:51 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5b6a6601850ee3b9ccdd079eacf302172c1dcabe716ba90ddf68f7b8c4cbeb`  
		Last Modified: Fri, 02 Oct 2026 02:19:51 GMT  
		Size: 1.4 KB (1413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970c6455cb8f2b9459a72bd80f2bc59e283979038f9211ba31169f8303a70e27`  
		Last Modified: Fri, 02 Oct 2026 02:19:55 GMT  
		Size: 75.8 MB (75843973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5570fd315f8c14ee69ce3eccb623c1867660a2d6ee18651b4f92e33d3ab25d2`  
		Last Modified: Fri, 02 Oct 2026 02:19:57 GMT  
		Size: 151.5 MB (151524261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da03e3f4fe33ec683d427ff29ddb77c411c6f0adc2a2b98a81b3770e0ca0036e`  
		Last Modified: Fri, 02 Oct 2026 02:19:53 GMT  
		Size: 25.6 KB (25613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-26-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:d55d5b534c1f3500f0e805166dbc868ded6da1b870b849f4c758bf1c28e6d289
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.5 MB (9524451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2950c82d4fe80a78d72acd67d47082870e0fb965213b05ff542495b096faad5a`

```dockerfile
```

-	Layers:
	-	`sha256:8fd9d1ac7bb6b1b24e0560d008c1f89d4410744a26428e9937fa4f52b8d48c46`  
		Last Modified: Fri, 02 Oct 2026 02:19:52 GMT  
		Size: 9.5 MB (9486833 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c0f67b8b5eb580bb483e5ea39ada4fcc47c7ba7b7e94d788073e96d0131361b`  
		Last Modified: Fri, 02 Oct 2026 02:19:51 GMT  
		Size: 37.6 KB (37618 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-25-and-26-resolute` - linux; arm64 variant v8

```console
$ docker pull gradle@sha256:27e5e14bd331a6fa33badc779cf0f35a9264b8e9085b730114f6cfc89eca9c29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **471.9 MB (471870129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a593eb73998007f51730e8639022f202ccfa4df8f7c14f5bfd871ffba6453a6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
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
# Fri, 02 Oct 2026 01:19:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:21 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:19:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:45 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:19:45 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:18:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk26 # buildkit
# Fri, 02 Oct 2026 02:18:54 GMT
RUN set -o errexit -o nounset     && ln --symbolic /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Fri, 02 Oct 2026 02:18:54 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Fri, 02 Oct 2026 02:18:54 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk26
# Fri, 02 Oct 2026 02:18:54 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:18:54 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:18:54 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Fri, 02 Oct 2026 02:18:54 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:18:54 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:19:19 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:19:19 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 02:19:19 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 02:19:21 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:19:21 GMT
USER gradle
# Fri, 02 Oct 2026 02:19:22 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:19:22 GMT
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
	-	`sha256:f5ecb6cdbdee50ec44854ef6806c8a5670c528c72360c9205ebcdf5904c09dbb`  
		Last Modified: Fri, 02 Oct 2026 01:20:04 GMT  
		Size: 19.4 MB (19432157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdeb17fbd677f174a73ae374ff5e446e35ab8a764acc5efdf881b50a851aa29a`  
		Last Modified: Fri, 02 Oct 2026 01:20:05 GMT  
		Size: 91.7 MB (91656043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e0e048361058af7411fe47569c4d90b68a917dba037514c3831b7bf7029c7b`  
		Last Modified: Fri, 02 Oct 2026 01:19:18 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11f0e09c4595a3945c8764e81f409ab10052ff431b4b030b0eb62e4bcc61703`  
		Last Modified: Fri, 02 Oct 2026 02:19:53 GMT  
		Size: 93.5 MB (93544415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37533345652e2e7b3d642336142d9b8ce2f7170ed65ead473cd299e24e8d0a72`  
		Last Modified: Fri, 02 Oct 2026 02:19:49 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a9b85807b700471050cc596777478794b14772bdf3e5a6d4e68c5e1e251a930`  
		Last Modified: Fri, 02 Oct 2026 02:19:49 GMT  
		Size: 1.4 KB (1411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b279df0dc52d7222855cdadb2e95d576b1b8eb431fe5160cbaf59fd3e348f64`  
		Last Modified: Fri, 02 Oct 2026 02:19:53 GMT  
		Size: 74.8 MB (74814686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a2dd6a7eb5c83ca1f2278a5df5ff1d14f5c55c08598cdc3a32e98a46205ab73`  
		Last Modified: Fri, 02 Oct 2026 02:19:55 GMT  
		Size: 151.5 MB (151524258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac8553eade40eaf207b4c58c6454e8194828e69b4f69a4e00e98b2904c9b2930`  
		Last Modified: Fri, 02 Oct 2026 02:19:50 GMT  
		Size: 29.3 KB (29333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-26-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:5d476d1a89b487458adcaf4bb5b5366bd61281dfe2860a085dbc733aebb41cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.7 MB (9717841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0eb40ee86013845c871ebe26dbd2bb6fdf7201ae79c6fa14d72c3f46f1900be2`

```dockerfile
```

-	Layers:
	-	`sha256:56ee13646b0d25573928eb868aa8042d06617f341aec799c64df23863ff44e53`  
		Last Modified: Fri, 02 Oct 2026 02:19:50 GMT  
		Size: 9.7 MB (9679889 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20e4ae53d24e0788e69cba1569512460f641f913f130c9cbee6ddd5eb9403ddc`  
		Last Modified: Fri, 02 Oct 2026 02:19:49 GMT  
		Size: 38.0 KB (37952 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-25-and-26-resolute` - linux; ppc64le

```console
$ docker pull gradle@sha256:f4a14192e3fc4c7cd38358903a79ea7b199c351052b9dc45096462882305e568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.7 MB (485740006 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1a86a287a7c3b02af0017de7d13a0d7dbaa5cc073732a7b2df60ab3765bf8ec`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 27 Sep 2026 10:30:03 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9496.tar --tag 26.04
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:30:04.151026+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:30:04.151026+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:30:04 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9496.tar
# Fri, 02 Oct 2026 03:51:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:51:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:51:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:51:57 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:51:57 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 03:53:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:53:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:53:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:53:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:53:09 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 06:17:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk26 # buildkit
# Fri, 02 Oct 2026 06:17:28 GMT
RUN set -o errexit -o nounset     && ln --symbolic /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Fri, 02 Oct 2026 06:17:29 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Fri, 02 Oct 2026 06:17:29 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk26
# Fri, 02 Oct 2026 06:17:29 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 06:17:29 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 06:17:29 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Fri, 02 Oct 2026 06:17:29 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 06:17:30 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 06:18:20 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 06:18:20 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 06:18:20 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 06:18:30 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 06:18:30 GMT
USER gradle
# Fri, 02 Oct 2026 06:18:33 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 06:18:33 GMT
USER root
```

-	Layers:
	-	`sha256:24cb2080a4f15f9f8f3e5b34cf3d351ca6a179e34ef7a5be195547649bea7b44`  
		Last Modified: Sun, 27 Sep 2026 12:12:27 GMT  
		Size: 47.0 MB (46963009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f37a94bbdd591f234d1c72cb2519dfd51120a905756ba0cb98728f447abe93`  
		Last Modified: Sun, 27 Sep 2026 12:12:30 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4740ad6eaa9a1e067cba70a2ac2da2dce21aad39b149cc280ac353f8706d32`  
		Last Modified: Fri, 02 Oct 2026 03:53:56 GMT  
		Size: 19.0 MB (18957335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97781e58f0d4a99923592d9001e2dca7d834239c20fc5c32b124915ab0048f4`  
		Last Modified: Fri, 02 Oct 2026 03:53:58 GMT  
		Size: 91.4 MB (91405252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7ec527841f2ceccd951e556383a5a11943667b10b4e5a37e155f5c9d3a3005`  
		Last Modified: Fri, 02 Oct 2026 03:53:56 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea8764dde2c66d9ecdc74062c8e23f495b0a3d1adef78b91332150d4ee91fb27`  
		Last Modified: Fri, 02 Oct 2026 06:19:39 GMT  
		Size: 93.4 MB (93351510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0c8f3b1311fdda585523fe0618d083715078fe2110c6b8fa55de6f55efe879`  
		Last Modified: Fri, 02 Oct 2026 06:19:34 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7cdbd2d552d5f831e1d951c53451a473ef816fc0e8d847fdb635d647e82a8a`  
		Last Modified: Fri, 02 Oct 2026 06:19:34 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e7fefcd3cb42074d38545fe4361fee1dc086cf37c06bef4f22c56eaa1699498`  
		Last Modified: Fri, 02 Oct 2026 06:19:38 GMT  
		Size: 83.5 MB (83533756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f84b09be6001db1933bf6eb742575ec18d440b2fd5997ee170a0d36bcb90ca`  
		Last Modified: Fri, 02 Oct 2026 06:19:41 GMT  
		Size: 151.5 MB (151524262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc033dfdd36600837741ad49795fe99b844fde0050b4d5b780c3190284c14ca`  
		Last Modified: Fri, 02 Oct 2026 06:19:35 GMT  
		Size: 383.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-26-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:8cf2374878eb5a56a50050adf4c7003d4ca26425a5e425c874c482a92ed81aa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.6 MB (9568833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2a27173a0eabbe7ea4354fa2200d82c13c47533ef59d19a1a9bce277efe9af4`

```dockerfile
```

-	Layers:
	-	`sha256:3db2203d3f8882b1fa551df06c38a74f54d84d8a00457bcaeb7b63ec499670d0`  
		Last Modified: Fri, 02 Oct 2026 06:19:34 GMT  
		Size: 9.5 MB (9531083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45e4db9e5b52c4b8cb717be7fcb08a496bbdd6dfd429559e3574b8c61b88f766`  
		Last Modified: Fri, 02 Oct 2026 06:19:34 GMT  
		Size: 37.8 KB (37750 bytes)  
		MIME: application/vnd.in-toto+json

### `gradle:jdk-25-and-26-resolute` - linux; s390x

```console
$ docker pull gradle@sha256:f75e09d38b2a87d3ef66fc5925c9339903e216c752c86d0d1374d35e39e524ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.9 MB (466894174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b55a3289f61509af520c562ea833df34597664d2e1e368346d6abbc91360953b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["gradle"]`

```dockerfile
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.9534.tar --tag 26.04
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-27T10:27:53.861327+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-27T10:27:53.861327+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 27 Sep 2026 10:27:53 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-1b6090acdaa4d41535f88b18cf344a81/images/.temp_layer.control_data.9534.tar
# Fri, 02 Oct 2026 01:30:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:30:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:30:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:30:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:30:03 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:32:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='dbb698396d478e7fa2b1e50f4103324b2a99b90569ee27c33f2261f9215cf41e';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='69df11a02cfa3ef7d7ca645e03edce6778ec090e100f6ae2b42097865730ac52';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='b508ca140557322c73da4278d21004b22480b894ffdc67a8795d7814afd8775c';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='012d4fe2be909a80c64675ab579877dd9b1db1eff6c7b327eed87b907706f819';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:33:02 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:33:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:33:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:33:05 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:23:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk26 # buildkit
# Fri, 02 Oct 2026 02:23:32 GMT
RUN set -o errexit -o nounset     && ln --symbolic /opt/java/openjdk /opt/java/openjdk25 # buildkit
# Fri, 02 Oct 2026 02:23:32 GMT
ENV JAVA_LTS_HOME=/opt/java/openjdk25
# Fri, 02 Oct 2026 02:23:32 GMT
ENV JAVA_CURRENT_HOME=/opt/java/openjdk26
# Fri, 02 Oct 2026 02:23:32 GMT
CMD ["gradle"]
# Fri, 02 Oct 2026 02:23:32 GMT
ENV GRADLE_HOME=/opt/gradle
# Fri, 02 Oct 2026 02:23:32 GMT
RUN set -o errexit -o nounset     && echo "Renaming ubuntu user and group to gradle"     && groupmod --new-name gradle ubuntu     && mkdir /home/gradle     && usermod --login gradle --home /home/gradle --groups gradle ubuntu     && chown gradle /home/gradle     && mkdir /home/gradle/.gradle     && chown --recursive gradle:gradle /home/gradle     && chmod --recursive o+rwx /home/gradle         && echo "Symlinking root Gradle cache to gradle Gradle cache"     && ln --symbolic /home/gradle/.gradle /root/.gradle         && echo "Ensuring Gradle detects installed JDKs"     && echo "org.gradle.java.installations.auto-detect=false" > /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.auto-download=false" >> /home/gradle/.gradle/gradle.properties     && echo "org.gradle.java.installations.fromEnv=JAVA_LTS_HOME,JAVA_CURRENT_HOME" >> /home/gradle/.gradle/gradle.properties # buildkit
# Fri, 02 Oct 2026 02:23:32 GMT
VOLUME [/home/gradle/.gradle]
# Fri, 02 Oct 2026 02:23:32 GMT
WORKDIR /home/gradle
# Fri, 02 Oct 2026 02:23:52 GMT
RUN set -o errexit -o nounset     && apt-get update     && apt-get install --yes --no-install-recommends         make         curl         wget         tar                 unzip                 brz         git         git-lfs         mercurial         openssh-client         subversion     && rm --recursive --force /var/lib/apt/lists/*         && echo "Testing common utilities"     && which awk     && which curl     && which cut     && which grep     && which gunzip     && which sha256sum     && which sed     && which tar     && which tr     && which unzip     && which wget         && echo "Testing VCSes"     && which brz     && which git     && which git-lfs     && which hg     && which svn # buildkit
# Fri, 02 Oct 2026 02:23:52 GMT
ENV GRADLE_VERSION=9.8.0
# Fri, 02 Oct 2026 02:23:52 GMT
ARG GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
# Fri, 02 Oct 2026 02:23:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Downloading Gradle"     && wget --no-verbose --output-document=gradle.zip "https://services.gradle.org/distributions/gradle-${GRADLE_VERSION}-bin.zip"         && echo "Checking download hash"     && echo "${GRADLE_DOWNLOAD_SHA256} *gradle.zip" | sha256sum --check -         && echo "Installing Gradle"     && unzip gradle.zip     && rm gradle.zip     && mv "gradle-${GRADLE_VERSION}" "${GRADLE_HOME}/"     && ln --symbolic "${GRADLE_HOME}/bin/gradle" /usr/bin/gradle # buildkit
# Fri, 02 Oct 2026 02:23:56 GMT
USER gradle
# Fri, 02 Oct 2026 02:23:56 GMT
# ARGS: GRADLE_DOWNLOAD_SHA256=bafd5ce9cfaea0fbccfdc8439a1ac42fbd4cd9c89dc9a988228d8a2639a58e6c
RUN set -o errexit -o nounset     && echo "Testing Gradle installation"     && gradle --stacktrace --debug --version # buildkit
# Fri, 02 Oct 2026 02:23:56 GMT
USER root
```

-	Layers:
	-	`sha256:d6ebc3b508a6f57d9b3b99430767da95a84a53508b118d1f4ba5df92e295dcbc`  
		Last Modified: Sun, 27 Sep 2026 12:12:55 GMT  
		Size: 41.6 MB (41627251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd388e78139fa95688128f54e9acd78f41931e116be2f83de83559b714894c3`  
		Last Modified: Sun, 27 Sep 2026 12:12:58 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f58a2fd6a24e16a46b7ebed004d5b5489d5cfe886eb4594feb7af0bfc4b113d1`  
		Last Modified: Fri, 02 Oct 2026 01:34:01 GMT  
		Size: 17.3 MB (17274521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5db5bf95650b65529508f2a8fff5da2875f6d44b63a225b24c5a5553032e7bc5`  
		Last Modified: Fri, 02 Oct 2026 01:34:04 GMT  
		Size: 88.6 MB (88564762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:774196f7366b035e046a97f3438045cf7efce7f915876fb371fef4ba0d3872ce`  
		Last Modified: Fri, 02 Oct 2026 01:33:59 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206ad6f2c99c7cb12bf3f2bbc03ff2aebddc01aa43231a57b28880e0c7015ec2`  
		Last Modified: Fri, 02 Oct 2026 02:24:33 GMT  
		Size: 90.6 MB (90590494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28ca79b8099eba5f82de9e1aaa18bdbd67059035752a3e152fb32f8a451e5c28`  
		Last Modified: Fri, 02 Oct 2026 02:24:30 GMT  
		Size: 150.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5ec72c5b2685275e7f2ba89b04ec571dcdaff660bb3f020eb77a69ce271bbce`  
		Last Modified: Fri, 02 Oct 2026 02:24:30 GMT  
		Size: 1.4 KB (1414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7459d81adfc9061f19e0bc9f4dacec15c044ec4d359b3778037a9f4c833c3a`  
		Last Modified: Fri, 02 Oct 2026 02:24:33 GMT  
		Size: 77.3 MB (77308040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c27dc15b63f0b30dad6982c3ff49dd12cd1f853e681b2e437fa3413f21b8ff0`  
		Last Modified: Fri, 02 Oct 2026 02:24:35 GMT  
		Size: 151.5 MB (151524255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fdc784d3e6e88b95814252e7e3afef93d400e7407c65c4862cfb80075fffbe1`  
		Last Modified: Fri, 02 Oct 2026 02:24:31 GMT  
		Size: 369.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `gradle:jdk-25-and-26-resolute` - unknown; unknown

```console
$ docker pull gradle@sha256:8e90be25f401c9f04cb3dc3b0622095ee69723f9329fe33d0591c12ee423ddb1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **9.4 MB (9423042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83c83170234f5f98e29fa8eb07de3784295972fcc93f07f7da64a17edd7b102f`

```dockerfile
```

-	Layers:
	-	`sha256:4d0f0a1ca3864c17088f1b576ba8cf9baa92339defc951b9fe45c06b24ba17a9`  
		Last Modified: Fri, 02 Oct 2026 02:24:31 GMT  
		Size: 9.4 MB (9385426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:acf8a5da85f261f909826628b0a5cf6888e6eb77ac0748095358f475496071cd`  
		Last Modified: Fri, 02 Oct 2026 02:24:31 GMT  
		Size: 37.6 KB (37616 bytes)  
		MIME: application/vnd.in-toto+json
