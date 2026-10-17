## `eclipse-temurin:8u504-b01-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:ba4338edfcaa9eb1df572afca9134710f0e033a1b3c836eca976cdc2f5e38f12
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

### `eclipse-temurin:8u504-b01-jre-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:2ce6a91adf8f263b3d9a4d56f19c435ca4f9d64c8979ddfeb80e8e3a680bf287
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **89.1 MB (89071299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:941afd01f1404c78e41056a6432fcdb700d4c37e44072fc5be06ca33f600dd6b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:17:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:17:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:17:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:17:51 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:17:51 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:17:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:17:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:17:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:17:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6200470effe6f148489ff3b3db0a76d878c6c3ae9d9b73f5edcb6ec8220a5b65`  
		Last Modified: Sat, 17 Oct 2026 00:18:05 GMT  
		Size: 17.0 MB (16967862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bc3496e043908e50974f8e43c7e07486ba2b49df1e08206d2f499fc3e6ca61`  
		Last Modified: Sat, 17 Oct 2026 00:18:06 GMT  
		Size: 42.3 MB (42335083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bb5e608a20199447404cf5ce4043740f0f942d15c2cba9505878aa618ea71f`  
		Last Modified: Sat, 17 Oct 2026 00:18:04 GMT  
		Size: 131.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3da36879a55271f78f2fc8ab14e165e7d8019d93a5ae9edfddf6c990f78ab34`  
		Last Modified: Sat, 17 Oct 2026 00:18:05 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1719c6766ba2da6d3ee467a858fdd16dddda0a93a23a0c363a69f5845dbc0a3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3321227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6699f7ece48ab57990a19774676204b10130533c40a836bd40e0add4e2bb30d`

```dockerfile
```

-	Layers:
	-	`sha256:3b5217603c50f8fc00297f219579a6cbd45f9fc6ac1265fe30bd413ab37b9a93`  
		Last Modified: Sat, 17 Oct 2026 00:18:05 GMT  
		Size: 3.3 MB (3299311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec635de4956fc5cf1a8073f59f62cef458b9cf805c2a0ccb20f2e23a6d565726`  
		Last Modified: Sat, 17 Oct 2026 00:18:04 GMT  
		Size: 21.9 KB (21916 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-noble` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:5ad3406679bf5b112b0c9a3d13b8ca5458dfb600cc6ae30b738c49a18f90b478
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (82958846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d252a36f47f42652a28308046373a2b3a2862c4a115ac606a4f22d9e831101`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:21 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:21 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:24 GMT
ADD file:23a54ed1daab980a150295ab5c21e769c0a6ede1385ebb69249df9e6461c3a52 in / 
# Fri, 02 Oct 2026 08:03:24 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:12:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:12:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:12:58 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:13:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:13:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:13:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:13:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cfda03319c73b24fb02c0806fdf981abb07b3d5025d2e7c9710f93347cee3d4d`  
		Last Modified: Fri, 02 Oct 2026 08:36:29 GMT  
		Size: 26.9 MB (26896728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49792da860e268e275859c27d2b474dacd6de61250990aa564f36a6f18d14ea7`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 16.3 MB (16285825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11597b21913befa67b8198ea6358596ca4c1cf3d06f01f059cb25dd9584b3a49`  
		Last Modified: Sat, 17 Oct 2026 00:13:18 GMT  
		Size: 39.8 MB (39773703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ae6a643d035a637b3227f42190e5d8773814d006b85752e82718e7e7cb29f90`  
		Last Modified: Sat, 17 Oct 2026 00:13:16 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ae71609d87d116d4ae330a1a137c5bc7d09b55412f62f8b9593163ecb8b5f9`  
		Last Modified: Sat, 17 Oct 2026 00:13:11 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:52aecfa0c3cf0192c82d21a433fbdf7096202735bef4d8bf62bf36bae6810e4a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3327305 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b213e6f2c9bb3dda2a70aa6023bdb0e86e677f375d852f244639b683375d44f`

```dockerfile
```

-	Layers:
	-	`sha256:a53dd116dbe8c5a70a471f322247072812ca6f9f4d7cee44708b40b50ae726b1`  
		Last Modified: Sat, 17 Oct 2026 00:13:17 GMT  
		Size: 3.3 MB (3305299 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5306a4107b01cfca4b353bc23baa4f68aa0709cc75a72279a03e6ec9961a5ed`  
		Last Modified: Sat, 17 Oct 2026 00:13:16 GMT  
		Size: 22.0 KB (22006 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:2cb3701ef2f6720f315dacd1f4385d2faeaac2186943e6de0bbeb1fa36fca805
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **87.2 MB (87216054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ebf825e0dca5ab3061f4b010bad4981a37cf979c5de19341f23bce2402b4d87`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:18:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:18:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:18:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:18:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:18:07 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:18:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:18:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:18:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:18:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97c97c5034ba111ecee8ed587a335645c7e55dc86faaba224027b30452c5741`  
		Last Modified: Sat, 17 Oct 2026 00:18:20 GMT  
		Size: 17.0 MB (16977492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a10f91fc898f54c05e5fdbadf167f758449d08845d835d41cbac3420f595e5`  
		Last Modified: Sat, 17 Oct 2026 00:18:21 GMT  
		Size: 41.3 MB (41296209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd007c1276762df7f8130bf91a250d8e01f768dacba0c470be09c363e914cec`  
		Last Modified: Sat, 17 Oct 2026 00:18:20 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b881de17a9fed9b0353de3a7c964fd7bcd0e70453eb5d92810a33ebcfd0cf9`  
		Last Modified: Sat, 17 Oct 2026 00:18:20 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9b04191338e307a168f5a2e08d12b0437e595d8c5339c77ff7eca07658ee19bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3322477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65bd6966e7ceb40b4064402ac032cef47c6d62b5b3839efa96a007d53bb4fd32`

```dockerfile
```

-	Layers:
	-	`sha256:fc26db5826101cb208c9c06ade4c346957a1caf5432af823343623734d8ae07c`  
		Last Modified: Sat, 17 Oct 2026 00:18:20 GMT  
		Size: 3.3 MB (3300450 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4354d62e3faaf99297cc6cdb9610194b6aaca19024af165e097685d3b3b3f1cb`  
		Last Modified: Sat, 17 Oct 2026 00:18:19 GMT  
		Size: 22.0 KB (22027 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:b153b101e67810d9ddbad1240d093904fb9ade9b0c8f92acd8d60590897e2add
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.9 MB (94909569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e039e77bcd2b729e900a3a9d29630698845c9fb25391c3afa66e597e12b37d6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:18:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:18:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:18:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:18:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:18:01 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:20:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:20:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:20:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:20:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59db6a9d1a3ed60eb660e98a86b2cf1acd7c3a89fce5eae4653554ef133113fc`  
		Last Modified: Sat, 17 Oct 2026 00:18:57 GMT  
		Size: 18.8 MB (18785839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06e81a341138d45098be7b6a18c22e4b0f0d3f545b2327940a4df54e1674a03`  
		Last Modified: Sat, 17 Oct 2026 00:21:20 GMT  
		Size: 41.7 MB (41743147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e32bca1e5556b28d0508870303b01f40e26e274cafddc68e9da3a973b697689a`  
		Last Modified: Sat, 17 Oct 2026 00:21:18 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc5da47758b6cb18d9984f16929aaca2681d1284b28a1326a729671d015dad7`  
		Last Modified: Sat, 17 Oct 2026 00:21:18 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f9ae6554c7a317d0a95f12d6bad77cab6a0556ac0cfab9023515fcd7abc4cde7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3326012 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b36f9eca9bbf2e41b2bead41bcf29a16c79fda76097dd60ccf35b219e0b3886`

```dockerfile
```

-	Layers:
	-	`sha256:ed7958ef0e31cc6a74574a75b304eb9475c8791aa45f9ebae38a5977ea468d98`  
		Last Modified: Sat, 17 Oct 2026 00:21:18 GMT  
		Size: 3.3 MB (3304059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:849cc8656d65b53b31cf3550f016626ce3bf7c0bb0d631bdb1e30f839d7ba129`  
		Last Modified: Sat, 17 Oct 2026 00:21:18 GMT  
		Size: 22.0 KB (21953 bytes)  
		MIME: application/vnd.in-toto+json
