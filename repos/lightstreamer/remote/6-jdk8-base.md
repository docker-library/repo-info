## `lightstreamer:6-jdk8-base`

```console
$ docker pull lightstreamer@sha256:8d7e9bdd32fa5eabb4f337fdcdc9c0b40dee174f0fe22f2f2b50f370015ea2cc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `lightstreamer:6-jdk8-base` - linux; amd64

```console
$ docker pull lightstreamer@sha256:becbf86e1d6c55cd8adea65331b648a503c40dc0160081b26432aef227b3b196
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **148.4 MB (148380418 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3172feddb1ffc689273f6bbef7b3450f68b6005cb61c8a3de8f278f033f9415f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 24 Jul 2026 12:48:27 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9094.tar --tag 26.04
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T12:48:28.650696+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 12:48:28 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9094.tar
# Tue, 04 Aug 2026 01:26:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:26:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:26:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:26:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:26:05 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 04 Aug 2026 01:26:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 04 Aug 2026 01:26:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:26:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:26:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 02:26:08 GMT
LABEL org.opencontainers.image.authors=Lightstreamer Server Development Team <support@lightstreamer.com>
# Tue, 04 Aug 2026 02:26:08 GMT
ENV LIGHTSTREAMER_VERSION=6.1.0
# Tue, 04 Aug 2026 02:26:08 GMT
ARG LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/6.1.0/Lightstreamer-6.1.0.tar.gz
# Tue, 04 Aug 2026 02:26:08 GMT
ARG FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Tue, 04 Aug 2026 02:26:08 GMT
WORKDIR /lightstreamer
# Tue, 04 Aug 2026 02:26:18 GMT
# ARGS: LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/6.1.0/Lightstreamer-6.1.0.tar.gz FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
RUN set -eux;         apt-get update && apt-get install -y --no-install-recommends curl gnupg;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD};         curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc;         GNUPGHOME="$(mktemp -d)";         export GNUPGHOME;         gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "${FINGERPRINT}";         gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz;         tar -xf Lightstreamer.tar.gz --strip-components=1;         sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh;         rm -rf DOCS-SDKs pages adapters/welcome_res;         rm -f conf/*.xml;         rm -rf bin/unix-like/install;         rm -rf bin/windows;         rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc;         gpgconf --kill all;         rm -rf "$GNUPGHOME";         rm -rf /var/lib/apt/lists/*;         groupadd -g 10000 lightstreamer;         useradd --no-log-init -M -s /usr/sbin/nologin -g lightstreamer -u 10000 lightstreamer;         chown -R lightstreamer:root /lightstreamer;         chmod -R g=u /lightstreamer # buildkit
# Tue, 04 Aug 2026 02:26:18 GMT
USER 10000:10000
# Tue, 04 Aug 2026 02:26:18 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 02:26:18 GMT
WORKDIR /lightstreamer/bin/unix-like
# Tue, 04 Aug 2026 02:26:18 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:617772c7d19b9f9c4141bc73b37e6f4c5e4e69729f6881a73d0dc23676dbbd60`  
		Last Modified: Tue, 28 Jul 2026 09:46:38 GMT  
		Size: 41.6 MB (41568275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7fb98a8eddd1a70f99f205cb4b66e830a3e8ef4798f5636ece054a567b650de`  
		Last Modified: Tue, 28 Jul 2026 09:46:41 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a96bac97d86faf5581f3c831b57320a5a5651c966804d7c16dd1d9ada55156f`  
		Last Modified: Tue, 04 Aug 2026 01:26:24 GMT  
		Size: 29.4 MB (29387129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527d77d95ef8cd5fffd2f243b20a6399885e4e94efb7294206bfcd603bb1afac`  
		Last Modified: Tue, 04 Aug 2026 01:26:24 GMT  
		Size: 55.2 MB (55200468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd132c3bb01944c3635103b4d6c9124b68daa7ecd00f2de82a98eb31b8908f10`  
		Last Modified: Tue, 04 Aug 2026 01:26:22 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:587b97f5cf50ca7c888a2e9f42ee779a39b9502d1fbe84354706c5b64b1d9a86`  
		Last Modified: Tue, 04 Aug 2026 01:26:22 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb2e03c4d7c9b0b957b52853d82dfca88c62494507405a232e4026a3f0cf3af4`  
		Last Modified: Tue, 04 Aug 2026 02:26:22 GMT  
		Size: 101.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5eda7442c34053c196c4647dcc89032d52071fd5201e245f7ab3937714cc04`  
		Last Modified: Tue, 04 Aug 2026 02:26:23 GMT  
		Size: 22.2 MB (22221411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `lightstreamer:6-jdk8-base` - unknown; unknown

```console
$ docker pull lightstreamer@sha256:327040221c86d2d09fabfd7c204f37442ea364014a1b0994b1bcbfc701163745
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 KB (19471 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4c68ea79764898d8aa4b9a8f12d807091c693a20dab05650d366c65b23224fc`

```dockerfile
```

-	Layers:
	-	`sha256:923f4a80dd0c843a81a66a71ff7b9395a4bd472237a31f7214c0e3105d6b0424`  
		Last Modified: Tue, 04 Aug 2026 02:26:22 GMT  
		Size: 19.5 KB (19471 bytes)  
		MIME: application/vnd.in-toto+json

### `lightstreamer:6-jdk8-base` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:7b1245821a9efa4c75f8578563c91130f6af36b2682d41525599ddee8110fc4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146584797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f530bc65c45f93e0321f585307013da54bc89eb4ba40ff77ee4187b47b14abbb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 24 Jul 2026 13:05:14 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.9275.tar --tag 26.04
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-24T13:05:15.200294+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 24 Jul 2026 13:05:15 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cb40fbba9124333e0158d7876ea798fa/images/.temp_layer.control_data.9275.tar
# Tue, 04 Aug 2026 01:26:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:26:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:26:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:26:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:26:07 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Tue, 04 Aug 2026 01:26:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Tue, 04 Aug 2026 01:26:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:26:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:26:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 04 Aug 2026 02:26:30 GMT
LABEL org.opencontainers.image.authors=Lightstreamer Server Development Team <support@lightstreamer.com>
# Tue, 04 Aug 2026 02:26:30 GMT
ENV LIGHTSTREAMER_VERSION=6.1.0
# Tue, 04 Aug 2026 02:26:30 GMT
ARG LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/6.1.0/Lightstreamer-6.1.0.tar.gz
# Tue, 04 Aug 2026 02:26:30 GMT
ARG FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Tue, 04 Aug 2026 02:26:30 GMT
WORKDIR /lightstreamer
# Tue, 04 Aug 2026 02:26:35 GMT
# ARGS: LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/6.1.0/Lightstreamer-6.1.0.tar.gz FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
RUN set -eux;         apt-get update && apt-get install -y --no-install-recommends curl gnupg;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD};         curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc;         GNUPGHOME="$(mktemp -d)";         export GNUPGHOME;         gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "${FINGERPRINT}";         gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz;         tar -xf Lightstreamer.tar.gz --strip-components=1;         sed -i -- 's/\/usr\/jdk1.8.0/$JAVA_HOME/' bin/unix-like/LS.sh;         rm -rf DOCS-SDKs pages adapters/welcome_res;         rm -f conf/*.xml;         rm -rf bin/unix-like/install;         rm -rf bin/windows;         rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc;         gpgconf --kill all;         rm -rf "$GNUPGHOME";         rm -rf /var/lib/apt/lists/*;         groupadd -g 10000 lightstreamer;         useradd --no-log-init -M -s /usr/sbin/nologin -g lightstreamer -u 10000 lightstreamer;         chown -R lightstreamer:root /lightstreamer;         chmod -R g=u /lightstreamer # buildkit
# Tue, 04 Aug 2026 02:26:35 GMT
USER 10000:10000
# Tue, 04 Aug 2026 02:26:35 GMT
EXPOSE map[8080/tcp:{}]
# Tue, 04 Aug 2026 02:26:35 GMT
WORKDIR /lightstreamer/bin/unix-like
# Tue, 04 Aug 2026 02:26:35 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:d73407a274fb6cb1e1017aae5257558853ec6bd76e38b87348173b539ca22894`  
		Last Modified: Tue, 28 Jul 2026 09:46:48 GMT  
		Size: 40.7 MB (40695089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557836a62b7606e693caad19a768fa87fc346bff7d816ac03108c69adb1d684b`  
		Last Modified: Tue, 28 Jul 2026 09:46:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b13c3d919219653b3e6be3ece017d8bfa0869179bd550d6ffee3f9f9bdcbe5a`  
		Last Modified: Tue, 04 Aug 2026 01:26:28 GMT  
		Size: 29.4 MB (29387532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a34f5f0687683aed27ec4f1cdf122b20f025db22edeb3c2956b24970a1a2d60`  
		Last Modified: Tue, 04 Aug 2026 01:26:28 GMT  
		Size: 54.3 MB (54277640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78992bd5bb75318148e8fe33f5cef8ee88054b2b5ae862570094ab8ac0b0bbd1`  
		Last Modified: Tue, 04 Aug 2026 01:26:24 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a98eb20182eeacbb45a1bbe3c4500838a5d525aff3143a70dd5d81cb28c4fee`  
		Last Modified: Tue, 04 Aug 2026 01:26:26 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ed801277c924af3da4cb76785b225c574d73ab8d07ce6e863a3c9017290e33`  
		Last Modified: Tue, 04 Aug 2026 02:26:40 GMT  
		Size: 103.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343faa800a23105b47851d92215275446fac3c692529d56488bdca0b4496bb20`  
		Last Modified: Tue, 04 Aug 2026 02:26:41 GMT  
		Size: 22.2 MB (22221399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `lightstreamer:6-jdk8-base` - unknown; unknown

```console
$ docker pull lightstreamer@sha256:9ef4698b354af0d3bbb57d15bf292ed74cc74040922c0fa3225f49888c0980e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.6 KB (19634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc4a5b45662dd35be10ffbe4adcca2b8b19a4d539c93df5837d8c159df79da04`

```dockerfile
```

-	Layers:
	-	`sha256:8b239b143e510e6151b8bb18e3f5e0ac513fd717d5fdf2333748c4d079d3e439`  
		Last Modified: Tue, 04 Aug 2026 02:26:40 GMT  
		Size: 19.6 KB (19634 bytes)  
		MIME: application/vnd.in-toto+json
