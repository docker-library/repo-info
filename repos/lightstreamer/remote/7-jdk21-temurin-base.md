## `lightstreamer:7-jdk21-temurin-base`

```console
$ docker pull lightstreamer@sha256:c4a9c6a8e9d2fee3f5a17a70aed5b15ff0d9629206be6c77f9099f7d753f01d3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `lightstreamer:7-jdk21-temurin-base` - linux; amd64

```console
$ docker pull lightstreamer@sha256:5798c4ee35da75fe98d07f03d7046cdb292de8c7a69e9e497db45e78efdd8bd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.8 MB (280827715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:063a417cc31a98f23a8f5c6a1534bffe1e7450e9dced7ddfd07ab8d2955256d1`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `[".\/LS.sh","run"]`

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
# Fri, 02 Oct 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:51 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:51 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:18:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:57 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:25:36 GMT
LABEL org.opencontainers.image.authors=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 02 Oct 2026 02:25:36 GMT
ENV LIGHTSTREAMER_VERSION=7.4.8
# Fri, 02 Oct 2026 02:25:36 GMT
ARG LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.8/Lightstreamer-7.4.8.tar.gz
# Fri, 02 Oct 2026 02:25:36 GMT
ARG FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Fri, 02 Oct 2026 02:25:36 GMT
WORKDIR /lightstreamer
# Fri, 02 Oct 2026 02:25:42 GMT
# ARGS: LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.8/Lightstreamer-7.4.8.tar.gz FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
RUN set -eux;         apt-get update && apt-get install -y --no-install-recommends curl gnupg;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD};         curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc;         GNUPGHOME="$(mktemp -d)";         export GNUPGHOME;         gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "${FINGERPRINT}";         gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz;         tar -xf Lightstreamer.tar.gz --strip-components=1;         rm -rf docs pages adapters/welcome_res;         rm -f conf/*.xml;         rm -rf bin/unix-like/install;         rm -rf bin/windows;         rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc;         gpgconf --kill all;         rm -rf "$GNUPGHOME";         rm -rf /var/lib/apt/lists/*;         groupadd -g 10000 lightstreamer;         useradd --no-log-init -M -s /usr/sbin/nologin -g lightstreamer -u 10000 lightstreamer;         chown -R lightstreamer:root /lightstreamer;         chmod -R g=u /lightstreamer # buildkit
# Fri, 02 Oct 2026 02:25:42 GMT
USER 10000:10000
# Fri, 02 Oct 2026 02:25:42 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 02:25:42 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 02 Oct 2026 02:25:42 GMT
CMD ["./LS.sh" "run"]
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
	-	`sha256:ffef58b983c1fc65e2b180d4a71e8d35211c0f21f4c5ff937c831b94fd5f3d7e`  
		Last Modified: Fri, 02 Oct 2026 01:19:16 GMT  
		Size: 27.0 MB (27026097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4411437139e9ca69460255dfb3dfc7a92fdb38dc8aa6f93dc99ab7380e7b5781`  
		Last Modified: Fri, 02 Oct 2026 01:19:19 GMT  
		Size: 158.1 MB (158122875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb3511313ef09e63104df472ecde5f05c8e2840b9e6096d16b0be6388f90361f`  
		Last Modified: Fri, 02 Oct 2026 01:19:15 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b5b1cd28d30690f97801a3a5f73b0de4dba50777f3a89d111f5f9201a3a7bf2`  
		Last Modified: Fri, 02 Oct 2026 01:19:15 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617f40d287daf534b98944b788097ab522873c3b0fe1c1fd468aa48ff2736b6b`  
		Last Modified: Fri, 02 Oct 2026 02:25:48 GMT  
		Size: 103.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ca33ff1028492780b9f2ecc8b781c987f5371f7e3d925fdeac3c60b1393b74`  
		Last Modified: Fri, 02 Oct 2026 02:25:49 GMT  
		Size: 53.8 MB (53838077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `lightstreamer:7-jdk21-temurin-base` - unknown; unknown

```console
$ docker pull lightstreamer@sha256:5807a3823b55fffd44b506f067da0b3934956918f034b6993e838b132966f41e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.2 KB (18151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7752314d66f183a50972b6177cb263ebd635e069ddce44e0e2f54dd5e479db2`

```dockerfile
```

-	Layers:
	-	`sha256:a3727511f41aaeb68d66e9b9f191933a9c1bb125be1db9153febb666be7cf182`  
		Last Modified: Fri, 02 Oct 2026 02:25:47 GMT  
		Size: 18.2 KB (18151 bytes)  
		MIME: application/vnd.in-toto+json

### `lightstreamer:7-jdk21-temurin-base` - linux; arm64 variant v8

```console
$ docker pull lightstreamer@sha256:5e745188dd0a5e91c820fae175a8efb403a755def57b2b20b7112cdc39d58353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.4 MB (278384411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2614bc17bc22bee50b150db685f0bddc700651e75cd2b22da3c3b905da01e8bc`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `[".\/LS.sh","run"]`

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
# Fri, 02 Oct 2026 01:18:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:51 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:51 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 02 Oct 2026 01:18:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:59 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:59 GMT
CMD ["jshell"]
# Fri, 02 Oct 2026 02:25:38 GMT
LABEL org.opencontainers.image.authors=Lightstreamer Server Development Team <support@lightstreamer.com>
# Fri, 02 Oct 2026 02:25:38 GMT
ENV LIGHTSTREAMER_VERSION=7.4.8
# Fri, 02 Oct 2026 02:25:38 GMT
ARG LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.8/Lightstreamer-7.4.8.tar.gz
# Fri, 02 Oct 2026 02:25:38 GMT
ARG FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
# Fri, 02 Oct 2026 02:25:38 GMT
WORKDIR /lightstreamer
# Fri, 02 Oct 2026 02:25:46 GMT
# ARGS: LIGHTSTREAMER_URL_DOWNLOAD=https://lightstreamer.com/distros/ls-server/7.4.8/Lightstreamer-7.4.8.tar.gz FINGERPRINT=9B90BFD14309C7DA5EF58D7D4A8C08966F29B4D2
RUN set -eux;         apt-get update && apt-get install -y --no-install-recommends curl gnupg;         curl -fSL -o Lightstreamer.tar.gz ${LIGHTSTREAMER_URL_DOWNLOAD};         curl -fSL -o Lightstreamer.tar.gz.asc ${LIGHTSTREAMER_URL_DOWNLOAD}.asc;         GNUPGHOME="$(mktemp -d)";         export GNUPGHOME;         gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys "${FINGERPRINT}";         gpg --batch --verify Lightstreamer.tar.gz.asc Lightstreamer.tar.gz;         tar -xf Lightstreamer.tar.gz --strip-components=1;         rm -rf docs pages adapters/welcome_res;         rm -f conf/*.xml;         rm -rf bin/unix-like/install;         rm -rf bin/windows;         rm Lightstreamer.tar.gz Lightstreamer.tar.gz.asc;         gpgconf --kill all;         rm -rf "$GNUPGHOME";         rm -rf /var/lib/apt/lists/*;         groupadd -g 10000 lightstreamer;         useradd --no-log-init -M -s /usr/sbin/nologin -g lightstreamer -u 10000 lightstreamer;         chown -R lightstreamer:root /lightstreamer;         chmod -R g=u /lightstreamer # buildkit
# Fri, 02 Oct 2026 02:25:46 GMT
USER 10000:10000
# Fri, 02 Oct 2026 02:25:46 GMT
EXPOSE map[8080/tcp:{}]
# Fri, 02 Oct 2026 02:25:46 GMT
WORKDIR /lightstreamer/bin/unix-like
# Fri, 02 Oct 2026 02:25:46 GMT
CMD ["./LS.sh" "run"]
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
	-	`sha256:e12971b8d00e476e601d435e52a9cd2d1b6ab0f76757647496e2b087d383b12b`  
		Last Modified: Fri, 02 Oct 2026 01:19:21 GMT  
		Size: 27.3 MB (27268942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8537097331f4921359f6968475d40ea5623d60da4a2dc36f7c2d49c19360cf2`  
		Last Modified: Fri, 02 Oct 2026 01:19:23 GMT  
		Size: 156.4 MB (156409486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dff556bf912850bce0b423717d4016fd396c3c936261e77529e892a3ae65b96`  
		Last Modified: Fri, 02 Oct 2026 01:19:20 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7d72162cd618905a141975f1f651af7fe3e996363588b9ba837c3664fb4360`  
		Last Modified: Fri, 02 Oct 2026 01:18:40 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68853f259ba6fc6c1da3374a08470e0a7d36b1c5f9b0a57422e2c5214315c5f9`  
		Last Modified: Fri, 02 Oct 2026 02:25:52 GMT  
		Size: 103.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6bacb655ae1cbb8c345a13e015f8f36c7e2177cf5b14699312c9ecdb556ee09`  
		Last Modified: Fri, 02 Oct 2026 02:25:54 GMT  
		Size: 53.8 MB (53838078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `lightstreamer:7-jdk21-temurin-base` - unknown; unknown

```console
$ docker pull lightstreamer@sha256:8fd289fea2ea2a96e937ef574f1a5ae59d6c0983087a307b9344109f22e65385
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.3 KB (18279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:062ef212349929b7d17e1b350cbf985ce2bcde1a4a3d4481173ae16aecaeb257`

```dockerfile
```

-	Layers:
	-	`sha256:6df1cc4ba590b0c62f17431be2730454800b011a393671ca83d18abbea8b8221`  
		Last Modified: Fri, 02 Oct 2026 02:25:52 GMT  
		Size: 18.3 KB (18279 bytes)  
		MIME: application/vnd.in-toto+json
