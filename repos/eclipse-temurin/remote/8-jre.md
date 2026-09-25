## `eclipse-temurin:8-jre`

```console
$ docker pull eclipse-temurin@sha256:66a7b358772dfdcc1486919a5ede66d6c7275f203a5fefddb39565c2a151a485
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:8-jre` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:c9b88ce5d49ce3ba5498033ce0a93c0481b0ee89e3308474b68efbea4acc11d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.0 MB (104044817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:418c9c6fa78db37306400d4e1d7990f4fba53c80ae8b59cb614303deca0cc426`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 25 Sep 2026 22:35:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:19 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:e5ca12c9c1660e09b2bd2e5e353212f0aabd47b80713dca6345d8734f95d3652`  
		Last Modified: Fri, 25 Sep 2026 22:35:36 GMT  
		Size: 20.1 MB (20133767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac56fdd524855ba11bb2faf76d5fa89d7e2a2418dba8119133977f00a3d79a1`  
		Last Modified: Fri, 25 Sep 2026 22:35:37 GMT  
		Size: 42.3 MB (42335067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55f4feeb36b8c03ed2752528da1d2c8ff65c4b6aba55dc8ee6de39c5674efe75`  
		Last Modified: Fri, 25 Sep 2026 22:35:35 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac746cb7f7be07ae59c735141592759571d48728b9a12a61690e4f61b2923c98`  
		Last Modified: Fri, 25 Sep 2026 22:35:35 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:91a3b220e8d82a73675ac6a25ef8e3b2c55b9f975a1640ccd26b0bc7e4abaa18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5149583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16626403a3da4f2ac39dc48f85c6783261845aec603fc81adea8a779ea6e2d5a`

```dockerfile
```

-	Layers:
	-	`sha256:870fb730b638905299c4dd77e4568e2f273733290b66f62b55b8306e008023cd`  
		Last Modified: Fri, 25 Sep 2026 22:35:35 GMT  
		Size: 5.1 MB (5126232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8322f3188689f24b854f99b36fff2dd167f527fa1911e629aaedc74e69847838`  
		Last Modified: Fri, 25 Sep 2026 22:35:35 GMT  
		Size: 23.4 KB (23351 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:8e33573c736d60a89a25729155c4659c018e2fe8fdd620ea9f024e57443d6c9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.0 MB (101999975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5cfdb1bc866fdc4af123b08a960da7b29ef4c912a47ad7194c50a29993f7d1d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 25 Sep 2026 22:35:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:14 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:53e51e4e7c843ee550b3b651dfcd0b363a6eda134025911c2bde5ee62a395c7b`  
		Last Modified: Fri, 25 Sep 2026 22:35:31 GMT  
		Size: 19.9 MB (19944692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8413d6a2930859323250247cb19e69257c5ae96fde20c4da82d2dc40b12754`  
		Last Modified: Fri, 25 Sep 2026 22:35:31 GMT  
		Size: 41.3 MB (41296217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:722f7478752b7a3331cfc3e1b0d751b1588e6911d2ea2f4c8c77d82fff766b44`  
		Last Modified: Fri, 25 Sep 2026 22:35:30 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7875eb25216fabb21d4d3791dc6e35c820670fd345729fcaf6e3c14f4acb858`  
		Last Modified: Fri, 25 Sep 2026 22:35:30 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1cbb1621d7c2c225e3e08badc811de8e0a760f78bcaa75186ab14f37323ea0eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5150079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44455031fec8ad46e8b0284292cef3a1347c305d11971a3da7a596b45e5c00a2`

```dockerfile
```

-	Layers:
	-	`sha256:b8c29f28249efacaa9ed08e31317bb650166aac7d7fdd6c515802bf43e497d05`  
		Last Modified: Fri, 25 Sep 2026 22:35:30 GMT  
		Size: 5.1 MB (5126593 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:77b1cfb6f4e73e505a8632f9704c40e172a41b16fe5ae3a17c6dab9ac44c5207`  
		Last Modified: Fri, 25 Sep 2026 22:35:30 GMT  
		Size: 23.5 KB (23486 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:90e6978c4c74c0432ae8f2bbf0021fc123c7a573f593d87fe4904feabf23f096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111012618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b847bb7a374f057b97168e475d629b89ea0bb684d968623532434be1a423d818`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 25 Sep 2026 22:34:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:14 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:14 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:36:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:36:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:36b4dee5775bb8d45c447a6456138c54bd23c1bdbd29ea47917233408eac4b83`  
		Last Modified: Fri, 25 Sep 2026 22:35:16 GMT  
		Size: 22.4 MB (22443276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcd25bd4118cac4290fbccd0dd435bf145982b8e8e2a01ae2e57aa3fc700831`  
		Last Modified: Fri, 25 Sep 2026 22:37:15 GMT  
		Size: 41.7 MB (41743208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18192bf2959296d4f946193f2341aaeaaf759f75d184f7498c24fc37b0b82efd`  
		Last Modified: Fri, 25 Sep 2026 22:37:14 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceddbb3b81bdbc85d2a87a7b6c754e5cccd2079395865f204b49fbd55732d0f3`  
		Last Modified: Fri, 25 Sep 2026 22:37:13 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6d5fca6b6a1cbc9b941ac202fdcc28f6bc38aff00b06c0b6f51def31ecccd23b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5153582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:511fcf094f7480e5f14dc4504e770d8d29b48e85d15d30730add1e853603d7e8`

```dockerfile
```

-	Layers:
	-	`sha256:d9f562592474d2c1c0a67369df4682f3b00af1235a78352eca213e46a1b62eba`  
		Last Modified: Fri, 25 Sep 2026 22:37:14 GMT  
		Size: 5.1 MB (5130182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b3e5e60cfcbd5cece2553747a70cd808ef54c309a042dab64c74cddcccce9e4d`  
		Last Modified: Fri, 25 Sep 2026 22:37:13 GMT  
		Size: 23.4 KB (23400 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jre` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:adabe526eca83909f73c71260c8378186a1ff4132cd365eb2a6cf6266b96208c
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2529974167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:472c4aa5ad417e8ecefd5da5e504ea3308dc8b7915b472f63b860255dda8d975`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:36:04 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:05 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:36:47 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:36:53 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:57ad760a8a0dac5abb352847ef76295f82b76df46372259a4df2102ad3adf78b`  
		Last Modified: Tue, 08 Sep 2026 17:45:23 GMT  
		Size: 934.6 MB (934570301 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3e154cb807894ea11bfd4d4476f00081c4f57645713d526558686f364d9eea65`  
		Last Modified: Fri, 25 Sep 2026 22:36:57 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0faec1699e3a3cc4c5fbef9e9be7b68388d97cd520229fbf0eb0e398cb6176`  
		Last Modified: Fri, 25 Sep 2026 22:36:57 GMT  
		Size: 1.3 KB (1259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:23e84472fd4b648993fb6bc15b85a3b6499b7388dd21266a6629724379020fac`  
		Last Modified: Fri, 25 Sep 2026 22:37:02 GMT  
		Size: 72.0 MB (71958441 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:701894052a083b9a7c65f1c3f2d100cc0cb43588ef0955bfbc58cc678267e392`  
		Last Modified: Fri, 25 Sep 2026 22:36:58 GMT  
		Size: 383.5 KB (383532 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:8-jre` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:79360c961e268de2ddc469b75c067bc10854d63f96db3b84240254479b182203
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2291770476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2980397b00d52e8ef5b88a15b898df9f08cf221ddd6116aa9cace1c26f878710`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 25 Sep 2026 22:36:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:14 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:37:09 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_windows_hotspot_8u504b01.msi ;     Write-Host ('Verifying sha256 (087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '087a67240cd659a35dd894ee1201ec1f989e244cbe29500f4fc0f00443850d09') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-8' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:37:16 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java -version'; java -version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:415798186eb335ced6c3ef7f07db644b7c42771bc47e33781ec5cea24c3285b6`  
		Last Modified: Tue, 08 Sep 2026 17:15:52 GMT  
		Size: 730.5 MB (730469634 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eac52a5caae33cc726fc03270c5f2b7abdf94d381b6d048509481bc7626fca6d`  
		Last Modified: Fri, 25 Sep 2026 22:37:20 GMT  
		Size: 1.3 KB (1319 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:072d372e7b308db10145221f5edf73cc86756abe95320d3342b5e9629839da17`  
		Last Modified: Fri, 25 Sep 2026 22:37:20 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3f0b215e800648d4edd80f2cd78930f59141b0161c203bb316d30eafa5f493c1`  
		Last Modified: Fri, 25 Sep 2026 22:37:25 GMT  
		Size: 71.9 MB (71924151 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2f225c3870da86c369846a4fcb71c65414b5db35c8b018c3b2f86028c1e68d48`  
		Last Modified: Fri, 25 Sep 2026 22:37:20 GMT  
		Size: 355.0 KB (355000 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
