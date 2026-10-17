## `eclipse-temurin:17-jre`

```console
$ docker pull eclipse-temurin@sha256:e04fa72be13b257a59fdec6dc14af78c8f80f035d3c1ed4e03e45552a231d4c8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	windows version 10.0.26100.33650; amd64
	-	windows version 10.0.20348.5761; amd64

### `eclipse-temurin:17-jre` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:3f28040954c30a9deb5cdd1116f806029c435ac6dca8c228f5b6f1d96f82b827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.8 MB (109810809 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4ab0048f2a29d911c2e3e3c4ed7d9a3fc27b2823d0049d1cded1321950578d6`
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
# Sat, 17 Oct 2026 00:19:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:19:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:19:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:19:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:19:03 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:19:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:06 GMT
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
	-	`sha256:6ff07f99d2e68c4e304ab9624141b470e4d78c4dc63478e9a1f7c0d025bf27f8`  
		Last Modified: Sat, 17 Oct 2026 00:19:20 GMT  
		Size: 20.1 MB (20138549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd1003c3abca59bbb3781d99ea576f03dbfd472e7270ac89cd99b97eea5c1f9`  
		Last Modified: Sat, 17 Oct 2026 00:19:21 GMT  
		Size: 47.5 MB (47520129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9afe0605295600ccb9993225f9c424ccd6548ab1cd30add8d2759a2cff3ea0`  
		Last Modified: Sat, 17 Oct 2026 00:19:19 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf95cc2a7260b7f57ba5187255e68ff26f4c9078d3f6eeeed1b1ce525054e9b5`  
		Last Modified: Sat, 17 Oct 2026 00:19:19 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9b065b6fd42d124657227a95afc2e490eadf06c4ef84c79dcdb385e2c2796d95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5162891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62ce4c556b0a470a95081b3c6ce031dfc9aa9843ec985f34702d1798576b659f`

```dockerfile
```

-	Layers:
	-	`sha256:bc7de2b25f6d68913a424d8eb2a6fca84c454722be9305f08e2ff1bbb128088d`  
		Last Modified: Sat, 17 Oct 2026 00:19:20 GMT  
		Size: 5.1 MB (5138897 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11dbb1ed9bee6804724c341d06e43da3b2a8ffbc47cbf8fef67d278e19d42a94`  
		Last Modified: Sat, 17 Oct 2026 00:19:19 GMT  
		Size: 24.0 KB (23994 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:61e7d7192b677c1c0e2220b096a31205cff0e80a8b913626ecf6227e64f42134
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.6 MB (103586326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9e1f4aecffaee9aa4a2677b629aeb9e58b108306b70f7acb233d7dacd0faf75`
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
# Sat, 17 Oct 2026 00:13:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:13:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:13:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:13:47 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:13:47 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:13:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:13:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:13:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:13:52 GMT
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
	-	`sha256:3fbb4d9a5900b4516b671a63ae75320b2a334079890397d002984d5125c25545`  
		Last Modified: Sat, 17 Oct 2026 00:14:07 GMT  
		Size: 19.1 MB (19143862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b60dca13a588b9f2410f837f868eff3e830615a00929a467929502cbe4f4bf7`  
		Last Modified: Sat, 17 Oct 2026 00:14:07 GMT  
		Size: 45.1 MB (45102927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c3e6212fe00a847b0709396000dc268172fedcf3153e33ea45e259f0aac8e37`  
		Last Modified: Sat, 17 Oct 2026 00:14:06 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e84053457ea2ba8c20e3dbbe6d659e8061a4e21cff29e6a745a7bb7de529cfe`  
		Last Modified: Sat, 17 Oct 2026 00:14:06 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:aa6480778487273725c06b132847241ab89b7f3e54e222ae3cda51fd7d82af7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5164526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76db7e611791705867c0cf5442744d732bc7675336d228cca6bcebc19541edb4`

```dockerfile
```

-	Layers:
	-	`sha256:aa549cb8a9e113035a42a9d4d934c6d82217e7aa8b542d7cbaae04e7e66d858c`  
		Last Modified: Sat, 17 Oct 2026 00:14:06 GMT  
		Size: 5.1 MB (5140426 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16af367622fa5e7a257f94591cf14c3e8de4e7b081acd04b3a3aeea730cf32de`  
		Last Modified: Sat, 17 Oct 2026 00:14:06 GMT  
		Size: 24.1 KB (24100 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:705e3dfd5d950fc8a7e9e9ed9a86b465f55485eb274d0556d9c94c1dda526109
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108059361 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbdfc880311bcf7c9c8d04ed854c90000632ca9c78ce391ed6829c5b198aafdf`
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
# Sat, 17 Oct 2026 00:18:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:18:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:18:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:18:20 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:18:20 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:18:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:18:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:18:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:18:58 GMT
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
	-	`sha256:ec3f35541dec25765852980af1d1c4decece1d7a9c4cfb3769e61b58bb360bfe`  
		Last Modified: Sat, 17 Oct 2026 00:18:46 GMT  
		Size: 19.9 MB (19946199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b0d84fa8f837de6ab63884e5ba73513f7190db51393d11de9b821c29fdd0ac`  
		Last Modified: Sat, 17 Oct 2026 00:19:13 GMT  
		Size: 47.0 MB (47002343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f551f5c414a43105d48f2ee7fbab59e01c466c65cd336d583fd0b9eecd1c11d2`  
		Last Modified: Sat, 17 Oct 2026 00:19:12 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3da024eb9de795fb75034f98802e5a91596a9ea3fed11651ab6936002deb3e8b`  
		Last Modified: Sat, 17 Oct 2026 00:19:12 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:df9e1f2bd2098f28195608f6a02207f7409284962b907a92beddc18d72490f52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5162694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2edad981e007b1dd32ae5674c1e6dcbfb7ae2caa2dfddd5fb96794d2001f28b`

```dockerfile
```

-	Layers:
	-	`sha256:ae4e39f4b0d00ff52b6bd45564f2142ad0c3ea7dd1cb505d59e2ae2ae65c854d`  
		Last Modified: Sat, 17 Oct 2026 00:19:12 GMT  
		Size: 5.1 MB (5138566 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b17d68f3a0bf57b4a6202d900b88797aeae9419938410520084d250377baa709`  
		Last Modified: Sat, 17 Oct 2026 00:19:12 GMT  
		Size: 24.1 KB (24128 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:13feb6e15bb7416faabfaba524a1a60f5a4e41d34f55a3f8e4c0824232d639ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.1 MB (117106384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5599ea2a373a5a7152980416d6257f5b8b1d766b3e4378c13494ef0a38e6a955`
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
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:28:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:28:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:28:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:28:58 GMT
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
	-	`sha256:2e3250b922cce9a85a135e1547d5d871f41c81aa523329577aacc82fdf583609`  
		Last Modified: Sat, 17 Oct 2026 00:30:06 GMT  
		Size: 47.4 MB (47428375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33eef2ad599f52ff33d1acbd868f8e6649fae588fdf4796c4bd5bc759ed9ce0b`  
		Last Modified: Sat, 17 Oct 2026 00:30:05 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc168f6ea11f8b54a4d1929596d2ecc65a7a4b6d8406d68498565477afce798a`  
		Last Modified: Sat, 17 Oct 2026 00:30:04 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1558f3dc431be43a321e1a83313a8a9fdd6f43e68e2d0e2a32a4e41c8d3f7adc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5166197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:164addd518a29123838ff4d237a53710585f9f555519acc39f1701899a0a325b`

```dockerfile
```

-	Layers:
	-	`sha256:8cf3080169204c5606875f5cc722fd83c458a9219ec3595f111f83279862591a`  
		Last Modified: Sat, 17 Oct 2026 00:30:05 GMT  
		Size: 5.1 MB (5142155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:85b803eed8926f890a877230fd198336b3d9cecb883d1d0c92cc4644bd1ca765`  
		Last Modified: Sat, 17 Oct 2026 00:30:04 GMT  
		Size: 24.0 KB (24042 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:ff72a931de45f44e80af0cde9989f1f3d547cf08d050802281d6a34e26ae0272
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.1 MB (107070240 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4813c281c0bb2800dea81d813cf9b6855d7b40b17708bce08fcd379e7ed2ddb`
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
# Sat, 17 Oct 2026 00:11:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:11:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:11:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:11:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:11:49 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:13:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:13:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:13:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:13:55 GMT
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
	-	`sha256:a410ff377ec3126da7527d69b92c35574a9810e6a4397f417302b84380800f9c`  
		Last Modified: Sat, 17 Oct 2026 00:12:22 GMT  
		Size: 20.7 MB (20699788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f41cfd1d239b71cc853a004b7d4e0163314fcdb2ffd1e61759dc9f45d8af6f1`  
		Last Modified: Sat, 17 Oct 2026 00:14:17 GMT  
		Size: 44.5 MB (44514969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2271d64e6c5f0a76f9501098d7a8940d8914cf9910ca9141d9adf190473f900`  
		Last Modified: Sat, 17 Oct 2026 00:14:16 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:388eed049d6d7e27804ccf3cba0e1cff462dac7377f0e78b77ba5ff4a086d8e6`  
		Last Modified: Sat, 17 Oct 2026 00:14:16 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ae312543955bb925089b17d2f5a15af3d6d4a2bbbc5dabe7a3ecd34b395ef5b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5164299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7bf9f941fa89a34c13e3464192ac0137d6e754ce1fb23e544075aa59f8c0ddfd`

```dockerfile
```

-	Layers:
	-	`sha256:8b247cbf58afb14a5f33faed9b0ba014c2e4c425c538dca6a07cf936f1de3e67`  
		Last Modified: Sat, 17 Oct 2026 00:14:17 GMT  
		Size: 5.1 MB (5140305 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4dde2d73957383e5015c32c03b37c17844d6bc75636f72280b6fa955758fa0e2`  
		Last Modified: Sat, 17 Oct 2026 00:14:16 GMT  
		Size: 24.0 KB (23994 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre` - windows version 10.0.26100.33650; amd64

```console
$ docker pull eclipse-temurin@sha256:27a2d52d7966b8946898049e33361f33de70ff2cd9067114be813e896b971f4d
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2467644572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e66a12c212e5acabd73b8d4b47caf58983577b5a0eed33048e1071ae63543844`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Tue, 13 Oct 2026 00:57:35 GMT
RUN Install update 10.0.26100.33650
# Tue, 13 Oct 2026 23:02:08 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:09:07 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 23:09:20 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_windows_hotspot_17.0.20.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_windows_hotspot_17.0.20.1_1.msi ;     Write-Host ('Verifying sha256 (fd45e1710b0fe80c08a5141109cc0128e45cefe8c15c3639ce13c564df634031) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'fd45e1710b0fe80c08a5141109cc0128e45cefe8c15c3639ce13c564df634031') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:09:26 GMT
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
	-	`sha256:9a2317d823a91fcf937f114808befc3f958cbbbba1b703000ae67114115fd486`  
		Last Modified: Tue, 13 Oct 2026 23:02:57 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97586fc00de9a3716be8cfc2b97e259bc2d59f25f1469992cdb872cee1748bef`  
		Last Modified: Tue, 13 Oct 2026 23:09:29 GMT  
		Size: 1.3 KB (1290 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:8c6eaaa6e29e85b5aa422f586608fb2b9ee059573515e4b1c73705e2fec357b0`  
		Last Modified: Tue, 13 Oct 2026 23:09:35 GMT  
		Size: 75.3 MB (75294763 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:14defffe07949f2912f0a1a525ff19b96c1ead78a80c8a78bbd850b4ec0d5be7`  
		Last Modified: Tue, 13 Oct 2026 23:09:30 GMT  
		Size: 352.9 KB (352885 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre` - windows version 10.0.20348.5761; amd64

```console
$ docker pull eclipse-temurin@sha256:a18de59fd853d5c42b3274e042c982440d04f62ab663da90705fa563404154f8
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2301917343 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:516cb7dcc2f64c78bb151fb60d6cf2ea5222b94bfbc72c5a3172312b6b62aa6e`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Tue, 13 Oct 2026 04:45:55 GMT
RUN Install update 10.0.20348.5761
# Tue, 13 Oct 2026 22:56:39 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Tue, 13 Oct 2026 23:03:43 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Tue, 13 Oct 2026 23:03:56 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_windows_hotspot_17.0.20.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_windows_hotspot_17.0.20.1_1.msi ;     Write-Host ('Verifying sha256 (fd45e1710b0fe80c08a5141109cc0128e45cefe8c15c3639ce13c564df634031) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'fd45e1710b0fe80c08a5141109cc0128e45cefe8c15c3639ce13c564df634031') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Tue, 13 Oct 2026 23:04:01 GMT
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
	-	`sha256:49114afb8d8fef1465341b78ea2dac0ba91b8eb2de147071ebc69302a049f1ec`  
		Last Modified: Tue, 13 Oct 2026 23:04:05 GMT  
		Size: 1.3 KB (1320 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:eedfd018b10dd2234911b69f7b9e31f96b0ea36bd7bf891e9e72a188e2f417ae`  
		Last Modified: Tue, 13 Oct 2026 23:04:11 GMT  
		Size: 75.3 MB (75288219 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0748ed2df7060d89593003384824fb576544e9dbb94d661700cadafc04fecbd7`  
		Last Modified: Tue, 13 Oct 2026 23:04:05 GMT  
		Size: 341.0 KB (341034 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
