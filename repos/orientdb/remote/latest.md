## `orientdb:latest`

```console
$ docker pull orientdb@sha256:98a348ec78e8604bc8895e310c95437d02101113d7ccec27cb2ce4d1bfd8a748
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `orientdb:latest` - linux; amd64

```console
$ docker pull orientdb@sha256:b6ded3c3f48bfc92ab72b2b9a8642eb6c88754f0303db69b5b7cf71e7a053cbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.1 MB (191126595 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27a60594dd26c3d3ff27dca1a70b17961c8ec382ac683bc0f6b6a08eadcb8771`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["server.sh"]`

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
# Thu, 16 Jul 2026 00:33:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:33:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:33:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:33:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:33:29 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 16 Jul 2026 00:33:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 16 Jul 2026 00:33:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:33:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:33:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 01:16:46 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 16 Jul 2026 01:16:46 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 16 Jul 2026 01:16:46 GMT
ENV ORIENTDB_VERSION=3.2.54
# Thu, 16 Jul 2026 01:16:46 GMT
ENV ORIENTDB_DOWNLOAD_MD5=c9db85cefc94e58f9651cfe399e5c017
# Thu, 16 Jul 2026 01:16:46 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=84ef61a94463b622acbd6037fe570854d7b478c5
# Thu, 16 Jul 2026 01:16:46 GMT
ENV ORIENTDB_DOWNLOAD_URL=https://repo1.maven.org/maven2/com/orientechnologies/orientdb-community/3.2.54/orientdb-community-3.2.54.tar.gz
# Thu, 16 Jul 2026 01:16:46 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:16:47 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/* # buildkit
# Thu, 16 Jul 2026 01:16:47 GMT
ENV PATH=/orientdb/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:16:47 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 16 Jul 2026 01:16:47 GMT
WORKDIR /orientdb
# Thu, 16 Jul 2026 01:16:47 GMT
EXPOSE map[2424/tcp:{}]
# Thu, 16 Jul 2026 01:16:47 GMT
EXPOSE map[2480/tcp:{}]
# Thu, 16 Jul 2026 01:16:47 GMT
CMD ["server.sh"]
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
	-	`sha256:15974d83365c123a0253e86c15a50ac9318da1dcf4338f511f6f29bce724fea4`  
		Last Modified: Thu, 16 Jul 2026 00:33:47 GMT  
		Size: 20.1 MB (20121645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031c6632c0660faf9ce7efc6d37731345ade6a05906c600926f2206d616a04fd`  
		Last Modified: Thu, 16 Jul 2026 00:33:49 GMT  
		Size: 55.2 MB (55200498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630baf655d34bdec6912f871f51d7672114c0a70decbe246b2dc4ffba1cda658`  
		Last Modified: Thu, 16 Jul 2026 00:33:47 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b246012eb32c41e22c2d29c05f81a0b043c7916612061499dcd43c5243b5585`  
		Last Modified: Thu, 16 Jul 2026 00:33:47 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0928243c38cc61a36f2eab87cc0e3f4b2c7f42df9afd8784381feb4181a9f46a`  
		Last Modified: Thu, 16 Jul 2026 01:17:03 GMT  
		Size: 74.2 MB (74220625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `orientdb:latest` - unknown; unknown

```console
$ docker pull orientdb@sha256:24e0c25cad643e3ab29df3132c8ac42b1af099792b23a9068333a2c751124e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5405951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a647bcf57e6eb3b41dddc1cce68b632eeb55dcf41c517d6e37f6d713494c8b`

```dockerfile
```

-	Layers:
	-	`sha256:39ec0d68168f3f269b0a741ac5ea2d6ba0adde24ea5f2d99b056f4b2ea3efa94`  
		Last Modified: Thu, 16 Jul 2026 01:17:01 GMT  
		Size: 5.4 MB (5390860 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ced8b13bad977c3421b82e7b44474d4df384b1dee48ba671cb01d025cd300e05`  
		Last Modified: Thu, 16 Jul 2026 01:17:01 GMT  
		Size: 15.1 KB (15091 bytes)  
		MIME: application/vnd.in-toto+json

### `orientdb:latest` - linux; arm variant v7

```console
$ docker pull orientdb@sha256:96d8e7285b3ddc3363989c744cb588d84efa394220fdf811c627bc094c5f7208
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.6 MB (182639193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d64b003c6b81e676b35cc76421331bbd98a88e1c093afebcb0aaf3900fb5fddf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["server.sh"]`

```dockerfile
# Mon, 13 Jul 2026 16:31:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.9155.tar --tag 26.04
# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-07-13T16:32:00.638517+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-07-13T16:32:00.638517+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Mon, 13 Jul 2026 16:32:00 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-9cbff345d050d8210022046bb567023a/images/.temp_layer.control_data.9155.tar
# Thu, 16 Jul 2026 00:21:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:21:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:21:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:21:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:21:14 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 16 Jul 2026 00:21:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 16 Jul 2026 00:21:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:21:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:21:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 01:13:49 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 16 Jul 2026 01:13:49 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 16 Jul 2026 01:13:49 GMT
ENV ORIENTDB_VERSION=3.2.54
# Thu, 16 Jul 2026 01:13:49 GMT
ENV ORIENTDB_DOWNLOAD_MD5=c9db85cefc94e58f9651cfe399e5c017
# Thu, 16 Jul 2026 01:13:49 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=84ef61a94463b622acbd6037fe570854d7b478c5
# Thu, 16 Jul 2026 01:13:49 GMT
ENV ORIENTDB_DOWNLOAD_URL=https://repo1.maven.org/maven2/com/orientechnologies/orientdb-community/3.2.54/orientdb-community-3.2.54.tar.gz
# Thu, 16 Jul 2026 01:13:49 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:13:53 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/* # buildkit
# Thu, 16 Jul 2026 01:13:53 GMT
ENV PATH=/orientdb/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:13:53 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 16 Jul 2026 01:13:53 GMT
WORKDIR /orientdb
# Thu, 16 Jul 2026 01:13:53 GMT
EXPOSE map[2424/tcp:{}]
# Thu, 16 Jul 2026 01:13:53 GMT
EXPOSE map[2480/tcp:{}]
# Thu, 16 Jul 2026 01:13:53 GMT
CMD ["server.sh"]
```

-	Layers:
	-	`sha256:aa792015b30db3d1c721c9b85ed84e4c55d79864d86dc190122d9b95aaeb3cb7`  
		Last Modified: Mon, 13 Jul 2026 22:14:08 GMT  
		Size: 38.7 MB (38749247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6a3f9e5b4e5a1e7252e8cb3569bdd5cacf2f5f84e5556f2e77bba25c6bb279`  
		Last Modified: Mon, 13 Jul 2026 22:14:11 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13cca90abcb27a7eb8d30e536faec7fc094940e7d245ad59fdc4562c014da7a4`  
		Last Modified: Thu, 16 Jul 2026 00:21:42 GMT  
		Size: 19.1 MB (19128171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb0bfec4ee6bde91cdef92ab7b065aa6eba9316afa63fbe7cab554a179152f2`  
		Last Modified: Thu, 16 Jul 2026 00:21:43 GMT  
		Size: 50.5 MB (50538089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aff4e8415af23080b0266161beba6b0ea9315a3ce9fd3cb4f12b0895be61b2af`  
		Last Modified: Thu, 16 Jul 2026 00:21:41 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade5af2932057f99b387307585566fd4f28d05f628ae2eed50c5dbf14d3f458e`  
		Last Modified: Thu, 16 Jul 2026 00:21:41 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d3b57bd9d8b2c8759b5b217c7d3f20a766b9ae5e4f7e902eb561fdd97fdab5`  
		Last Modified: Thu, 16 Jul 2026 01:14:10 GMT  
		Size: 74.2 MB (74220623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `orientdb:latest` - unknown; unknown

```console
$ docker pull orientdb@sha256:d17496e3b38fb5c4fa80ee57e2919e5e3d82d368b223f6a277c77d952c2a8e1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5409219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7dfc0f67aad2e4e9746f98a8b5540a7184c019b5422413ee1f3b8917f19e914a`

```dockerfile
```

-	Layers:
	-	`sha256:580f00383ba20facefcf9991e3584cce0b86fa06619f2e76251c35b40fe3bdd3`  
		Last Modified: Thu, 16 Jul 2026 01:14:08 GMT  
		Size: 5.4 MB (5394043 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6c794b2429d87c0218498383e9ee445a641a14d3ea8953676255b2faa544ee39`  
		Last Modified: Thu, 16 Jul 2026 01:14:08 GMT  
		Size: 15.2 KB (15176 bytes)  
		MIME: application/vnd.in-toto+json

### `orientdb:latest` - linux; arm64 variant v8

```console
$ docker pull orientdb@sha256:148f47f4fca21e174d52cf69dfa77594154cc873a8f8b18169cb9d01b3d2be82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.1 MB (189136686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ab043a473cc04c74a06ec45a50f33aa475bcdd55595e2c7a04c05d96ba70ec4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["server.sh"]`

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
# Thu, 16 Jul 2026 00:35:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 16 Jul 2026 00:35:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 00:35:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 16 Jul 2026 00:35:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:35:42 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 16 Jul 2026 00:35:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='da257f161d7f8c6ca5b0e5d9e4090f65ac28c5e398072e68b8ae87988b1d1a2e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='3c2253b986909c20f79d6de7a0cb957f89c243df57615897836046e24d2e5257';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='ac93b4b75d6c0592c83030dbbeeaed46f5fbfccb276cf26c86aab3e49bba090e';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='867e477e0a54159c7b774c55cfb046767120b1de43f705fa775ece74ea39e341';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 16 Jul 2026 00:35:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 16 Jul 2026 00:35:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 16 Jul 2026 00:35:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 16 Jul 2026 01:16:36 GMT
MAINTAINER OrientDB LTD (info@orientdb.com)
# Thu, 16 Jul 2026 01:16:36 GMT
ARG ORIENTDB_DOWNLOAD_SERVER
# Thu, 16 Jul 2026 01:16:36 GMT
ENV ORIENTDB_VERSION=3.2.54
# Thu, 16 Jul 2026 01:16:36 GMT
ENV ORIENTDB_DOWNLOAD_MD5=c9db85cefc94e58f9651cfe399e5c017
# Thu, 16 Jul 2026 01:16:36 GMT
ENV ORIENTDB_DOWNLOAD_SHA1=84ef61a94463b622acbd6037fe570854d7b478c5
# Thu, 16 Jul 2026 01:16:36 GMT
ENV ORIENTDB_DOWNLOAD_URL=https://repo1.maven.org/maven2/com/orientechnologies/orientdb-community/3.2.54/orientdb-community-3.2.54.tar.gz
# Thu, 16 Jul 2026 01:16:36 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN apt update     && apt install -y curl wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:16:38 GMT
# ARGS: ORIENTDB_DOWNLOAD_SERVER=
RUN mkdir /orientdb &&   wget  $ORIENTDB_DOWNLOAD_URL   && echo "$ORIENTDB_DOWNLOAD_MD5 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | md5sum -c -   && echo "$ORIENTDB_DOWNLOAD_SHA1 *orientdb-community-$ORIENTDB_VERSION.tar.gz" | sha1sum -c -   && tar -xvzf orientdb-community-$ORIENTDB_VERSION.tar.gz -C /orientdb --strip-components=1   && rm orientdb-community-$ORIENTDB_VERSION.tar.gz   && rm -rf /orientdb/databases/* # buildkit
# Thu, 16 Jul 2026 01:16:38 GMT
ENV PATH=/orientdb/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 16 Jul 2026 01:16:38 GMT
VOLUME [/orientdb/backup /orientdb/databases /orientdb/config]
# Thu, 16 Jul 2026 01:16:38 GMT
WORKDIR /orientdb
# Thu, 16 Jul 2026 01:16:38 GMT
EXPOSE map[2424/tcp:{}]
# Thu, 16 Jul 2026 01:16:38 GMT
EXPOSE map[2480/tcp:{}]
# Thu, 16 Jul 2026 01:16:38 GMT
CMD ["server.sh"]
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
	-	`sha256:db9565e89b2f83f7a003b30dedbeb27d106898b0177125e301cda4dc0464b8c8`  
		Last Modified: Thu, 16 Jul 2026 00:36:02 GMT  
		Size: 19.9 MB (19929977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46883a47ef16ec1840c9eb6471bd47108f99219206c6a94ff3ac928101c3c67`  
		Last Modified: Thu, 16 Jul 2026 00:36:02 GMT  
		Size: 54.3 MB (54277660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:554a644d0ac8e4183eb904bda1cb25519363aefcece3dc7f283e89d62325cc07`  
		Last Modified: Thu, 16 Jul 2026 00:36:00 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59226e74cc38a5dbe3f4e148b3aad4dca3617ce6af7496e22ac136f690300b5`  
		Last Modified: Thu, 16 Jul 2026 00:36:00 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f738da1a037ecddfaf4f8e6fcff2c48efc569d670c0ccf6095d5db2b99fe001b`  
		Last Modified: Thu, 16 Jul 2026 01:16:54 GMT  
		Size: 74.2 MB (74220637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `orientdb:latest` - unknown; unknown

```console
$ docker pull orientdb@sha256:f50e9ddd0dca905a888c483adf12716733c32ee1331b6073604b978eb4352368
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5406413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab1dbd41a416ba5a21474dfa0d29d8a6ec94de6b08325f928b60d85828202a87`

```dockerfile
```

-	Layers:
	-	`sha256:730b5f6c7ff1252e826b496f73ef3ebf091628f65251fdb8b42f7407b36551ef`  
		Last Modified: Thu, 16 Jul 2026 01:16:52 GMT  
		Size: 5.4 MB (5391217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd785ff0df1b439ced4fa252097dd2055a6d45cf598037c9bf36d665c6752fb8`  
		Last Modified: Thu, 16 Jul 2026 01:16:52 GMT  
		Size: 15.2 KB (15196 bytes)  
		MIME: application/vnd.in-toto+json
