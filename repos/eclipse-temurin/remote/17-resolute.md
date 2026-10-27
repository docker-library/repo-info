## `eclipse-temurin:17-resolute`

```console
$ docker pull eclipse-temurin@sha256:b68965b4a07581802b6f4afb5a1f596cc0b160d6a3b64d3a9fcf51c5ba717607
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:17-resolute` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:d33dea90ca5fe3a6cf08d1dd1a068c3d622cc79374a5f203e0784d614dcd662c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.0 MB (212031962 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c4ef8371c9f98515d8b0e63c98be90d90988e118d72737b257354d004dce84e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Mon, 26 Oct 2026 23:12:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:12:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:12:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:12:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:12:28 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Mon, 26 Oct 2026 23:12:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:12:34 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:12:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:12:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:12:35 GMT
CMD ["jshell"]
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
	-	`sha256:507a809d483bc0fbf8f3ce4d23dde3e938354bc7ecdea4ed6c3b18d637fc6e5b`  
		Last Modified: Mon, 26 Oct 2026 23:12:52 GMT  
		Size: 24.1 MB (24055616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c0798c0e6b4f26ea8a6e7209e5b6f903d6831924d795b9e681b8f6ccd0258c`  
		Last Modified: Mon, 26 Oct 2026 23:12:55 GMT  
		Size: 145.8 MB (145833414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:047f36c8080c83423ec7ed437922632ff3d555db2df28969e1d3a5ead6485e6c`  
		Last Modified: Mon, 26 Oct 2026 23:12:51 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85d33d75c76d3d7427f95c8374a5b75952aa09f73d8e70fd797005e5253d44cc`  
		Last Modified: Mon, 26 Oct 2026 23:12:51 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4a5211b4f39bb61925ba1815e8870dd3f3ec35edaa7c9621dba18efe5802c8b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5430402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0da83a585ffb40aaa3b77eb3a7e01dca3e3964185cdabfb9179b5ad958f6c5a`

```dockerfile
```

-	Layers:
	-	`sha256:32dd022a8b8d6eee30e4b85664af8eb76c299122af1efb370411ca168f2e5899`  
		Last Modified: Mon, 26 Oct 2026 23:12:52 GMT  
		Size: 5.4 MB (5404703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7da678f8c8ff412d415c6faec604d9fbe65e248d65c75cff7318a839154a092c`  
		Last Modified: Mon, 26 Oct 2026 23:12:51 GMT  
		Size: 25.7 KB (25699 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-resolute` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:da78ffdc96aac70b753105095debd674ff700515fee826c7240295de9b26ef4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **203.8 MB (203826842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ab930c5e35ff50f3c6b30ddf88d17a3734c9f7eb281423acf90848481743321`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 10:28:48 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9652.tar --tag 26.04
# Sun, 25 Oct 2026 10:28:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:28:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:28:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:28:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:28:49.111590+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:28:49 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:28:49.111590+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:28:49 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9652.tar
# Mon, 26 Oct 2026 23:49:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:49:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:49:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:49:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:49:36 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Mon, 26 Oct 2026 23:49:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:49:49 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:49:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:49:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:49:49 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:8cfe5e7243c1aaa18abd2de98cd881cac33104d383be422cc8a4eb7b735540ee`  
		Last Modified: Sun, 25 Oct 2026 13:21:45 GMT  
		Size: 39.3 MB (39346226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a0eca5eb66aeeaa2a6eca072e246c1ac37f5f960ad6827761485b79b07fe4c`  
		Last Modified: Sun, 25 Oct 2026 13:21:48 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f20cac9d6e529d974a11bd37f585a6a1ec317646997838b7584c7e213665ba`  
		Last Modified: Mon, 26 Oct 2026 23:50:09 GMT  
		Size: 21.3 MB (21333940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bbd2f5683fd7364dbb47e46f6515f51d0a0bb25d155ec777c3d91c8f39765c1`  
		Last Modified: Mon, 26 Oct 2026 23:50:11 GMT  
		Size: 143.1 MB (143143663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5a0a3b24870489f52ffdcf175bac2839f7283d2ef1b59a6b002adbb18743e`  
		Last Modified: Mon, 26 Oct 2026 23:50:08 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:514a8c6f62e07d4e1e6570a397e535a571e0c409fb56d1e7e602b8b076926efe`  
		Last Modified: Mon, 26 Oct 2026 23:50:08 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:8c532842f2be788d090ad4c23267b254d364dc5364284c58f74990ab9dbb706f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5354831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dfa0ee978f3c20604224cdcffcada2e511e3648c52be208782e55c7887c0eb3`

```dockerfile
```

-	Layers:
	-	`sha256:dce18334d9c32561a7242ca64b2bf6f7922207646222ea2bc5a11ad6e23e8a28`  
		Last Modified: Mon, 26 Oct 2026 23:50:08 GMT  
		Size: 5.3 MB (5329010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:496716926ba1baa4f5277f269ba1eef393b2e3ff78d40bfbdf9cb02a52a1ef84`  
		Last Modified: Mon, 26 Oct 2026 23:50:08 GMT  
		Size: 25.8 KB (25821 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-resolute` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:114ecea150de72565e5b431e44f69fe69e5781e0f1855c8fe3fef71c245e0189
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.7 MB (209715113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bb9ef929b92c82db2f86381672342c43e835f81ed583af839414d9e9a073644`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 10:30:31 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9649.tar --tag 26.04
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:30:32.309136+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:30:32 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9649.tar
# Mon, 26 Oct 2026 23:16:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:16:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:16:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:16:50 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:16:50 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Mon, 26 Oct 2026 23:16:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:16:56 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:16:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:16:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:16:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:afa7f7d582de8ee3433df193ede10fc2c50d3398de31c14d329b643e7a69b852`  
		Last Modified: Sun, 25 Oct 2026 13:21:25 GMT  
		Size: 41.1 MB (41122308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f01cc7d6fb3d703f324d1ccddfddeaa2e8c97cf4b5d6936a66396eaf4089d99`  
		Last Modified: Sun, 25 Oct 2026 13:21:28 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7c602e9b208fe6cd21d1846064aed6c79cdf4b8ba805ff53a34abcea64923f`  
		Last Modified: Mon, 26 Oct 2026 23:17:17 GMT  
		Size: 23.9 MB (23932817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadfff06fef465160ba310ebea5e82b338d31dbc9daafc63cadcbb79756b1a9b`  
		Last Modified: Mon, 26 Oct 2026 23:17:19 GMT  
		Size: 144.7 MB (144656979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5cb3d800c513444b55d4896efc369ac2fb436618ed17e560853bcc33a164ca`  
		Last Modified: Mon, 26 Oct 2026 23:17:16 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112ace6b6b7dbea918fee7f75ebf529e4c85b9dc56c63ab97dad07e0a30533fe`  
		Last Modified: Mon, 26 Oct 2026 23:17:16 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:7801df38f20fd7e8b7aaf180d220938a28dbb944e3eb425414c05d82899c3d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5617976 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22af76b32df99743be4e23dfb81684fabb8385d247c8ffad86578078cf40684`

```dockerfile
```

-	Layers:
	-	`sha256:076935d689d7953f14d617e8e8c3c1b157c1f9abeed9bc70f3f555d100d2c0f8`  
		Last Modified: Mon, 26 Oct 2026 23:17:16 GMT  
		Size: 5.6 MB (5592119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2283d48184018b01c4dd8e0110d4efc3996bc091bf7417367be48e8b87329a19`  
		Last Modified: Mon, 26 Oct 2026 23:17:15 GMT  
		Size: 25.9 KB (25857 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-resolute` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:aed3ed097cd15670640172f2bbe26fcc4e902bbb4f56b852609e9c5ea885b58b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (218041551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb5f4612949a19849524c75eb0623e76f1fc4dc196cfb19e044eebb891043c60`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9489.tar --tag 26.04
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:40:52.926628+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:40:52.926628+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:40:52 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9489.tar
# Sat, 17 Oct 2026 00:27:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:27:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:27:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:27:02 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:27:02 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:27:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:27:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:27:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:27:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:27:21 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:a262d7f3fc44532425408a05158e95511d4ebe3af8c0a1de354e7157bb27d6f0`  
		Last Modified: Wed, 07 Oct 2026 20:45:34 GMT  
		Size: 47.2 MB (47226803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f84129b3088bcac32100330a0fc3d834e81f5cfe23a85ce237f2a63cc920d6`  
		Last Modified: Wed, 07 Oct 2026 20:45:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1403982d682947bbed4d3442f20398098a09ae2eb87e7be8cbd1f32657486c`  
		Last Modified: Sat, 17 Oct 2026 00:28:32 GMT  
		Size: 25.1 MB (25128634 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c641662784758475066bd40ae3cd34c85519e3ad50f6d4d7c1126f384941ae72`  
		Last Modified: Sat, 17 Oct 2026 00:28:35 GMT  
		Size: 145.7 MB (145683099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33772761bba570384d8e6313f3f010fdf6953227fd2c64958c84c20e59a2b138`  
		Last Modified: Sat, 17 Oct 2026 00:28:31 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1684403248a4a41d7d84f518385311d882e0be74486d25a2002a8481365fbc6d`  
		Last Modified: Sat, 17 Oct 2026 00:28:31 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e7b25c133f57d98215b1887e853f2a3520088bf7c3ed9f2832e827bad209e566
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5507285 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5ca5424d54f3fada764d16bfaae6956a4f18d5d930565871a9752878e32bcc9`

```dockerfile
```

-	Layers:
	-	`sha256:d60140b35516558746713bba336354e35c2f6a1e3ed5a261813069f9e1534e74`  
		Last Modified: Sat, 17 Oct 2026 00:28:31 GMT  
		Size: 5.5 MB (5481526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3e340927b38e2a98a5e9f4ce5bd43ba5ee7ae84c832fdba86c828146cbb71e02`  
		Last Modified: Sat, 17 Oct 2026 00:28:31 GMT  
		Size: 25.8 KB (25759 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-resolute` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:a026fe1edc7faae1c38626418477b471fc39afd7562b53edc8cdc10ded286b6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.6 MB (200622483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6975ee0637a4f5fc726b6f4a59f91affa415d4b680796b35ef185ba7fb36565d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 10:28:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.9596.tar --tag 26.04
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-25T10:28:30.233291+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-25T10:28:30.233291+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sun, 25 Oct 2026 10:28:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-cc003627bc5bab71b42ff0f8e1a41f88/images/.temp_layer.control_data.9596.tar
# Mon, 26 Oct 2026 23:38:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:38:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:38:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:38:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:38:30 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Mon, 26 Oct 2026 23:38:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:38:41 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:38:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:38:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:38:41 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:61476fe73885ca09aaa623798934448ebbde33c16caa22cd1fa158a7ce0d303b`  
		Last Modified: Sun, 25 Oct 2026 13:22:05 GMT  
		Size: 41.9 MB (41863655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025a64da30adad9ad74a50b5d93fba7c1f7b68079e2b830afe63de24390e10c8`  
		Last Modified: Sun, 25 Oct 2026 13:22:08 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e66e320b10e46c670c5cf2aae0c9f2dbd3e48d4c8cf6c7a4fdbb6d37ddb4a4`  
		Last Modified: Mon, 26 Oct 2026 23:39:07 GMT  
		Size: 22.9 MB (22874371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff6ea5ee29fbf61da87bfc4670bfd7dc6e87bc02af061766d7946a69723bd708`  
		Last Modified: Mon, 26 Oct 2026 23:39:10 GMT  
		Size: 135.9 MB (135881445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:740ae19d6a434a488d851ef65352f1dad40c14a3fa15f17064f4272b462de33d`  
		Last Modified: Mon, 26 Oct 2026 23:39:07 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6fe479a8ee09e470e3dcc9b25f3b101de0c202ef16c8cbd428ee5c4e6654c7d`  
		Last Modified: Mon, 26 Oct 2026 23:39:07 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:fc7d219864ea29dd2e2fc948f362e504f1bac20bf81e357b8c6a50a118c25be9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5365644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:809b51db1812f609b01d5572f52a63d4fa4646a027b5022b6660b6e3aa6c6226`

```dockerfile
```

-	Layers:
	-	`sha256:e040e8f45232438d47b90fbd769a75af24099bd300342beb60a0b616853177e9`  
		Last Modified: Mon, 26 Oct 2026 23:39:07 GMT  
		Size: 5.3 MB (5339946 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a426c228f27f3762b74db5d085f475cc891a69f62871c85c2ff458d0337a6f21`  
		Last Modified: Mon, 26 Oct 2026 23:39:07 GMT  
		Size: 25.7 KB (25698 bytes)  
		MIME: application/vnd.in-toto+json
