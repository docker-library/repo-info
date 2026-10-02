## `eclipse-temurin:17-jammy`

```console
$ docker pull eclipse-temurin@sha256:43f4431cc895d37ceb115e2e1f160545ec45caee9c1cb4246fc6bb879d58aeda
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

### `eclipse-temurin:17-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:8d242405506ad1085e39f1ca80ec76f0812f61073efe76129607e39f043ccbb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.3 MB (196251040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2a5b9c58fedbd66afc3b58fc99d7526673b6f45fbb1b25f2cda00933a293af3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:38 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:46 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:46 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b82abea1220a2e67704e54416e0b991cd8add4581e3308e73eef07428e841f`  
		Last Modified: Fri, 02 Oct 2026 01:19:03 GMT  
		Size: 20.7 MB (20663555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e23f9a38ba3d7293ea533a1154d9c4aee694d1be3dfdef80f4069df42d9d4`  
		Last Modified: Fri, 02 Oct 2026 01:19:06 GMT  
		Size: 145.8 MB (145833235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e581fea7614d1f7800cd17c7dfe8bbc97613ec44b7cbf3feb48ac86752a67d86`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305535c4d823aa4fb3965c59d8bc8edab7189095c0ea968efa08b94ca5008ef1`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b0b211ddddf4300b1125368d86f85c64e6c99322e6dd2827d1bf36f6caa181d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4135109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c5256264e02a251f95ea7894d1f4f3705de5014428d10625ca91f0ab70030b2`

```dockerfile
```

-	Layers:
	-	`sha256:3f9d264f5d7acec841a6b037f72da315aa861f0fe401d4d0b89a3a4f10a43cc4`  
		Last Modified: Fri, 02 Oct 2026 01:19:03 GMT  
		Size: 4.1 MB (4111165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3d639326f4193d74e33c863039e674a53602bae59b1702e707a3643f10ced43`  
		Last Modified: Fri, 02 Oct 2026 01:19:02 GMT  
		Size: 23.9 KB (23944 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jammy` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:2436f66ca5059ed1c78641460a93dab2b15335737ed910b1a2980a61af0a4c49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.0 MB (190957794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d64bcc417697a634bea3f4c3c3dedb24009d1e459fff49e14015f178f74c4fa2`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:23 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:23 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:27 GMT
ADD file:f85ca4890cd4193429589692b507cff4da19fadfcd09f8f3b76059208fa9627e in / 
# Thu, 24 Sep 2026 22:24:27 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:11:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:11:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:11:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:11:59 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:11:59 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:12:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:12:14 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:12:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:12:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:12:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:63273367a03196c0df650ce441c9e9c9f2a05ed2241c911b17566eca78d2477d`  
		Last Modified: Thu, 24 Sep 2026 23:36:18 GMT  
		Size: 26.9 MB (26855856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3e84712d8e0289cb56f26c047b9b564ca6ff46471720cfed063503f2ad287c7`  
		Last Modified: Fri, 02 Oct 2026 01:12:31 GMT  
		Size: 21.0 MB (20955759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2b3fca89e7faf75dc90793e4274d59a5f3d4b500c8301b32c31fd935163156b`  
		Last Modified: Fri, 02 Oct 2026 01:12:34 GMT  
		Size: 143.1 MB (143143554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963ba00c8e5d2476c22f1af7981e4c2dd1d2bad7a58cdb478845808931e98523`  
		Last Modified: Fri, 02 Oct 2026 01:12:30 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e1e8bfa2f0c7785d7d997967da8decad095323c8664630a7eba509df276395`  
		Last Modified: Fri, 02 Oct 2026 01:12:30 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:bb3ce3cec994d4b8923a68fe51bfcbfe100544f8225fa6a7ecbd4d1f75e87718
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4054466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f1f3e1fc4f99587772f5a7971823b86416d265ab6accc4bb3cb5a4a4a53eb0`

```dockerfile
```

-	Layers:
	-	`sha256:dc2b5643a203fc64b519eb15c5d79050598bb8a734e801469f708fb25deeed3a`  
		Last Modified: Fri, 02 Oct 2026 01:12:30 GMT  
		Size: 4.0 MB (4030424 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d45ea1250cfb465e7d68dfa09635c4ace974f1e6d17d376d748c607aeea159e`  
		Last Modified: Fri, 02 Oct 2026 01:12:30 GMT  
		Size: 24.0 KB (24042 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:dfcfafa8207eb07cefd1e67e831d763cf2a5c8994ff64594c6dd95809fa52263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194427864 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b47e391a25ce0ae941364216e273c7171bcb401c579c873bf18f7d4109fa4940`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:31 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:18:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5d715a0f93f705e98bdcad40d335d348c77f7c2a00f12be9c8a71567d5ef5b`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 22.1 MB (22084493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7bb81cfba469c863dda0ad37169f4cac67610cb425c453a7c902a5cca1a173`  
		Last Modified: Fri, 02 Oct 2026 01:18:59 GMT  
		Size: 144.7 MB (144656610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5513c0a8ac4c4c8c75b3d76aeca0b4b3e79dd05409312400bb8bf7e1621afdb3`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307a1ac57ddb20b86aa8a2e97c3ec86d299d0ad5224edc95ea43e3f0a48df9a2`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:679da5512be0f2b51fc0348f0adf7392658105700bab340c347d5adf4aef634c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4230700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:921a1de207b3b2944f8b643301f5f35d0a8b8ebc3c893693685e74dd7345354c`

```dockerfile
```

-	Layers:
	-	`sha256:7e396b52e8119f9b2c916b6ae4555a8ddaa3b5b6e16585fa93d37c892834977c`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 4.2 MB (4206635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6da5fdaa88b0cb18f318c9a781b83e666fd5c112002253dcf9856acc9607f12`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 24.1 KB (24065 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:ae86c217ef89b10bb01e41cc705dfe3a68cd008546ab034b31bbc5c182814217
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **202.9 MB (202939812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a81d90056251883ac4c821b36caffaefd5985249c6f7eaa12d750976c86550a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:59 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:59 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:25:02 GMT
ADD file:045fd400d3feed52639c1d69b89f522795380adacf8a6025e5d8b200e9a878dc in / 
# Thu, 24 Sep 2026 22:25:03 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:44:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:44:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:44:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:44:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:44:19 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 03:44:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:44:40 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:44:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:44:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 03:44:43 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44adfa8ca464e09231d3ade111f9d3bfb5ca442eb510c55a8d725492f711ef9c`  
		Last Modified: Fri, 02 Oct 2026 03:45:25 GMT  
		Size: 22.6 MB (22551114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8727d29a934ee3613b51eec70bcdde250423b8340eeb5295bcadab687e7e4f0`  
		Last Modified: Fri, 02 Oct 2026 03:45:28 GMT  
		Size: 145.7 MB (145682866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4f3fb1464e39c9a86605a50dba3aea96b52cbc752a7138b44dd41f905fb3fac`  
		Last Modified: Fri, 02 Oct 2026 03:45:24 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82736c79e7701a2652d8a6041483ad0c8b5e2ddc609dc16254ba72eb5545264f`  
		Last Modified: Fri, 02 Oct 2026 03:45:24 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5508cd83a3c82fa9104e81fadd5a84d61f26409503318a0df5eb0a5cfdeb6f06
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.2 MB (4162701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830472066181ccafddda6ec50e897cf994b08e8f148aa5c3425c2c88ab9aebc5`

```dockerfile
```

-	Layers:
	-	`sha256:ee867127bdb5eb9d6a00092fabe836e86f026405472f88e0bf92f4610fa577d3`  
		Last Modified: Fri, 02 Oct 2026 03:45:24 GMT  
		Size: 4.1 MB (4138715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ea2909ef6cd9b507634e9b891b554c83c4c10b8ef24622e3fd047edbb7664ce9`  
		Last Modified: Fri, 02 Oct 2026 03:45:24 GMT  
		Size: 24.0 KB (23986 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:17-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:dd7b67ab13d1f9bb3099a9e5a089b6178559b7aaa82c40a3d5a34e1d00e24bde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.5 MB (184491119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eda0dc80c3ca670bf520d953d5a0c65fca67888d1592d9efd8f96c1e87712d1f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:21:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:21:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:21:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:21:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:21:28 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:21:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='3808d1d15e3ec6bd5b84057fb5d84c33d8a1536a258146bcea2e603fc726e08e';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='457b57af8f9c93ec39080bb8c764f559dc8c89a6da1a39d718a400b7890d3e41';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='e66816375d9ff7e18e622b370f0b523dd45a91ab4c6dcd17d6c8708e17ab80e9';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='7e3abe98a131e1e914d0cf50f3435f92c1723e4583377edb5cf8e63c8d125ca8';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='f3710814283eea156d1397dc399957789d022b899a791f18bc6805b55b82207f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jdk_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:21:44 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:21:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:21:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 01:21:45 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a1075a38490e2282699266e7b131661e3244d7eea12469eae8f64b872a7ba9`  
		Last Modified: Fri, 02 Oct 2026 01:22:44 GMT  
		Size: 20.4 MB (20385154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3653989b67ebdc26455d5508afe71fea7b611adf1ff71e2702584b2f4780041`  
		Last Modified: Fri, 02 Oct 2026 01:22:48 GMT  
		Size: 135.9 MB (135881272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5bd4d687dc463d0cfe5823b84ed2001f6caa3366ecbeb7b6085ad2be50278a`  
		Last Modified: Fri, 02 Oct 2026 01:22:41 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dd03bcbe0e24b473e904ae87c9cf3d36a63fb636cbd6fc3a116949296d7d892`  
		Last Modified: Fri, 02 Oct 2026 01:22:42 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:17-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ad10a9dea910140ae394b02f25240c87db9d20c554b681b2d6fd1517e3e097be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4060105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3c25f44cd748ef7ba69f37af50599754bbab4af881b175ef83c4f1f74ec9471`

```dockerfile
```

-	Layers:
	-	`sha256:b31da1bf42dfe0ae402dea9bc41333d1a4334d79dc1ddf4f38dd45beac39b02d`  
		Last Modified: Fri, 02 Oct 2026 01:22:43 GMT  
		Size: 4.0 MB (4036161 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37e9175ecfc9e7063c143bac28d4b57e79620276d2d73d368a9e041f0735c587`  
		Last Modified: Fri, 02 Oct 2026 01:22:42 GMT  
		Size: 23.9 KB (23944 bytes)  
		MIME: application/vnd.in-toto+json
