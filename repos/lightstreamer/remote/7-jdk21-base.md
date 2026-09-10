## `lightstreamer:7-jdk21-base`

```console
$ docker pull lightstreamer@sha256:80a2aa03754921f3a6b837562a4660fd8f9802af6497eba3f4b8371ac10f8daa
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `lightstreamer:7-jdk21-base` - linux; amd64

```console
$ docker pull lightstreamer@sha256:fa825dce64c507538b4a22ff27a84dfb4869d21fc746a1beccb719ba0fbf92c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **283.9 MB (283918794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e93e554f8a1f954674aa0bb0c302210aca047d022b9023826648e6b026e04ee9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `[".\/LS.sh","run"]`

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
# Wed, 09 Sep 2026 03:26:05 GMT
LABEL org.opencontainers.image.authors=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 09 Sep 2026 03:26:05 GMT
ENV LIGHTSTREAMER_VERSION=7.4.8
# Wed, 09 Sep 2026 03:26:05 GMT
ARG LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.8/Lightstreamer-7.4.8.tar.gz
# Wed, 09 Sep 2026 03:26:05 GMT
ARG FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 09 Sep 2026 03:26:05 GMT
WORKDIR /lightstreamer
# Wed, 09 Sep 2026 03:26:12 GMT
# ARGS: LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.8/Lightstreamer-7.4.8.tar.gz FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
RUN set -eux;         apt-get update && apt-get install -y --no-install-recommends curl gnupg;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD};         curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc;         GNUPGHOME="$(mktemp -d)";         export GNUPGHOME;         gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "${FINGERPRINT}";         gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz;         tar -xf Lightstreamer.tar.gz --strip-components=1;         rm -rf docs pages adapters/welcome_res;         rm -f conf/*.xml;         rm -rf bin/unix-like/install;         rm -rf bin/windows;         rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc;         gpgconf --kill all;         rm -rf "$GNUPGHOME";         rm -rf /var/lib/apt/lists/*;         groupadd -g 10000 lightstreamer;         useradd --no-log-init -M -s /usr/sbin/nologin -g lightstreamer -u 10000 lightstreamer;         chown -R lightstreamer:root /lightstreamer;         chmod -R g=u /lightstreamer # buildkit
# Wed, 09 Sep 2026 03:26:12 GMT
USER 10000:10000
# Wed, 09 Sep 2026 03:26:12 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 09 Sep 2026 03:26:13 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 09 Sep 2026 03:26:13 GMT
CMD ["./LS.sh" "run"]
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
	-	`sha256:f0d127b41cd17f3a1f14342caf6f5eb8ce81b07f419da79fd7d0142f7b81b740`  
		Last Modified: Wed, 09 Sep 2026 03:26:16 GMT  
		Size: 103.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b12ee4f0e7387ec0e00197c4ea028d9dc0c38d331d41a938774d26d436aa4a0c`  
		Last Modified: Wed, 09 Sep 2026 03:26:20 GMT  
		Size: 53.8 MB (53838086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `lightstreamer:7-jdk21-base` - unknown; unknown

```console
$ docker pull lightstreamer@sha256:8af2c83aba266e3d83da4d06ab7c9eedaccd185dbab2fe5de8f059b5073d1d4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.1 KB (18149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6643a548113ee2c13ee2f92a881a42a8c42f746ac73ac3a86664f7f849a793b1`

```dockerfile
```

-	Layers:
	-	`sha256:594548f5563996f56b69e44c3d077274619c34d61a82f658ea25b0a81a5c493b`  
		Last Modified: Wed, 09 Sep 2026 03:26:18 GMT  
		Size: 18.1 KB (18149 bytes)  
		MIME: application/vnd.in-toto+json

### `lightstreamer:7-jdk21-base` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:a2c0449fcdb28dcb13f2f42024daa2053eb4efc91ab6a6921a0e6111d47a5ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.0 MB (281035859 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf4ac523aa4f1ed06a435ff6d5b83249e3948f1880e4efdc7e3a66e9b54846d3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `[".\/LS.sh","run"]`

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
# Wed, 09 Sep 2026 03:38:15 GMT
LABEL org.opencontainers.image.authors=Lightstreamer Server Development Team <support@lightstreamer.com>
# Wed, 09 Sep 2026 03:38:15 GMT
ENV LIGHTSTREAMER_VERSION=7.4.8
# Wed, 09 Sep 2026 03:38:15 GMT
ARG LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.8/Lightstreamer-7.4.8.tar.gz
# Wed, 09 Sep 2026 03:38:15 GMT
ARG FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Wed, 09 Sep 2026 03:38:15 GMT
WORKDIR /lightstreamer
# Wed, 09 Sep 2026 03:38:20 GMT
# ARGS: LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.8/Lightstreamer-7.4.8.tar.gz FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
RUN set -eux;         apt-get update && apt-get install -y --no-install-recommends curl gnupg;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD};         curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc;         GNUPGHOME="$(mktemp -d)";         export GNUPGHOME;         gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "${FINGERPRINT}";         gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz;         tar -xf Lightstreamer.tar.gz --strip-components=1;         rm -rf docs pages adapters/welcome_res;         rm -f conf/*.xml;         rm -rf bin/unix-like/install;         rm -rf bin/windows;         rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc;         gpgconf --kill all;         rm -rf "$GNUPGHOME";         rm -rf /var/lib/apt/lists/*;         groupadd -g 10000 lightstreamer;         useradd --no-log-init -M -s /usr/sbin/nologin -g lightstreamer -u 10000 lightstreamer;         chown -R lightstreamer:root /lightstreamer;         chmod -R g=u /lightstreamer # buildkit
# Wed, 09 Sep 2026 03:38:20 GMT
USER 10000:10000
# Wed, 09 Sep 2026 03:38:20 GMT
EXPOSE map[8080/tcp:{}]
# Wed, 09 Sep 2026 03:38:20 GMT
WORKDIR /lightstreamer/bin/unix-like
# Wed, 09 Sep 2026 03:38:20 GMT
CMD ["./LS.sh" "run"]
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
	-	`sha256:796d58b8c503079b9225c8a7f7ec508c735884e9e01384fec92901de49593b7e`  
		Last Modified: Wed, 09 Sep 2026 03:38:26 GMT  
		Size: 103.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c4fb80f455203570ad37843c8bff4a598c9003f7bab03d9f70997aba8427b52`  
		Last Modified: Wed, 09 Sep 2026 03:38:28 GMT  
		Size: 53.8 MB (53838076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `lightstreamer:7-jdk21-base` - unknown; unknown

```console
$ docker pull lightstreamer@sha256:90a21ffbcee3d3096976c6fb807994c9148504701b7a9013af9ccf580f0f7e42
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 KB (18277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:012bd7ab071d939e7233f9eebc16351ef13c557b49899559022c38919d1dd28c`

```dockerfile
```

-	Layers:
	-	`sha256:215db1a8eecb3ad547f25d94f2748ae63ccfc9a322d944a853ac94cd26cf66b0`  
		Last Modified: Wed, 09 Sep 2026 03:38:26 GMT  
		Size: 18.3 KB (18277 bytes)  
		MIME: application/vnd.in-toto+json
