## `eclipse-temurin:25-jre`

```console
$ docker pull eclipse-temurin@sha256:dbb43d81099eec91e0800226ed2296d03146ee7857165b95112372ad0d67e87f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:25-jre` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:171ffcf2a9ca207dfbc77b825cd3aaf8ab08d6113c086ee11514b965269fde28
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117387255 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea2ee6e4f3d6e057c1d5da6e72e8d80ffeeeee09024c3c7ef649d5ab84031a67`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 21:25:29 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9621.tar --tag 26.04
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T21:25:30.040262+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 21:25:30 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9621.tar
# Sat, 17 Oct 2026 00:20:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:20:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:20:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:20:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:20:05 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Sat, 17 Oct 2026 00:20:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:20:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:20:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:20:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:435bf5c20694c99dd5a9877e58e24b26a2207fcf8c692a3c3ce3c867770a5b41`  
		Last Modified: Wed, 07 Oct 2026 20:45:12 GMT  
		Size: 42.1 MB (42149117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d511d19a19ebdeda520e0752f184d457905c7a310df5b748d133a51274ecd4`  
		Last Modified: Wed, 07 Oct 2026 20:45:15 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9abc7098f0edd8e5e0024ec883118ddbf67dce21e8cc87c12ce2f5b876311960`  
		Last Modified: Sat, 17 Oct 2026 00:20:40 GMT  
		Size: 12.2 MB (12153647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5787b8fa2914f071f8979c0b733a6af9b21a41a1aaf9054aa5a0592a72730149`  
		Last Modified: Sat, 17 Oct 2026 00:20:41 GMT  
		Size: 63.1 MB (63081604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e60e4e3b521aebc38aa941d295e6e73315c6b6be8156fd0297756d3f006ad9b`  
		Last Modified: Sat, 17 Oct 2026 00:20:39 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6b678b4edb198c0fe7f41c4fc4f29493e3579f4c47d3cebbd92c86aa90f7a6d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4897861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8765eed04c0ac635d1b76acb81caa1ea06daf9e9dd9e8a3281f426cff03cd421`

```dockerfile
```

-	Layers:
	-	`sha256:6451330f9f33f49b7a45b296cd55fa487966a03a059bf26ff4e477ef06dc94a7`  
		Last Modified: Sat, 17 Oct 2026 00:20:40 GMT  
		Size: 4.9 MB (4874137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2054f399ed370f6852719341e4a98ddb5929ce5521d71e46639feca9fed13a55`  
		Last Modified: Sat, 17 Oct 2026 00:20:39 GMT  
		Size: 23.7 KB (23724 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:435b8f4e4482821627ecde4b9925a38617d9c1d877fabb13cf066501759d08eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.1 MB (115147260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d37b06fe9b89c42be2ffa7178d0364647d9ea8479983899d22512af87381125`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:11 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9614.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:12.175309+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:12 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9614.tar
# Sat, 17 Oct 2026 00:20:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:20:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:20:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:20:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:20:04 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Sat, 17 Oct 2026 00:20:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:20:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:20:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:20:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:00dbf11534ae4abda99e035d0e681f5254da63d2f778eaed69f1e5f6be9a6092`  
		Last Modified: Wed, 07 Oct 2026 20:45:23 GMT  
		Size: 41.1 MB (41107810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8eae6888566fa953bb1c57088f997a22020e240963959b195cbe865109eabd9`  
		Last Modified: Wed, 07 Oct 2026 20:45:26 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8039d568809e4e4be8c732badde0eff3f4c3e89cf202d98512577e65ac8808c1`  
		Last Modified: Sat, 17 Oct 2026 00:20:40 GMT  
		Size: 12.1 MB (12110242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e275404b5246016e1a6cf657a6ba9fafc19f0b795189b5aedfd1a2aa7f85840`  
		Last Modified: Sat, 17 Oct 2026 00:20:41 GMT  
		Size: 61.9 MB (61926326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e60e4e3b521aebc38aa941d295e6e73315c6b6be8156fd0297756d3f006ad9b`  
		Last Modified: Sat, 17 Oct 2026 00:20:39 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bd76b3dd81ccea66152f747217124823fe07bb5fcd90b61300962693e931904e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4897635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80499d2e3bdf2b676f83345e8a7235582992416afb4847025814ac28cb4c12b1`

```dockerfile
```

-	Layers:
	-	`sha256:73ddf958916d21397ffb3e6c8587009ca7875813a341ef10aff280f07ebe1ec3`  
		Last Modified: Sat, 17 Oct 2026 00:20:40 GMT  
		Size: 4.9 MB (4873777 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f877f3f6aa760fdba9ad77c4419351b75009a4e1179918a2971f2647f0c22505`  
		Last Modified: Sat, 17 Oct 2026 00:20:39 GMT  
		Size: 23.9 KB (23858 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:fa00a3b4a3e21ad64d5717c03f9bfce2a962ca4883e1c38bbc50e88f7e3afebf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122070282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4164bde49d437be8a3c92d1a331adb1308e1b91a60f48467fd6e9751a8d09e`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Sat, 17 Oct 2026 00:40:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:40:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:40:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:40:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:17 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Sat, 17 Oct 2026 00:41:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:41:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:41:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:41:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:290dc9e53d3e51aa6b35650c65e9a6474082533b762700e1c77ff1c769945263`  
		Last Modified: Sat, 17 Oct 2026 00:41:59 GMT  
		Size: 12.8 MB (12818164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabd8e18c8950cf0dce6432b2ded6ab09c94b823066e081e4580ae31d7162968`  
		Last Modified: Sat, 17 Oct 2026 00:42:00 GMT  
		Size: 62.0 MB (62022427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:495b062a759d852f0332cb57d9af3ea6370567ae7706871c881f981787d7b572`  
		Last Modified: Sat, 17 Oct 2026 00:41:49 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d866054bb5d68f5c8fc797149b2c6fd2a691214da60a8a7bce8e472372275a4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4900324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e15cdc584ad5edf97ac48ab80b7a9f9ad6d0978b3ba95825222da65317d9e680`

```dockerfile
```

-	Layers:
	-	`sha256:71b495c62276d7c2956dcd82a357ca33abf7d5a0b5efa990306696f26c763b19`  
		Last Modified: Sat, 17 Oct 2026 00:41:59 GMT  
		Size: 4.9 MB (4876552 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b0fd32345434f28a90ba71fe9731ce0f16725fb51a5c7d449f0de5a925bdd68`  
		Last Modified: Sat, 17 Oct 2026 00:41:58 GMT  
		Size: 23.8 KB (23772 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:b8407ed8521ead2cfc22bd5ddb81773df735f3995f53931a15f5ef3959e0a632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.9 MB (114866747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbde70b39a82d16068b033c0c434c7de23477293090b48fda169fa0190a07810`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9530.tar --tag 26.04
# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:37:54.627411+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:37:54.627411+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:37:54 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9530.tar
# Sat, 17 Oct 2026 00:16:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:16:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:16:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:16:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:16:42 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Sat, 17 Oct 2026 00:17:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:17:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:17:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:17:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:58b222a7d654928db697f09ab35f1d28b63e1b80b1af8ba0b211c6212710fe68`  
		Last Modified: Wed, 07 Oct 2026 20:46:06 GMT  
		Size: 41.9 MB (41852469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8cf00cdaca93b7dc1efd035532bf98c814789c3b27840617465396585a28ca`  
		Last Modified: Wed, 07 Oct 2026 20:46:09 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98083a2afecf631c4e17127afe72a19924ef482f68c94758dcc1ff1dd546942a`  
		Last Modified: Sat, 17 Oct 2026 00:17:31 GMT  
		Size: 12.5 MB (12476118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a38673ac0088221984a260f877c3f9a328261e2620235d960d2a21549e578d9e`  
		Last Modified: Sat, 17 Oct 2026 00:17:32 GMT  
		Size: 60.5 MB (60535275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:458ecec3f8d61d6bb5bc309eeeefc93ce687d162900f01ab3e806c17a2e81d93`  
		Last Modified: Sat, 17 Oct 2026 00:17:27 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:23c847766abb662918c5bef0207cf5796b4f4128ba81583cf63f2e5ea9b18cde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.9 MB (4898674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896891863ecbc79db9479174050ead9f11971c3f0b1d1094e35be7a2276a46da`

```dockerfile
```

-	Layers:
	-	`sha256:1555303d1109f7aa7b642fd4da5dace6f459bbb382629ef850eec2efb15811aa`  
		Last Modified: Sat, 17 Oct 2026 00:17:31 GMT  
		Size: 4.9 MB (4874950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c04f6fa49fabd733c3f4237f29d6cbc627c5362a2115fb3bd8cf60c80b4311f`  
		Last Modified: Sat, 17 Oct 2026 00:17:30 GMT  
		Size: 23.7 KB (23724 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jre` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:575c795148cb78fab0f7f6a8dc84140dd2e7a2e8631ebbfcf2992d48cd6ad798
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2493474642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42ab919f089fa45c24ab29d65705f1544e85bcc659a26fceb46695548c084c48`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:03:28 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:09:41 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 13 Oct 2026 23:09:55 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_windows_hotspot_25.0.4.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_windows_hotspot_25.0.4.1_1.msi ;     Write-Host ('Verifying sha256 (0b3b2550b36b8997be76c70f15b6afd29a0631622ea134c973a6c8180859a56b) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '0b3b2550b36b8997be76c70f15b6afd29a0631622ea134c973a6c8180859a56b') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:10:00 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:0938cf51b672b81c9804d1d5f0c57031c931f41b279270e84820c63642d6a3bd`  
		Last Modified: Tue, 10 Feb 2026 18:56:17 GMT  
		Size: 1.5 GB (1523059351 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:313fd727a719542e5d0b85e1b735e644a35d82775b58aa9afb5e79e24f63ae2f`  
		Last Modified: Tue, 13 Oct 2026 21:56:04 GMT  
		Size: 868.9 MB (868934967 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6c3eefa66abec721679c9887cafac6bee200779a314a0042e7975a7884b959c1`  
		Last Modified: Tue, 13 Oct 2026 23:04:01 GMT  
		Size: 1.3 KB (1287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:06fe36d5ee9e99ebdfd4dfb42a36569f131389f9db45ac47fc9030daed3adbf0`  
		Last Modified: Tue, 13 Oct 2026 23:10:04 GMT  
		Size: 1.3 KB (1283 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:62e995796aeb44a8a84332ee59ec1a661c60be7e2a62953407cd97a9934f7651`  
		Last Modified: Tue, 13 Oct 2026 23:10:14 GMT  
		Size: 101.1 MB (101124944 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f3fd28f388b3da66479067c570675e9c22dff311f87502ac1267787997f007b7`  
		Last Modified: Tue, 13 Oct 2026 23:10:04 GMT  
		Size: 352.8 KB (352810 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:25-jre` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:b4bdd5ecb1c9dc89bb643eef3fbdbb165ec504f52e7144aa21de396dca984f75
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2327743179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f03e15204a6cf5959129d3f53ae5aa3aea25db514c44b22e6c8b00971e86e2`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:06:17 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 13 Oct 2026 23:07:32 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_windows_hotspot_25.0.4.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_windows_hotspot_25.0.4.1_1.msi ;     Write-Host ('Verifying sha256 (0b3b2550b36b8997be76c70f15b6afd29a0631622ea134c973a6c8180859a56b) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne '0b3b2550b36b8997be76c70f15b6afd29a0631622ea134c973a6c8180859a56b') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-25' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:07:38 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
```

-	Layers:
	-	`sha256:3cc21a1b754848d23f00aa65cb94ec34c9a5dc6028b3aada42039c824738d02f`  
		Last Modified: Tue, 14 Oct 2025 18:58:34 GMT  
		Size: 1.5 GB (1489019076 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2ec79e5e58bee753e347abf7bc98770bade10fd0e7a859be73c331308b8eb13d`  
		Last Modified: Tue, 13 Oct 2026 17:53:54 GMT  
		Size: 737.3 MB (737266398 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2199c4844b30e9c638a16f875cb259173696ccfa543d7babf8dca385c8a34de4`  
		Last Modified: Tue, 13 Oct 2026 22:57:23 GMT  
		Size: 1.3 KB (1296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:bcbd0e85bda0358dee7b403cc18243a9c94b4769d7df7850fe47c536548baf30`  
		Last Modified: Tue, 13 Oct 2026 23:06:46 GMT  
		Size: 1.3 KB (1323 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:422209fdd0f5d58de2d3f60987b54264b796c9a707e80874b3a13118cd7ac129`  
		Last Modified: Tue, 13 Oct 2026 23:07:52 GMT  
		Size: 101.1 MB (101114272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a2db696757feb3be3b6263f2a63f1c25a19cc1eb75b73ca75d17498afc6d50bb`  
		Last Modified: Tue, 13 Oct 2026 23:07:42 GMT  
		Size: 340.8 KB (340814 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
