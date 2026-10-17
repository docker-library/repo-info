## `eclipse-temurin:8u504-b01-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:49b31e882495abeb1118de417ee696bdc929d2de238730920f1468025fc393a4
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

### `eclipse-temurin:8u504-b01-jre-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:ea53529f5ae9eef89f03cfff16d8b7f4d5530ec92603ba703b23484606c77d1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88208019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd299526569e31f1bd4d7ada88242fb6de2078fe73afaf853d15ab72b24927cf`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:17:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:17:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:17:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:17:53 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:17:53 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:17:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:17:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:17:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:17:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddf0528d1b27172ee72854c539f400a0b860fd145a132a760714f2aa2ec4d1f6`  
		Last Modified: Sat, 17 Oct 2026 00:18:06 GMT  
		Size: 16.1 MB (16117957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61851e954795b2008a823f2d7ba1b41ce63a8ba085975b17658b5f2510e2cccc`  
		Last Modified: Sat, 17 Oct 2026 00:18:07 GMT  
		Size: 42.3 MB (42334993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d4bbf31583649feb9cef2400e5cfead877a8842b4addd4759eb575914953287`  
		Last Modified: Sat, 17 Oct 2026 00:18:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801b3d30eb9b52ec062bb054a99ea2f3f2f029698f464131cbfee457db71aaee`  
		Last Modified: Sat, 17 Oct 2026 00:18:06 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:0b8cf44f8d0008aff2f436acebc0f908104a6bf18f7a3c4525b2d0946a0ff68b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3915839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e5b2b5dc75b487bad8de3d2b825ebe194815940ad8b7dc42b07c9aabbc50f0`

```dockerfile
```

-	Layers:
	-	`sha256:7ce4729777f016c6b01c4b0b0623b97ab7f3e4f54f9c59415ab0e57d11d5412c`  
		Last Modified: Sat, 17 Oct 2026 00:18:06 GMT  
		Size: 3.9 MB (3893922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3ce9cf138dc0163feaa1fc642b030f9f572c93c13dcfae92856f75839c95471`  
		Last Modified: Sat, 17 Oct 2026 00:18:05 GMT  
		Size: 21.9 KB (21917 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-jammy` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:278dc5e7d0fc1898dba8a2ff164c05c589924dbe1dc5af3a0c07a459b66db154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82496068 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be25c1de55170f268187737592041bf0d8fa84e68c04e9f8393e23fa861fce19`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:21 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:21 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:24 GMT
ADD file:50a860bb86a61a938205aa42540aa15297b2f6be7f485db52a6f525e3208ef3f in / 
# Fri, 02 Oct 2026 10:27:24 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:12:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:12:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:51 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:12:51 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:13:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:13:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9787843ba490cff9717a8f5c2f4e7feb6766cda214d74e674690b1d2f5c17e79`  
		Last Modified: Fri, 02 Oct 2026 11:08:39 GMT  
		Size: 26.9 MB (26856530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5e138f698cb85e340107da781ee9f3bfc60369009c608f04c1436ebdefa2d8e`  
		Last Modified: Sat, 17 Oct 2026 00:13:12 GMT  
		Size: 15.9 MB (15855468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e5dcf6d6ed33a23ead87598d90fd11a8293faae441bea5bb1a072d4c9bbcef5`  
		Last Modified: Sat, 17 Oct 2026 00:13:13 GMT  
		Size: 39.8 MB (39781480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4af3b3d7ab669bacd7ea9df166a478a458325e110f65805f7d7904eec0fcb782`  
		Last Modified: Sat, 17 Oct 2026 00:13:11 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ae71609d87d116d4ae330a1a137c5bc7d09b55412f62f8b9593163ecb8b5f9`  
		Last Modified: Sat, 17 Oct 2026 00:13:11 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a7bc4cdc7f31c5edc723cd0a7c7d611857ed49415957932454e2c53b91670646
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3921936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d311c595593939dd69e5c53b89b9017cecc524d1729133d100e5cf2434278fa5`

```dockerfile
```

-	Layers:
	-	`sha256:82ecad8b2dac30d467baeb4f9f87475cceb2c4c91e1b11715997633521013371`  
		Last Modified: Sat, 17 Oct 2026 00:13:12 GMT  
		Size: 3.9 MB (3899929 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b1226cfb35bf15b65a2e28f9aaecf320313c40529ac516e5c3edfabda7bfb9d5`  
		Last Modified: Sat, 17 Oct 2026 00:13:11 GMT  
		Size: 22.0 KB (22007 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:9542f77f5bb23251e1c21fe49b9120d306f04369969632149ba4d39b0e76e3f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85038153 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fd2bd6c90fdb6eeb9dc78776ecb44a681a54a5881964768892a8004f419e270`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:17:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:17:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:17:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:17:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:17:29 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:17:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:17:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:17:55 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:17:55 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807776a0e8f9ef6eb150a24deab6c1fe84ffa73c7030269c50769055b61c8894`  
		Last Modified: Sat, 17 Oct 2026 00:17:46 GMT  
		Size: 16.1 MB (16054933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1810349c0dd0cc47e4310fede4b6e744c2fbd3413820bb6c427b6f6a97e143d6`  
		Last Modified: Sat, 17 Oct 2026 00:18:07 GMT  
		Size: 41.3 MB (41295904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d4bbf31583649feb9cef2400e5cfead877a8842b4addd4759eb575914953287`  
		Last Modified: Sat, 17 Oct 2026 00:18:05 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96536ebd1523e41a8eb4db92cf7ef5f39f7cf03c8b0d45aaf41f51d3b3c76ce5`  
		Last Modified: Sat, 17 Oct 2026 00:18:06 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:94d70ca90549427d409fa622f3605ffb89d9024b85b760a32ede2351388c1747
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3916296 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f354549681bdbf2acf67e9977371f495eb002d64b7a7553f6de46be6a6bb9e28`

```dockerfile
```

-	Layers:
	-	`sha256:7e153f6cf2e0ac8ef240f8ccfba86a1a23b0b07a92c7fcfb302a0920c9120dc4`  
		Last Modified: Sat, 17 Oct 2026 00:18:06 GMT  
		Size: 3.9 MB (3894270 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03d7eb4d8340b4be1410b0c944ad9874eb45ed26896ffe2fe3e47123268152d7`  
		Last Modified: Sat, 17 Oct 2026 00:18:05 GMT  
		Size: 22.0 KB (22026 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:6f0f609b430a36a131e9db87532cc9e2f03ea32e1f188041364475a4309c2e00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94046263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3105b266d293ac515ec99e69a8950fdadc487cd95fe11d11d6b75584af3644ca`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:20:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:20:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:20:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:20:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:20:03 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:21:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:21:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:21:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:21:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e3558c4f6c1091f241bd9ad640816cc4633252705f4d740aff7b96ec07bfab`  
		Last Modified: Sat, 17 Oct 2026 00:20:54 GMT  
		Size: 17.6 MB (17596929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e196c69deaeb5d5412914d10ed14e3d46454de578086d20fd8e1cfec681e051`  
		Last Modified: Sat, 17 Oct 2026 00:21:42 GMT  
		Size: 41.7 MB (41743104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b23bc4c292b7a1828e1bc0ff33d6c34cdef9cfb5deeeac457b190eaa2e6ead0`  
		Last Modified: Sat, 17 Oct 2026 00:21:41 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:379e9fee3ea23fcd3fad4de7ef02876b6a5e78c43478d098b4754d7ecc491b0a`  
		Last Modified: Sat, 17 Oct 2026 00:21:41 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:3da46d151a4f3288c5fd0d6defe18be9f229d7d6b04fc21d1175bb2ed1c936de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3920640 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b9c5cc7d51af058ccab947a711516ecc92788b7e84e357619bd47c664c3fe92`

```dockerfile
```

-	Layers:
	-	`sha256:811a29b52bcd973f4ac845c3418f37b3d3f42fd74d84e94850396ea4be577a9a`  
		Last Modified: Sat, 17 Oct 2026 00:21:41 GMT  
		Size: 3.9 MB (3898687 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5964b7bda37a8dfb2826874281f462f92a9e89e8b8d64e60c9fb5f83cec9e11`  
		Last Modified: Sat, 17 Oct 2026 00:21:41 GMT  
		Size: 22.0 KB (21953 bytes)  
		MIME: application/vnd.in-toto+json
