## `orientdb:latest`

```console
$ docker pull orientdb@sha256:4b9ba7bc40f1eb49f8b60c90f5fcd009961843237031bbd8d60d1fe40655c013
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:355029a9dff1713d2c6110b0b9ef79c1decc494c2792acc7bf531f6fb1dd18ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198712685 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:841e229043f0396d26de872ac5dae7b44695b6a2bfd5bb19571685c5fdb43c9b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["server.sh"]`

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
# Wed, 09 Sep 2026 02:18:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:18:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:18:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:18:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:18:14 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 02:18:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 09 Sep 2026 02:18:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:18:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:18:18 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 03:29:20 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 09 Sep 2026 03:29:20 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 09 Sep 2026 03:29:20 GMT
ENV ORIENTDB_VERSION=3.2.56
# Wed, 09 Sep 2026 03:29:20 GMT
ENV ORIENTDB_DOWNLOAD_MD5=0005ae8c3b595552e9c269386fdb1cc6
# Wed, 09 Sep 2026 03:29:20 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=fe037180a938d22df60b9fed5c1b0b0dc0540efc
# Wed, 09 Sep 2026 03:29:20 GMT
ENV ORIENTDB_DOWNLOAD_URL=https://repo1.maven.org/maven2/com/orientechnologies/orientdb-community/3.2.56/orientdb-community-3.2.56.tar.gz
# Wed, 09 Sep 2026 03:29:20 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:29:21 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/* # buildkit
# Wed, 09 Sep 2026 03:29:21 GMT
ENV PATH=/orientdb/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:29:21 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 09 Sep 2026 03:29:21 GMT
WORKDIR /orientdb
# Wed, 09 Sep 2026 03:29:21 GMT
EXPOSE map[2424/tcp:{}]
# Wed, 09 Sep 2026 03:29:21 GMT
EXPOSE map[2480/tcp:{}]
# Wed, 09 Sep 2026 03:29:21 GMT
CMD ["server.sh"]
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
	-	`sha256:154aca8b65e4403c57c4635d45f726abb250577d662d8a8af4055f9ca7587491`  
		Last Modified: Wed, 09 Sep 2026 02:18:34 GMT  
		Size: 26.4 MB (26432509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db34aef94e378fa24decbfe17c31157e2611ab96f790356d5835c0f0574eda6`  
		Last Modified: Wed, 09 Sep 2026 02:18:35 GMT  
		Size: 55.2 MB (55168860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f575ebf894836c71a7a6c897780516266d074c69564e83ecca0aba20dc3bce0`  
		Last Modified: Wed, 09 Sep 2026 02:18:32 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ee4f953e53dff7bc7da0af03d7bd161a9926ea613effe74941a1c65ba97d8c`  
		Last Modified: Wed, 09 Sep 2026 02:18:32 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:119ab6b34e3e29723fc3706d2cb5bffb6f5a55bc3f5507b9ae93103ac65b38e8`  
		Last Modified: Wed, 09 Sep 2026 03:29:37 GMT  
		Size: 75.5 MB (75505545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `orientdb:latest` - unknown; unknown

```console
$ docker pull orientdb@sha256:37251b3bc68962d7893d5c31d42d31eb8767ccf5b8c1ee26c997cf308ca3d8c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5407117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9edc479136c0cf2b27eb2a82a6b2f4cf9d8a91fa69f02eeadb87781c114a7881`

```dockerfile
```

-	Layers:
	-	`sha256:e788d54df01e7a5bc47736bc662a98cf913d7a1cc1bf477bfb94fb8231e4661b`  
		Last Modified: Wed, 09 Sep 2026 03:29:35 GMT  
		Size: 5.4 MB (5392030 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74fbdb705ec8306d7266cbe514c2c771c35f8cb963b1ce6f8114da54187c1fc4`  
		Last Modified: Wed, 09 Sep 2026 03:29:35 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `orientdb:latest` - linux; arm64 variant v8

```console
$ docker pull orientdb@sha256:98bae44dab2f3ffb3582e0da4fec9b4881ef68384fcaffb8fb3e895de881a995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.6 MB (196574799 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6a41017e60daf078228101fac81553067eff4cdbd4876838bf37e90bda7d6d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["server.sh"]`

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
# Wed, 09 Sep 2026 02:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:16:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:16:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:16:32 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Wed, 09 Sep 2026 02:16:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Wed, 09 Sep 2026 02:16:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:16:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:16:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 03:40:51 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 09 Sep 2026 03:40:51 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 09 Sep 2026 03:40:51 GMT
ENV ORIENTDB_VERSION=3.2.56
# Wed, 09 Sep 2026 03:40:51 GMT
ENV ORIENTDB_DOWNLOAD_MD5=0005ae8c3b595552e9c269386fdb1cc6
# Wed, 09 Sep 2026 03:40:51 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=fe037180a938d22df60b9fed5c1b0b0dc0540efc
# Wed, 09 Sep 2026 03:40:51 GMT
ENV ORIENTDB_DOWNLOAD_URL=https://repo1.maven.org/maven2/com/orientechnologies/orientdb-community/3.2.56/orientdb-community-3.2.56.tar.gz
# Wed, 09 Sep 2026 03:40:51 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 03:40:53 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/* # buildkit
# Wed, 09 Sep 2026 03:40:53 GMT
ENV PATH=/orientdb/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 03:40:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 09 Sep 2026 03:40:53 GMT
WORKDIR /orientdb
# Wed, 09 Sep 2026 03:40:53 GMT
EXPOSE map[2424/tcp:{}]
# Wed, 09 Sep 2026 03:40:53 GMT
EXPOSE map[2480/tcp:{}]
# Wed, 09 Sep 2026 03:40:53 GMT
CMD ["server.sh"]
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
	-	`sha256:e12f828bbedb2232b4f7ffbaa71ae04d1291fc8a42a1d7e3bae3d641e3d3aa24`  
		Last Modified: Wed, 09 Sep 2026 02:16:51 GMT  
		Size: 26.1 MB (26061824 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1cb715de8c2e561b37226929478d0cfc735e6d3ae969d13409b365aa58eac6`  
		Last Modified: Wed, 09 Sep 2026 02:16:52 GMT  
		Size: 54.3 MB (54269534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0a7cde728f4d6929f4fd9e0aec270aae754d982b6e5cf423567f241a4b1ed9`  
		Last Modified: Wed, 09 Sep 2026 02:16:50 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1b9378a96672228517b8225c13a2c5830aff42e703ca737e128203a4b89ebb2`  
		Last Modified: Wed, 09 Sep 2026 02:16:50 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7eac290c00f12ab150c2980d694f31bf78623dfb5544ee1c565a9b2a146163`  
		Last Modified: Wed, 09 Sep 2026 03:41:09 GMT  
		Size: 75.5 MB (75505545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `orientdb:latest` - unknown; unknown

```console
$ docker pull orientdb@sha256:e7d41463cc0e6709dcc511ebacd3f2e8b2d25fd94a0e3854b66fe64499a03480
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5407581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6da2eb7c99b9237f7f238541ae55cf8876497c7b71ac9b8af2ba63333921f4ca`

```dockerfile
```

-	Layers:
	-	`sha256:22188431d284096aebc9a3b0b5bf1cec547d357166bf9aeb82e66adb87b4d50c`  
		Last Modified: Wed, 09 Sep 2026 03:41:07 GMT  
		Size: 5.4 MB (5392387 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7612d50493b36b46343f401ac56c6805fce3c4e2a9103957a1507df28750944d`  
		Last Modified: Wed, 09 Sep 2026 03:41:07 GMT  
		Size: 15.2 KB (15194 bytes)  
		MIME: application/vnd.in-toto+json
