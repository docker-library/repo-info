## `eclipse-temurin:8u504-b01-jdk-resolute`

```console
$ docker pull eclipse-temurin@sha256:3b248de59f862d881765f14c94bdc72f04ab09b8324f3e776cf371ee9e87f7a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jdk-resolute` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:a0c061a98b00f4ec24a33296dd491efabf5ad948607f60ef382a295024279068
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.5 MB (117484855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:124e28dec2bc9a2957353e03e765236bffad1fd04f72e53b3a9fe5526d32388a`
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
# Sat, 17 Oct 2026 00:17:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:17:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:17:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:17:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:17:07 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:17:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:17:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:17:11 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:17:11 GMT
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
	-	`sha256:108138c1fc5da71846b18c51c3a8ef57d2c6eac1e25baeec009ee87320c3c8b6`  
		Last Modified: Sat, 17 Oct 2026 00:17:27 GMT  
		Size: 20.1 MB (20138629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b797700d32d8a8ab17f86247203f7d002e7355f2a56fb8b75135b030eeecadec`  
		Last Modified: Sat, 17 Oct 2026 00:17:28 GMT  
		Size: 55.2 MB (55194104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8127b7fd3b5326459e13ccba1649017ae70fd885342a1eb8c525651a22e52103`  
		Last Modified: Sat, 17 Oct 2026 00:17:26 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c328bd9aaf53a3ffaf4bae523d2a93f4fa807e2be16a9253612a351acfb0ed`  
		Last Modified: Sat, 17 Oct 2026 00:17:26 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:2dc3ded7cb1a8a94beff77dc6028ac4d8c417eaaecc68a773081512fa9abc1d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368200 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a3d9d975868eea53f09ac6c99094a57a0ec5f28d9f8718fd07f37e3c50a145`

```dockerfile
```

-	Layers:
	-	`sha256:ef7bf27f07abdc165cabb449f03f68d6f919b6b8ffb125c8e096ab54592d6fa0`  
		Last Modified: Sat, 17 Oct 2026 00:17:27 GMT  
		Size: 5.3 MB (5344022 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c8b95f6a655ba1ea352fcdb6257703e2f3466dfe7287dd90a69156d66c12c78`  
		Last Modified: Sat, 17 Oct 2026 00:17:26 GMT  
		Size: 24.2 KB (24178 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-resolute` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:048ff0d790597a8607c2124679dab51a5e1c7569364dc28dd835347a45e76687
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.0 MB (109021441 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfc58bad7167dda868ed85898ff83ce1cbd9aa2a5e505e5d6def8b88782ce157`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Tue, 06 Oct 2026 20:38:55 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.9623.tar --tag 26.04
# Tue, 06 Oct 2026 20:38:56 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Tue, 06 Oct 2026 20:38:56 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Tue, 06 Oct 2026 20:38:56 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 20:38:56 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-10-06T20:38:56.441753+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:56 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-10-06T20:38:56.441753+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Tue, 06 Oct 2026 20:38:56 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-f769691888dfc504c4977dc89c90edab/images/.temp_layer.control_data.9623.tar
# Sat, 17 Oct 2026 00:12:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:12:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:12:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:12:31 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:12:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:12:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:12:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e6fa045a055713decd932d119d412559ae7e6db8bcc17eaa6ac1084c59e22b85`  
		Last Modified: Wed, 07 Oct 2026 20:45:45 GMT  
		Size: 39.3 MB (39336523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e4725ff3fef2e8918abe94dc2b2072b2867af5ea8e3601c609dddd1f641e6d`  
		Last Modified: Wed, 07 Oct 2026 20:45:48 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67dbb19b908b8444aa55bd2f0fb3fd5beffbc0643c62ee1d96a83096c73dddd2`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 19.1 MB (19143876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253ab41c16626e706777d5e7cdc1e065120765482f511cab88656502f8cb5ae6`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 50.5 MB (50538041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5bbce8a776eafd3fc82be3949931e82362a7cfe238c09a0a3a6e56f3865bbd`  
		Last Modified: Sat, 17 Oct 2026 00:12:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76564779775e43ed38cbd6e7c0558610bcd37babdc5f233eb181ca024335daa1`  
		Last Modified: Sat, 17 Oct 2026 00:12:59 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:15308ce7be33ecf481c3cbfc6f793c31e7291a4cb0064cc60225430d7c7ece64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5371528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06d09bb59509a6f0e010022f18ed2b5afd31358c57ca206ff44156345df17109`

```dockerfile
```

-	Layers:
	-	`sha256:9814825ef0e3c31b33b12ea9b9508e13ac68cd8bde768aca51ed85c70754d670`  
		Last Modified: Sat, 17 Oct 2026 00:12:59 GMT  
		Size: 5.3 MB (5347229 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08c0084e39f482cf41d52d11c142a82f0c948b697ba9350ec6e97267c6930e48`  
		Last Modified: Sat, 17 Oct 2026 00:12:58 GMT  
		Size: 24.3 KB (24299 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-resolute` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:ff25ba1e49295969d84cc1aa83b27db54d4a586ae55604a94919c608ba538fba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **115.3 MB (115316593 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175f234a5f3272017c20d33deeb2707a1cde2ef00697c73afa3f136d16b0cae8`
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
# Sat, 17 Oct 2026 00:17:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:17:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:17:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:17:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:17:22 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:17:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:17:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:17:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:17:26 GMT
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
	-	`sha256:f17d5f95bf8f2f78d4edc99ad7be720eaffc348f466d7e40244b77ae76757276`  
		Last Modified: Sat, 17 Oct 2026 00:17:41 GMT  
		Size: 19.9 MB (19946211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e19fba39b6a7ae7be28c5d5fba97c426652055e2cdc6ddabc9eef86689562d`  
		Last Modified: Sat, 17 Oct 2026 00:17:42 GMT  
		Size: 54.3 MB (54259572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f096fa80c354e1a032a1f78ff5bd64e57d64c729a1f3d7e52ff434fdf7543e44`  
		Last Modified: Sat, 17 Oct 2026 00:17:40 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a919221e8b6d21b535bade6c142406a494afe614286cab1f0afdb67fbae3529`  
		Last Modified: Sat, 17 Oct 2026 00:17:40 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:20b9b55cb59c561ff7d33fb83c9b2a78b668b9073b7c7452aae46af25fd673c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5368750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8f5a9f27a9adf1afc2ce69cc84ed8116bab59fd8d8e38410ea74d7e5e8c1e20a`

```dockerfile
```

-	Layers:
	-	`sha256:cb4306664d03d810252e5cd8cecb6dc98f3b3d314e57626da8816f98f0bbb65e`  
		Last Modified: Sat, 17 Oct 2026 00:17:41 GMT  
		Size: 5.3 MB (5344415 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6cc1b307c36f9f42774b873fa992c944896c37624f627987e658466b78181598`  
		Last Modified: Sat, 17 Oct 2026 00:17:40 GMT  
		Size: 24.3 KB (24335 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-resolute` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:68552d93f7e756829f53548fd85de8d3a1c99c0a966ef83f5793c28c7df598d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.3 MB (122348340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8c5776ce9f38ce60fa9c983858d30017602e26d8b2f0a9cd3473037988e213d`
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
# Sat, 17 Oct 2026 00:18:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:18:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:18:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:18:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:18:16 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:18:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:18:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:18:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:18:25 GMT
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
	-	`sha256:9f0e26bf3fbdbb57517bdaf382e6b3d646d1d6c2e575f57a68f8ed3cf1df89ff`  
		Last Modified: Sat, 17 Oct 2026 00:19:07 GMT  
		Size: 22.4 MB (22448191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f722126b2ca152143c0f787405d5e454d3286901cfcee686398f4922a1480517`  
		Last Modified: Sat, 17 Oct 2026 00:19:08 GMT  
		Size: 52.7 MB (52670343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbcc3ccdbdfd231ed684825702b401582a926c29ff7069c576fdcb88a6c7676`  
		Last Modified: Sat, 17 Oct 2026 00:19:06 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22e7adf12199f7a09937fd3213749b153c1eb93f93aed045a904541a7016e7dc`  
		Last Modified: Sat, 17 Oct 2026 00:19:06 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-resolute` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:721f7cac38440a1af184e3fb84075dc327c87db1f12845165c0fe77a7218bc7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5370206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:536a9a094ef6f19b6556ce534bba72419a190d9d0d8389c33454351bf36c6974`

```dockerfile
```

-	Layers:
	-	`sha256:65dbe9092f3f14323478d2b6c2e7ebb1e91747b43bf6b1cd275acf4cf57748fb`  
		Last Modified: Sat, 17 Oct 2026 00:19:06 GMT  
		Size: 5.3 MB (5345968 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a032b547be09bab447e1bca8c55877b3f58869f910c36fd80babc3f2c6196875`  
		Last Modified: Sat, 17 Oct 2026 00:19:06 GMT  
		Size: 24.2 KB (24238 bytes)  
		MIME: application/vnd.in-toto+json
