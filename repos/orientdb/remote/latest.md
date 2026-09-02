## `orientdb:latest`

```console
$ docker pull orientdb@sha256:2e31caa3df92d242fe99ff4fcf163c8d66e4908989521d4a4c736158de69e478
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:1d8dc81cc79d4f92b22d615097c23b2142cb84ea17b4ef310df840f1b6ff4f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.4 MB (192374421 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91a3c330f80935ae32558d8ed15d84c1ee117c6125e9ddfe0ba8f79e97fa9753`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9259.tar --tag 26.04
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:02:45.677319+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:02:45 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9259.tar
# Fri, 21 Aug 2026 18:21:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:21:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:21:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:21:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:21:56 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:21:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 21 Aug 2026 18:21:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:21:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:21:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 02 Sep 2026 21:03:04 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 02 Sep 2026 21:03:04 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 02 Sep 2026 21:03:04 GMT
ENV ORIENTDB_VERSION=3.2.56
# Wed, 02 Sep 2026 21:03:04 GMT
ENV ORIENTDB_DOWNLOAD_MD5=0005ae8c3b595552e9c269386fdb1cc6
# Wed, 02 Sep 2026 21:03:04 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=fe037180a938d22df60b9fed5c1b0b0dc0540efc
# Wed, 02 Sep 2026 21:03:04 GMT
ENV ORIENTDB_DOWNLOAD_URL=https://repo1.maven.org/maven2/com/orientechnologies/orientdb-community/3.2.56/orientdb-community-3.2.56.tar.gz
# Wed, 02 Sep 2026 21:03:04 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 02 Sep 2026 21:03:06 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/* # buildkit
# Wed, 02 Sep 2026 21:03:06 GMT
ENV PATH=/orientdb/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 21:03:06 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 02 Sep 2026 21:03:06 GMT
WORKDIR /orientdb
# Wed, 02 Sep 2026 21:03:06 GMT
EXPOSE map[2424/tcp:{}]
# Wed, 02 Sep 2026 21:03:06 GMT
EXPOSE map[2480/tcp:{}]
# Wed, 02 Sep 2026 21:03:06 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:06e9d71331fb2b620a4f6c8064e0f84b284bb69a42c7c57b1c962bd4a4cdee76`  
		Last Modified: Mon, 17 Aug 2026 11:35:16 GMT  
		Size: 41.6 MB (41569203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3db1cd940786339b09d8a60e47c66fea9502d788e6fab5bec91a4a77d4ced1c`  
		Last Modified: Mon, 17 Aug 2026 11:35:18 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:333a5c76abd5b116319434d67f9857366ba89f1c930304428eafb5697bc9f52a`  
		Last Modified: Fri, 21 Aug 2026 18:22:13 GMT  
		Size: 20.1 MB (20127799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074878479feaa27233066c8a74e0a5f1d615a2f79acdc5e08f29ca7dc17ac45f`  
		Last Modified: Fri, 21 Aug 2026 18:22:14 GMT  
		Size: 55.2 MB (55168833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf172b2b08a815256f2f5afa3031893516ea37311cbc3635d58357ab6ecfca2`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a04c6cebf4ac02525306f7667ea8f90b75f159489056950a25205f110a9b853`  
		Last Modified: Fri, 21 Aug 2026 18:22:12 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9738e20a76c6b302441b80b1bf45f07d77e61a735d026bc7ab588e60840df62a`  
		Last Modified: Wed, 02 Sep 2026 21:03:23 GMT  
		Size: 75.5 MB (75505516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `orientdb:latest` - unknown; unknown

```console
$ docker pull orientdb@sha256:f3bdc5a777adf24aeb66bb607b61dd3d4ec35d02ad44b9d31a8e3faeba3c9c3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5405346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:482983efae17e24c4779561ce7197b845598e3611bfb5fc19e1c7ee6cb3da579`

```dockerfile
```

-	Layers:
	-	`sha256:a39b9c76b41d015c9ecb56585e868e976d90caea54cbe705653b6ad11f8295c2`  
		Last Modified: Wed, 02 Sep 2026 21:03:21 GMT  
		Size: 5.4 MB (5390259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a2fcf7a3f299a859b4be45b9a9b1ffa040b7ebbf3e0edd690dedfcc19839a45`  
		Last Modified: Wed, 02 Sep 2026 21:03:21 GMT  
		Size: 15.1 KB (15087 bytes)  
		MIME: application/vnd.in-toto+json

### `orientdb:latest` - linux; arm64 variant v8

```console
$ docker pull orientdb@sha256:5c2a1d77234be95c098a0bd2e0d4bc501fc3f96130f4ea2e81dd0be00d7b6232
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.4 MB (190403991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039a6a5f0f64fd977a40a5739375c74ba85ee271fd4cb073f898aab46a1560f3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.9276.tar --tag 26.04
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-08-17T09:04:34.463771+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 17 Aug 2026 09:04:34 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-a6225d8d49f545f312e4b2d59bc5cd53/images/.temp_layer.control_data.9276.tar
# Fri, 21 Aug 2026 18:25:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:25:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:25:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:25:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:25:17 GMT
ENV JAVA_VERSION=jdk8u502-b07
# Fri, 21 Aug 2026 18:25:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='b8f5440f64f50193c01f67dacba55c9660caffe13b908baf6bd1955f4dd4c3ea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_x64_linux_hotspot_8u502b07.tar.gz';          ;;        arm64)          ESUM='34912db17786f7144dab274f040a42028e25da6e7a6a09780d7013339a56bdb2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_aarch64_linux_hotspot_8u502b07.tar.gz';          ;;        ppc64el)          ESUM='626e870f411d01d6541fafa11e64b8584d8b737195cec5576256e6d3d34a62ba';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u502-b07/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u502b07.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 21 Aug 2026 18:25:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:25:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:25:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 02 Sep 2026 21:03:45 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Wed, 02 Sep 2026 21:03:45 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Wed, 02 Sep 2026 21:03:45 GMT
ENV ORIENTDB_VERSION=3.2.56
# Wed, 02 Sep 2026 21:03:45 GMT
ENV ORIENTDB_DOWNLOAD_MD5=0005ae8c3b595552e9c269386fdb1cc6
# Wed, 02 Sep 2026 21:03:45 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=fe037180a938d22df60b9fed5c1b0b0dc0540efc
# Wed, 02 Sep 2026 21:03:45 GMT
ENV ORIENTDB_DOWNLOAD_URL=https://repo1.maven.org/maven2/com/orientechnologies/orientdb-community/3.2.56/orientdb-community-3.2.56.tar.gz
# Wed, 02 Sep 2026 21:03:45 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 02 Sep 2026 21:03:47 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/* # buildkit
# Wed, 02 Sep 2026 21:03:47 GMT
ENV PATH=/orientdb/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 02 Sep 2026 21:03:47 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Wed, 02 Sep 2026 21:03:47 GMT
WORKDIR /orientdb
# Wed, 02 Sep 2026 21:03:47 GMT
EXPOSE map[2424/tcp:{}]
# Wed, 02 Sep 2026 21:03:47 GMT
EXPOSE map[2480/tcp:{}]
# Wed, 02 Sep 2026 21:03:47 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:ed8299a102e92f64acbfa58a37767418df099675d441bc4b89ab8f7f17795b6f`  
		Last Modified: Mon, 17 Aug 2026 11:35:26 GMT  
		Size: 40.7 MB (40696422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50914c2b24a11b34d9332dbbf527f85d394298a976d84cf1e3a7b1e16205d29e`  
		Last Modified: Mon, 17 Aug 2026 11:35:29 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c97249648758c1d20c56550c3ac2dc7170c2e84a0cfe6b023a4adea074256e57`  
		Last Modified: Fri, 21 Aug 2026 18:25:36 GMT  
		Size: 19.9 MB (19929474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009644c3e9cd9bd3e4134b33638d18f3d8a44d4c07b1a61b3e4495f3af09aa43`  
		Last Modified: Fri, 21 Aug 2026 18:25:37 GMT  
		Size: 54.3 MB (54269519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5796edd4902612af2701fecca19509c6d2fa9bf11afeda59cad1df7426c93e3`  
		Last Modified: Fri, 21 Aug 2026 18:25:35 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f8f50263788701af27c7205b2d6f9c280df4643a521e1eec960943a0032fdd`  
		Last Modified: Fri, 21 Aug 2026 18:25:35 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6516a292c1a1d694b5b517a61d7baa39ae7ac95193d70aebbaee1a4f7402dfb6`  
		Last Modified: Wed, 02 Sep 2026 21:04:04 GMT  
		Size: 75.5 MB (75505506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `orientdb:latest` - unknown; unknown

```console
$ docker pull orientdb@sha256:f9fd1d56f8865903f19e6c3bbaf04dba58f203a011f744fe5071854667026ed3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5405809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbcafbddef43d079d076607a7deaf6982ba7013b92a0253ebca99d58488298a0`

```dockerfile
```

-	Layers:
	-	`sha256:a2b811be34b73cb043e23dbd29c5de924b9a6a764102b107821efcc0d57ec94e`  
		Last Modified: Wed, 02 Sep 2026 21:04:02 GMT  
		Size: 5.4 MB (5390616 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fc2c7e81349b9593d3bdf136f70befcbae502dc138f4b0e044a0afe7d255adfd`  
		Last Modified: Wed, 02 Sep 2026 21:04:02 GMT  
		Size: 15.2 KB (15193 bytes)  
		MIME: application/vnd.in-toto+json
