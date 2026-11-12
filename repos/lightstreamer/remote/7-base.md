## `lightstreamer:7-base`

```console
$ docker pull lightstreamer@sha256:bb3c0841b2328adadc67ac6f66c9562ae05d683c431a857c2024c2a9f2472617
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `lightstreamer:7-base` - linux; amd64

```console
$ docker pull lightstreamer@sha256:ce53f0d5b146fed3c6e050c1e87a5a5db501514e6b00f9bb83890ee52014413b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.0 MB (212951331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55dc6ef745d97c393c6617e86928d69b52668f7904d15717b49b2a3eef722ed3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9587.tar --tag 26.04
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:26:07.538865+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:26:07 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9587.tar
# Thu, 29 Oct 2026 19:15:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:15:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:15:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:15:54 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:15:54 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:16:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:16:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:16:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:16:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:16:15 GMT
CMD ["jshell"]
# Thu, 29 Oct 2026 19:53:47 GMT
LABEL org.opencontainers.image.authors=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 29 Oct 2026 19:53:47 GMT
ENV LIGHTSTREAMER_VERSION=7.4.9
# Thu, 29 Oct 2026 19:53:47 GMT
ARG LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.9/Lightstreamer-7.4.9.tar.gz
# Thu, 29 Oct 2026 19:53:47 GMT
ARG FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 29 Oct 2026 19:53:47 GMT
WORKDIR /lightstreamer
# Thu, 29 Oct 2026 19:53:59 GMT
# ARGS: LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.9/Lightstreamer-7.4.9.tar.gz FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
RUN set -eux;         apt-get update && apt-get install -y --no-install-recommends curl gnupg;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD};         curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc;         GNUPGHOME="$(mktemp -d)";         export GNUPGHOME;         gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "${FINGERPRINT}";         gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz;         tar -xf Lightstreamer.tar.gz --strip-components=1;         rm -rf docs examples;         rm -f conf/*.xml;         rm -rf bin/unix-like/install;         rm -rf bin/windows;         rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc;         gpgconf --kill all;         rm -rf "$GNUPGHOME";         rm -rf /var/lib/apt/lists/*;         groupadd -g 10000 lightstreamer;         useradd --no-log-init -M -s /usr/sbin/nologin -g lightstreamer -u 10000 lightstreamer;         chown -R lightstreamer:root /lightstreamer;         chmod -R g=u /lightstreamer # buildkit
# Thu, 29 Oct 2026 19:53:59 GMT
USER 10000:10000
# Thu, 29 Oct 2026 19:53:59 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 29 Oct 2026 19:53:59 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 29 Oct 2026 19:53:59 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:edafa32f5d9e4d9629f0dbc6c01e63c79ff08133c01cfb7d3363aa8bd8a614cf`  
		Last Modified: Sun, 25 Oct 2026 13:21:15 GMT  
		Size: 42.1 MB (42139920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f25b84a7d74315d94ee4108231f8f5e0cd2a44725a7204d5dd6ce91c151697`  
		Last Modified: Sun, 25 Oct 2026 13:21:18 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff0e1f02e2eb7f4c03295bf97ee6b2619ab44b8a96382bc85fa93da4b887a80`  
		Last Modified: Thu, 29 Oct 2026 19:16:34 GMT  
		Size: 16.1 MB (16075291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53b0d9a37b71f418355a1d7bac5ce0b3d2e5d6a3902e952522508e5e21b44206`  
		Last Modified: Thu, 29 Oct 2026 19:16:36 GMT  
		Size: 92.7 MB (92736817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e9914a863222f861bee403f978f2ac9afa00f0c5099da8d50f79a7a4a344c8`  
		Last Modified: Thu, 29 Oct 2026 19:16:34 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f50c0c5d44b470ae9d65ac26696a55661a00ea62d6cf4172a88d4c963d907e4b`  
		Last Modified: Thu, 29 Oct 2026 19:54:05 GMT  
		Size: 103.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f03c8b57250fafd3ee35545b63d3d56e2972d978e492f97cff061fc37a963fb3`  
		Last Modified: Thu, 29 Oct 2026 19:54:07 GMT  
		Size: 62.0 MB (61996279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `lightstreamer:7-base` - unknown; unknown

```console
$ docker pull lightstreamer@sha256:0465c70f6e834d87735bac4a61d47d8cefec046b8b2a29844bed351843665b8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.3 KB (19334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b88f76d425ca129d100d8f9f4254cfb7ea130c063f778056111818c9f80a2952`

```dockerfile
```

-	Layers:
	-	`sha256:7b6a612f73ace01311de7c1f37656830821f9bd9122141ab0ca6b758cee9fbe4`  
		Last Modified: Thu, 29 Oct 2026 19:54:05 GMT  
		Size: 19.3 KB (19334 bytes)  
		MIME: application/vnd.in-toto+json

### `lightstreamer:7-base` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:e9048b774b035498e19839ae64ef729740f8953afbd2948c9038570ad92cc58f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.8 MB (210764277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:185c90eb2c62c929df998513fc1c6fe1f513bd110cab210c2cdce30b09105393`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `[".\/LS.sh","run"]`

```dockerfile
# Fri, 06 Nov 2026 10:30:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.9013.tar --tag 26.04
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-11-06T10:31:00.336187+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Fri, 06 Nov 2026 10:31:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f9b0ae373a9aa61a96756fa393588993/images/.temp_layer.control_data.9013.tar
# Wed, 11 Nov 2026 23:22:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:22:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:22:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:22:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:22:24 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 23:22:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='68982529869257d0ee6b824ec5aa270ff8b118bb438670da0b97ebdab178d7fb';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='bb5b2ded252f21c6090cf780b0a408ad0d83bbb557e702955643557f13231880';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='47825886fd72e86c94e6fd1687a13bebb4ae729e24d2788be0d294589bf07297';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='dfed6b7b428852ab1a3b9eb7734264f4d4cc163686e4136f93b9942f3d8f44cd';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:22:42 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:22:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:22:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 11 Nov 2026 23:22:42 GMT
CMD ["jshell"]
# Thu, 12 Nov 2026 00:40:28 GMT
LABEL org.opencontainers.image.authors=Lightstreamer Server Development Team <support@lightstreamer.com>
# Thu, 12 Nov 2026 00:40:28 GMT
ENV LIGHTSTREAMER_VERSION=7.4.9
# Thu, 12 Nov 2026 00:40:28 GMT
ARG LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.9/Lightstreamer-7.4.9.tar.gz
# Thu, 12 Nov 2026 00:40:28 GMT
ARG FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Thu, 12 Nov 2026 00:40:28 GMT
WORKDIR /lightstreamer
# Thu, 12 Nov 2026 00:40:37 GMT
# ARGS: LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.9/Lightstreamer-7.4.9.tar.gz FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
RUN set -eux;         apt-get update && apt-get install -y --no-install-recommends curl gnupg;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD};         curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc;         GNUPGHOME="$(mktemp -d)";         export GNUPGHOME;         gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "${FINGERPRINT}";         gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz;         tar -xf Lightstreamer.tar.gz --strip-components=1;         rm -rf docs examples;         rm -f conf/*.xml;         rm -rf bin/unix-like/install;         rm -rf bin/windows;         rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc;         gpgconf --kill all;         rm -rf "$GNUPGHOME";         rm -rf /var/lib/apt/lists/*;         groupadd -g 10000 lightstreamer;         useradd --no-log-init -M -s /usr/sbin/nologin -g lightstreamer -u 10000 lightstreamer;         chown -R lightstreamer:root /lightstreamer;         chmod -R g=u /lightstreamer # buildkit
# Thu, 12 Nov 2026 00:40:37 GMT
USER 10000:10000
# Thu, 12 Nov 2026 00:40:37 GMT
EXPOSE map[8080/tcp:{}]
# Thu, 12 Nov 2026 00:40:37 GMT
WORKDIR /lightstreamer/bin/unix-like
# Thu, 12 Nov 2026 00:40:37 GMT
CMD ["./LS.sh" "run"]
```

-	Layers:
	-	`sha256:7f2c2ca81066ea08302554fea387f3df4b714e7d98ea9c9d1994683b4668b905`  
		Last Modified: Fri, 06 Nov 2026 12:44:39 GMT  
		Size: 41.1 MB (41145813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cedc468d06b2395acfbe15d469c1c490e32250dfff923a25b48590254da93297`  
		Last Modified: Fri, 06 Nov 2026 12:44:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f724b19f302674af09a4e02c4f45574e2015b20dad8e231a28433d6317c0e67`  
		Last Modified: Wed, 11 Nov 2026 23:23:02 GMT  
		Size: 16.1 MB (16086923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4535fc2fbdf2285d9a5846bfb334f60fbd37c0b8c11350e6c1afdf185c303d8`  
		Last Modified: Wed, 11 Nov 2026 23:23:04 GMT  
		Size: 91.7 MB (91674857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8522a97583bcaecf1d953882211870420ac414878f189bacf12aaae7550b00cf`  
		Last Modified: Wed, 11 Nov 2026 23:23:01 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0bbfa1b5c034adc640111cef2bb21ff7f0893cffc30bfc5e31e405499fb07dc`  
		Last Modified: Thu, 12 Nov 2026 00:40:44 GMT  
		Size: 103.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fff26b85cbbecfa913526c0917608fa1afaf0849d0786602d60014dbfadbb05`  
		Last Modified: Thu, 12 Nov 2026 00:40:46 GMT  
		Size: 61.9 MB (61853667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `lightstreamer:7-base` - unknown; unknown

```console
$ docker pull lightstreamer@sha256:e03f195944f61842e219490b4205e2048f19e25658575f64dae0b0ac493ab29d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **19.5 KB (19510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6393725eb1d2daa1f53d01354e5a34d7a1ce86391c7dee5b97349863b19f414a`

```dockerfile
```

-	Layers:
	-	`sha256:74679c234bf73fcabd84da17a88de9df85b33c9b1f67c3314ad296a99151ab66`  
		Last Modified: Thu, 12 Nov 2026 00:40:44 GMT  
		Size: 19.5 KB (19510 bytes)  
		MIME: application/vnd.in-toto+json
