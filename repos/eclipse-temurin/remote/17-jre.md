## `eclipse-temurin:17-jre`

```console
$ docker pull eclipse-temurin@sha256:34d6aaf0fa4ef553c470234ec23c32c7d5c0f370c2bd4b0bf8a16838052d85f0
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
	-	windows version 10.0.26100.33438; amd64
	-	windows version 10.0.20348.5622; amd64

### `eclipse-temurin:17-jre` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:951ed92af8c8bfa688cea631a039202c76a4b6999b41d6c6dc7ee0b73b7b2171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **109.2 MB (109229997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d580b9971ca04dd59fb6b5a6608a57ade75e5b2a30851f5e46591b06e9acac60`
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
# Fri, 25 Sep 2026 22:37:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:15 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:15 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:37:15 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:37:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:37:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:18 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:18 GMT
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
	-	`sha256:a05b61593c836f37f2f6d9ed85a51c29ad9b19ee480bf17e722fb8216677c5b6`  
		Last Modified: Fri, 25 Sep 2026 22:37:34 GMT  
		Size: 20.1 MB (20133867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0741033dcc0e60c3bf88ab16fc8215e3b6cf86e58ac21e74ff9db2bbb719e9a4`  
		Last Modified: Fri, 25 Sep 2026 22:37:34 GMT  
		Size: 47.5 MB (47520119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2175a6a5351abaa129ce07d2082c5a5404c784b3bff907f745529f5418487e0`  
		Last Modified: Fri, 25 Sep 2026 22:37:33 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd1e6230d48af05b2752fb8065a5ec5a3c378f6989319a457aa1c2d2d12ccd0`  
		Last Modified: Fri, 25 Sep 2026 22:37:33 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f148f0aafb368245c82869888f0bc42a844f147ffba1dc17c8157cbd91649cbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5121384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81a0eee2eeb6eeedb3b0f5c3260c19287a81503614d854a186df8f79fe487040`

```dockerfile
```

-	Layers:
	-	`sha256:1f261d2ecf43c9529a356c073231f4905f12eb72b3d3bb3cb604a27c7dc8dbdf`  
		Last Modified: Fri, 25 Sep 2026 22:37:33 GMT  
		Size: 5.1 MB (5097391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5bbbbbf819696a1bd90a7204f5585a6e3a0538fe458a0cab1a7e11c83d9611f8`  
		Last Modified: Fri, 25 Sep 2026 22:37:32 GMT  
		Size: 24.0 KB (23993 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:b4d98ec6532e023a1b0c85298105d5ea151690deaefe5e617c97966436187ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103000827 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a741193be38d48bcb18e9f1620ecf1458d807ee8b35468db8e90141ebcbf9c14`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sat, 12 Sep 2026 10:30:19 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:rockcraft-base /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.9586.tar --tag 26.04
# Sat, 12 Sep 2026 10:30:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.entrypoint --clear=config.cmd
# Sat, 12 Sep 2026 10:30:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.cmd --config.cmd /bin/bash
# Sat, 12 Sep 2026 10:30:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --config.env PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 12 Sep 2026 10:30:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=config.labels --config.label org.opencontainers.image.version=26.04 --config.label org.opencontainers.image.title=ubuntu --config.label org.opencontainers.image.created=2026-09-12T10:30:20.858947+00:00 --config.label org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:30:20 GMT
RUN umoci config --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 --clear=manifest.annotations --manifest.annotation org.opencontainers.image.version=26.04 --manifest.annotation org.opencontainers.image.title=ubuntu --manifest.annotation org.opencontainers.image.created=2026-09-12T10:30:20.858947+00:00 --manifest.annotation org.opencontainers.image.description=The Ubuntu container image maintained by Canonical

Ubuntu is a Debian-based Linux operating system that runs from the desktop to the cloud, to all your internet connected things.
It is the world's most popular operating system across public clouds and OpenStack clouds.
It is the number one platform for containers; from Docker to Kubernetes to LXD, Ubuntu can run your containers at scale.
Fast, secure and simple, Ubuntu powers millions of PCs worldwide.

# Sat, 12 Sep 2026 10:30:20 GMT
RUN umoci raw add-layer --image /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/ubuntu:26.04 /home/buildd/rockcraft-ubuntu-64c38dcc01e7a4a6a4edc23c9f41a2cf/images/.temp_layer.control_data.9586.tar
# Fri, 25 Sep 2026 22:35:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:49 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:35:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:b0b8d0b321ee49446a308ecc47b4febe137f41ad612165208d259c61d16e14b2`  
		Last Modified: Sat, 12 Sep 2026 12:57:04 GMT  
		Size: 38.8 MB (38752117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7689f7e39a96cea2876adbe1566ea718e682a9fefaeef320ed0e1d0798b3128`  
		Last Modified: Sat, 12 Sep 2026 12:57:06 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55f25ca2dcc7af9b3a044ac7d49957a866d7cfc9ee465174dc95c255e246cac`  
		Last Modified: Fri, 25 Sep 2026 22:36:08 GMT  
		Size: 19.1 MB (19142784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a516d73ce0ce922a79a4900756188ce0b201a39798275d5e678bd57aada395a`  
		Last Modified: Fri, 25 Sep 2026 22:36:09 GMT  
		Size: 45.1 MB (45102915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511778a92916ccc8e3d0646ce9086c0f45e28875d01eec209e63789a6aefa376`  
		Last Modified: Fri, 25 Sep 2026 22:36:08 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a8c39fd789af7020db33112a56419ec50f5274c7c48aeff557319812d557c86`  
		Last Modified: Fri, 25 Sep 2026 22:36:07 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d96f5b3f4478462f4d85212756b0b394d5f81251e91ebe12911448f8445afa97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5123020 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52c867e2a7610ea167b0a6bb6fb0fbfd29a117740e82fa833b3b771b56711b7d`

```dockerfile
```

-	Layers:
	-	`sha256:270c5e57cd59e6a6484445266394693f549e8d3d834fe6944a6a074d4ab084e7`  
		Last Modified: Fri, 25 Sep 2026 22:36:08 GMT  
		Size: 5.1 MB (5098920 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64fdca51f681e626206375a9d114cf28b258c77126f909814253bcaa3a0ea77d`  
		Last Modified: Fri, 25 Sep 2026 22:36:07 GMT  
		Size: 24.1 KB (24100 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:23fd11463a18125e0f9f7ee733a850d8b76309dab291ad19a5779dfafcad8bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107706208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:77f7ce9a6996827233014b1a66296efb154fb4f844934d2c0b1ee56edd6374dd`
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
# Fri, 25 Sep 2026 22:36:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:25 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:25 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:36:25 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:27 GMT
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
	-	`sha256:0af29632bf1c2856d4774dea18db4f19602694c13b448708f2c7b0e2872353bb`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 19.9 MB (19944768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33890c9be6e0f787c4fed4eeb286ac3a779036da76d248b87f9434c90d48696d`  
		Last Modified: Fri, 25 Sep 2026 22:36:44 GMT  
		Size: 47.0 MB (47002346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fca08ff0ed2c3edeeb4892a8d7df2a659003073e77b721e3d54d31be91e9efc`  
		Last Modified: Fri, 25 Sep 2026 22:36:42 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b17166ec0918dbf088f2a057b61ef5026213189b1196de002dac16e71a7990d1`  
		Last Modified: Fri, 25 Sep 2026 22:36:40 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:506dc80b6a30977813a425fa12d471083f11b6f9ff3b78e89437c4159a812d8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5121188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42f175fc1e149f5af0fc3d4fc064af5826dcc5f6d77f2a65a39b4e1bb3bd4ef2`

```dockerfile
```

-	Layers:
	-	`sha256:638399feb64fa3d49c2e3d76792acbc445e25f288d6a0e1db6ec12db5e94ac8b`  
		Last Modified: Fri, 25 Sep 2026 22:36:43 GMT  
		Size: 5.1 MB (5097060 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88375544e062eb51e1586adea166c9216b576dd8431ddc3d1a2f8c512c7dd5c2`  
		Last Modified: Fri, 25 Sep 2026 22:36:42 GMT  
		Size: 24.1 KB (24128 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:b2dbdb380fbff8a5e40e84b00034cbd082736f1dd5ae30c7a0a8cee896bb2c3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **116.7 MB (116697745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1bd30bccde552768f989c6b6f7103f964fc4225c447feee9848aea6e3884c30`
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
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:50:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:50:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:50:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:50:33 GMT
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
	-	`sha256:09c6f7ac2420589f34d6674e6ae5b3728332e604a1e472d3e07608ac76840a67`  
		Last Modified: Fri, 25 Sep 2026 22:51:27 GMT  
		Size: 47.4 MB (47428300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934f115652c2e155fb0bab747f021b649ccf4a2770718e6e7b29b2302518cb0f`  
		Last Modified: Fri, 25 Sep 2026 22:51:25 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9051487c2aa235e21a05f011de1afdf2a157cdfaef34ef155575a31f06ee9d95`  
		Last Modified: Fri, 25 Sep 2026 22:51:25 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e0e159ec289670c079383468442d53639a294a35440c04bb570299df84517731
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5124691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:433b0a4cdc3472c2d34379666e3c4cd4921e295b4db89999c97028c006c47105`

```dockerfile
```

-	Layers:
	-	`sha256:4db727ae6befbdbab73435c2f17dd8e1ae1f17a11daed91704cad1ba9374f48e`  
		Last Modified: Fri, 25 Sep 2026 22:51:25 GMT  
		Size: 5.1 MB (5100649 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bad7b815ca5e8db1defb96194c1c22eb96b2ad9388937b313f5e01170096e951`  
		Last Modified: Fri, 25 Sep 2026 22:51:25 GMT  
		Size: 24.0 KB (24042 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:984b6fec370475816e274b980c1fb12d82051612960605b358a5bbf07c27c144
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.4 MB (106371545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02906784ea69f3ea6fc944c37985651ff0934dc2ec8d0976d47c1f323b34bea`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 25 Sep 2026 22:33:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:33:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:33:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:33:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:33:24 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
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
	-	`sha256:b4bbc3ffc0f5bed226496a1ae165575f4e2d6d8afe50b5e274a16721ce8d382a`  
		Last Modified: Fri, 25 Sep 2026 22:33:55 GMT  
		Size: 20.7 MB (20691294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9b4c9b3669935fc20aa4289dd3042f2dad0089481f00da262c4d3f73c7962e7`  
		Last Modified: Fri, 25 Sep 2026 22:36:35 GMT  
		Size: 44.5 MB (44514994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817b9a49cec6e1c940afde2f9489141e943683fcb94e55030f44db3a4b3619a4`  
		Last Modified: Fri, 25 Sep 2026 22:36:34 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d616a1e26195f6af476907bc39496395c38c03671888eb6f1b68c4110d22b1c`  
		Last Modified: Fri, 25 Sep 2026 22:36:34 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jre` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:71209b92f56e11802792b567e09941d2e5d7afaefe53b1d2f96e6f407e362d51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5122793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4474a87577b3fe344182b6a2e3105191bb217c65d97348d59906b1cce7468340`

```dockerfile
```

-	Layers:
	-	`sha256:efdcaf88467ca0a2ba5ba50b9f3d65818f17381925377ef28499ce7c7b1b04ed`  
		Last Modified: Fri, 25 Sep 2026 22:36:34 GMT  
		Size: 5.1 MB (5098799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07a9cb983fc49c4841dfedb7055b8c331118c6ec224c3e86bfe4f604fca38e5f`  
		Last Modified: Fri, 25 Sep 2026 22:36:34 GMT  
		Size: 24.0 KB (23994 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jre` - windows version 10.0.26100.33438; amd64

```console
$ docker pull eclipse-temurin@sha256:251c0611b3ad4194ef0761e6631ee8699f03eda585b3282ce12083db750138a9
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.5 GB (2533344818 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8e0ec59958c67a6da97591ed24f856823cc2cba50fbee7f7733ea6a9989d54`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Sun, 11 Jan 2026 09:57:36 GMT
RUN Apply image 10.0.26100.32230
# Sat, 05 Sep 2026 17:41:23 GMT
RUN Install update 10.0.26100.33438
# Fri, 25 Sep 2026 22:36:31 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:36:32 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:37:08 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_windows_hotspot_17.0.20.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_windows_hotspot_17.0.20.1_1.msi ;     Write-Host ('Verifying sha256 (fd45e1710b0fe80c08a5141109cc0128e45cefe8c15c3639ce13c564df634031) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'fd45e1710b0fe80c08a5141109cc0128e45cefe8c15c3639ce13c564df634031') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:37:15 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:9879415206733e7ec192c12ce6f9457b9e96e3e5b730f802826b173ed12b5f1f`  
		Last Modified: Fri, 25 Sep 2026 22:37:19 GMT  
		Size: 1.3 KB (1304 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:16023be7392c35981854491c59806b66b30fb04b455f5cdf7290c30324a54db2`  
		Last Modified: Fri, 25 Sep 2026 22:37:19 GMT  
		Size: 1.3 KB (1261 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d4126eb7e546382f13f3b6727a198eb2cf19de9480e75e53c547d357bd47f77`  
		Last Modified: Fri, 25 Sep 2026 22:37:26 GMT  
		Size: 75.3 MB (75328663 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cd4bf8a433d01b74d224a0b979ae97c64e747be8ccd25b7522015b5ca250e3c2`  
		Last Modified: Fri, 25 Sep 2026 22:37:19 GMT  
		Size: 383.9 KB (383938 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eclipse-temurin:17-jre` - windows version 10.0.20348.5622; amd64

```console
$ docker pull eclipse-temurin@sha256:1cd53303167ec511a1aaf62e299ba077308b6a37447567b47f1f003982cedc67
```

-	Docker Version: 23.0.6
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 GB (2295144126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8b586479b65d486d1e54c3091dbdd09db462bd2df4c86395802615c5442e2f7`
-	Default Command: `["c:\\windows\\system32\\cmd.exe"]`
-	`SHELL`: `["powershell","-Command","$ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';"]`

```dockerfile
# Thu, 09 Oct 2025 07:51:18 GMT
RUN Apply image 10.0.20348.4294
# Sat, 05 Sep 2026 23:48:54 GMT
RUN Install update 10.0.20348.5622
# Fri, 25 Sep 2026 22:36:13 GMT
SHELL [powershell -Command $ErrorActionPreference = 'Stop'; $ProgressPreference = 'SilentlyContinue';]
# Fri, 25 Sep 2026 22:46:53 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:47:21 GMT
RUN Write-Host ('Downloading https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_windows_hotspot_17.0.20.1_1.msi ...');     curl.exe -LfsSo openjdk.msi https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_windows_hotspot_17.0.20.1_1.msi ;     Write-Host ('Verifying sha256 (fd45e1710b0fe80c08a5141109cc0128e45cefe8c15c3639ce13c564df634031) ...');     if ((Get-FileHash openjdk.msi -Algorithm sha256).Hash -ne 'fd45e1710b0fe80c08a5141109cc0128e45cefe8c15c3639ce13c564df634031') {         Write-Host 'FAILED!';         exit 1;     };         New-Item -ItemType Directory -Path C:\temp | Out-Null;         Write-Host 'Installing using MSI ...';     $proc = Start-Process -FilePath "msiexec.exe" -ArgumentList '/i', 'openjdk.msi', '/L*V', 'C:\temp\OpenJDK.log',     '/quiet', 'ADDLOCAL=FeatureEnvironment,FeatureJarFileRunWith,FeatureJavaHome', 'INSTALLDIR=C:\openjdk-17' -Wait -Passthru;     $proc.WaitForExit() ;     if ($proc.ExitCode -ne 0) {         Write-Host 'FAILED installing MSI!' ;         exit 1;     };         Remove-Item -Path C:\temp -Recurse | Out-Null;     Write-Host 'Removing openjdk.msi ...';     Remove-Item openjdk.msi -Force
# Fri, 25 Sep 2026 22:47:26 GMT
RUN Write-Host 'Verifying install ...';     Write-Host 'java --version'; java --version;         Write-Host 'Complete.'
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
	-	`sha256:94a0bcf66e56280812f18013581fc16b8fe66b1f9063daeaf018b0c238f801fd`  
		Last Modified: Fri, 25 Sep 2026 22:47:31 GMT  
		Size: 1.3 KB (1316 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:59fcebcf292ad42a857f4fbf6d76e62fb583fb256ae9c994abf5fd359a08be8a`  
		Last Modified: Fri, 25 Sep 2026 22:47:36 GMT  
		Size: 75.3 MB (75297238 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:38b947d6774e4b0affce048ff38b5bd057baccd2e344518c3132c998b959c904`  
		Last Modified: Fri, 25 Sep 2026 22:47:31 GMT  
		Size: 355.5 KB (355543 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
