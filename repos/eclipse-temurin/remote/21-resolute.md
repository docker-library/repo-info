## `eclipse-temurin:21-resolute`

```console
$ docker pull eclipse-temurin@sha256:fba481a5b4af5c0a0c057759d57dac78fbae17900296d2295a7bd60804c0480e
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

### `eclipse-temurin:21-resolute` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:47ba03cf9270176dd8da310fc89fe940905da6618dc5de19fc6a723b8872b3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223752217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b389ca026d545339a1ae02b3377cf9a60121811bf877ff0f8f296097031cccbf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9520.tar --tag 26.04
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:25:59.825539+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:25:59 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9520.tar
# Fri, 25 Sep 2026 22:37:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:37:58 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:38:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:38:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:09923199ca0ebd3ad9fb1dd1d0ab85d2b86aa388b988c8d4c8ee4f660fdb9e9e`  
		Last Modified: Sat, 12 Sep 2026 12:56:35 GMT  
		Size: 41.6 MB (41572999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9b9856437537fc061e98f71ecab9d95d7745fbf7d7b871d2e54ca4c3b02ea5a`  
		Last Modified: Sat, 12 Sep 2026 12:56:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673e839bf3599fc44383ba43dd07d7ff2c73c25e36137c530b4b37d289490ba1`  
		Last Modified: Fri, 25 Sep 2026 22:38:27 GMT  
		Size: 24.1 MB (24053390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6068777a9bee65ae7a7d7a581d0cfbb6d7708b41ab88137e4c16a5458484b2`  
		Last Modified: Fri, 25 Sep 2026 22:38:29 GMT  
		Size: 158.1 MB (158122816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8245c1b029e96f339f6b50f4dae0f41b2e3e93e05d9bcc01050b607157a144bd`  
		Last Modified: Fri, 25 Sep 2026 22:38:26 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a29eeb483926d0106de90ddd51510551da9b174cde0900bb74720d0a5cad3e80`  
		Last Modified: Fri, 25 Sep 2026 22:38:26 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7ecb8b0e431dba1debf87fa54961ee3fd300d7dda62df20aa1e4ccb66d880683
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5390546 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55739f1f2cfa2077c3cbcae843a6aae929087d69367dbdecbcd1d311c68d0fb4`

```dockerfile
```

-	Layers:
	-	`sha256:47ef09b9cd7136dc82a369ae22c06825301c51b4cd504f75dccced0f451a58aa`  
		Last Modified: Fri, 25 Sep 2026 22:38:26 GMT  
		Size: 5.4 MB (5365645 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:746de1a66ac0ebcc56eea84a3ba6071987e958009a9fdca19c6ea7b7fb3a26f6`  
		Last Modified: Fri, 25 Sep 2026 22:38:26 GMT  
		Size: 24.9 KB (24901 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-resolute` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:e14a85b5c4f0dc076d68947ce32faf9eedb74e3ae7e301e08d98ef87d8502d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.1 MB (221099686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c4943d04dba8572525d573a58b8264f9b867d3f53d383c27687271d853ed79`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9609.tar --tag 26.04
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:29:18.701012+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:29:18 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9609.tar
# Fri, 25 Sep 2026 22:36:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:36:59 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:37:07 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7cb168fccdd249547ddc2d1c5365b1e743da77e0664e6233934fa720511320f5`  
		Last Modified: Sat, 12 Sep 2026 12:56:44 GMT  
		Size: 40.8 MB (40756067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70624a8d6970b2150eca9a8b37c64834b41072ba6e8f7978b1a7eac231497d1e`  
		Last Modified: Sat, 12 Sep 2026 12:56:47 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00cdce1e1fd395b6fdf80b2ceb6be54c9cb5a0ff14b99b725d660c169126b649`  
		Last Modified: Fri, 25 Sep 2026 22:37:27 GMT  
		Size: 23.9 MB (23931050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14775318b9c5419341e0f9b8c6e5e4edad88408d55a3afdf6f7d7df6b6998198`  
		Last Modified: Fri, 25 Sep 2026 22:37:30 GMT  
		Size: 156.4 MB (156409538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:754d1f1bed341352b0d8f0adbcab17d834c8a659e4bece08e47ba42b542de9b2`  
		Last Modified: Fri, 25 Sep 2026 22:37:26 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eba4f675e2356f3ad8329cb5addfd3426f14bf6ea229a43b85f84cdeebebf1b`  
		Last Modified: Fri, 25 Sep 2026 22:37:26 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4a4854e26b284a465fab26fb213d8ac6fd7e6bb03f6a4c6688d10f1aefc3e801
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5578120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:091eebc629695d2063bd4f30a95ed02f48422a8c3e7a4d95b59e20c8da7466fd`

```dockerfile
```

-	Layers:
	-	`sha256:1a6d0faf42a459cff7b16f99f553548aa23af7a9410f3a655e4c304e6f478dfe`  
		Last Modified: Fri, 25 Sep 2026 22:37:27 GMT  
		Size: 5.6 MB (5553061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c2ec034edb2c02b277935d07162c581718661e865007e1aaac5673b0d8cd5b1e`  
		Last Modified: Fri, 25 Sep 2026 22:37:26 GMT  
		Size: 25.1 KB (25059 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-resolute` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:94f081a3475a727577f0587c0c0f68283a892f5a3e44ef89a77391d7d975dcc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.2 MB (230233072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c9e03ff27a372b0acec66d253d69393f9a88d0873ee57ebabe9a76407b61a5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 12 Sep 2026 10:32:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9566.tar --tag 26.04
# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:32:50.586556+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:32:50.586556+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:32:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9566.tar
# Fri, 25 Sep 2026 22:47:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:47:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:47:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:47:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:47:05 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:53:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:53:57 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:53:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:53:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:53:59 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:962bf9d875d6e8ff3c9b897eff15c72d89dbe29382b528395357e9d833c32fca`  
		Last Modified: Sat, 12 Sep 2026 12:56:54 GMT  
		Size: 46.8 MB (46823153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b636516270ec3ead8a7f42e0dcac6372059cb5d7dc0a8fecbb3f92457667620`  
		Last Modified: Sat, 12 Sep 2026 12:56:57 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b7bd12bee63504c9f29dbc6e993d9bb1cf5f7c9048ea77a4bd00d89cc25779`  
		Last Modified: Fri, 25 Sep 2026 22:48:31 GMT  
		Size: 25.1 MB (25121294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1995a6f86c76def82a59460bfb84e4c042f13185a8e17ad555d146da53918c2c`  
		Last Modified: Fri, 25 Sep 2026 22:55:06 GMT  
		Size: 158.3 MB (158285613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a89237eb37150ee20357649c23233463904124cac95d1b8eb7d7b6fe87404d`  
		Last Modified: Fri, 25 Sep 2026 22:55:02 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00e2e1b224469aba364c7d8a7b56dc10d588f6afb1a731a11ab48352d4a56131`  
		Last Modified: Fri, 25 Sep 2026 22:55:02 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5fc3e90352ca479b3825d788db6bd5b3204a70cf7f43767e14620433d5a21bf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5466832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cea9182ab4759d00331d9e0594e15eed3570262911e11485ee8f3dab800e91b6`

```dockerfile
```

-	Layers:
	-	`sha256:45b6c51bc149c71f30e836c934e4abe63ec203e59d4203013f3af7b6c19f6fff`  
		Last Modified: Fri, 25 Sep 2026 22:55:03 GMT  
		Size: 5.4 MB (5441872 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:056263ed25a00d71b35e40d52ae802155d06ff56a2cb38e76186a5e12ac98c63`  
		Last Modified: Fri, 25 Sep 2026 22:55:02 GMT  
		Size: 25.0 KB (24960 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-resolute` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:82e4718c230c618d5c77bdbbffd54c77c6aea722cfb88a6752712401354aa56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.4 MB (211392408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb0e9082b687727ac4a291104e8ff55050abeb5b018199cbcbf013feaf782468`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sat, 12 Sep 2026 10:30:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9505.tar --tag 26.04
# Sat, 12 Sep 2026 10:30:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:30:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:30:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:30:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:30:50.383073+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:30:50 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:30:50.383073+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:30:50 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9505.tar
# Fri, 25 Sep 2026 22:37:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:37:07 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:37:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:37:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 22:37:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5749aae541bffab5d98f0c390ef798f908396dc2f7d5fc10a9ca2aa887bd95aa`  
		Last Modified: Sat, 12 Sep 2026 12:57:23 GMT  
		Size: 41.2 MB (41162248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9347ac68264f5bab92b67fcfd1902c454d10fe482c48765a6cc1096647d4bf1e`  
		Last Modified: Sat, 12 Sep 2026 12:57:26 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a60e3a04b8abac9887cb3930cdb4b5b232bd8fc6e13f80d19179e48bcd01772`  
		Last Modified: Fri, 25 Sep 2026 22:37:39 GMT  
		Size: 22.9 MB (22870633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e08e7926165a52bdabf4a9b16e92370de8a675aef87e50815cfb8e6a31cd4ac`  
		Last Modified: Fri, 25 Sep 2026 22:37:41 GMT  
		Size: 147.4 MB (147356516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6caf73e608efafb3cc53fd46341e5bca2345056a2d4917ee689d38337fc1665d`  
		Last Modified: Fri, 25 Sep 2026 22:37:38 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7181e67e6a1500aa6a672ce4e186bfa5d7fd5b878c59fe4fccbf4c9d53916cd`  
		Last Modified: Fri, 25 Sep 2026 22:37:38 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f6fdcad46bb12613b128b92496dc142225c4e81fe8278225c2a558da9a4c6d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5325789 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8dce20339fd2e5125426a19cd3e8e219c233d1bc0161706bab76abe5b903b81`

```dockerfile
```

-	Layers:
	-	`sha256:6e2d71d7558c6c36003fbe9264e820e84f4a39bee0d9f26d0996590664a32f21`  
		Last Modified: Fri, 25 Sep 2026 22:37:39 GMT  
		Size: 5.3 MB (5300888 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8685c70e30a90b2981aabfb83637bea10f9edd623b96fcf52828f81e67fa18c1`  
		Last Modified: Fri, 25 Sep 2026 22:37:38 GMT  
		Size: 24.9 KB (24901 bytes)  
		MIME: application/vnd.in-toto+json
