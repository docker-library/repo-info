## `eclipse-temurin:8u504-b01-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:e33f20ab7715fea0684a865273469e234e380d9859c71c26ab1159454afe45c4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jre-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:9824f0c436f515efb07931f181e09d782996de9ba1e32ba2e65f15c54fa925b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88201934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d63b95d7ba9d84567b8aec7b0c8f095fbe6ca4f5af554e17f2d644dc3afb37c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:35:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:35 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:35 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c80e982bbd467b78dfa937002d6a99d54528419a8b015eb22b248f270bc2b78`  
		Last Modified: Fri, 25 Sep 2026 22:35:46 GMT  
		Size: 16.1 MB (16114091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f835008440d762420384173460903261479f14d6fa29a1550b849c725b49848`  
		Last Modified: Fri, 25 Sep 2026 22:35:47 GMT  
		Size: 42.3 MB (42335001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0943915f3ce98dd73330926848cc29539f66e46ce8f78956925b93e3948c017a`  
		Last Modified: Fri, 25 Sep 2026 22:35:46 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da112213f06d0483a732beab11b9569be28cbaf90c307a5059c8a0bec0844aaa`  
		Last Modified: Fri, 25 Sep 2026 22:35:40 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:9b037d98ea9ecbd20a268b18195ecc9e765d46305a98f1fd53db66bb8a4278e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3917417 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:425f638aeb5bfbbe51146b4f677275e1fb9f49c2c32deddf17ad1d4a8c05cdfc`

```dockerfile
```

-	Layers:
	-	`sha256:a71a207effa0e3e6e86d65dd1e19fe664ca66c673ce31ef9d73be75f0240aa1f`  
		Last Modified: Fri, 25 Sep 2026 22:35:46 GMT  
		Size: 3.9 MB (3895500 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:733e93b7b69fd5e5557caebdc3be95e3cbfd1c37df39f0846a1750453dbb17b2`  
		Last Modified: Fri, 25 Sep 2026 22:35:45 GMT  
		Size: 21.9 KB (21917 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:8649b07ff908497803dedf7df47bef5d5c1e1bb3a03d8a7d10c94f6efea96ac4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (85029537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0d2b9a07467bc7e325d9ce1263a80899774ee48674aacb4f0661502f2203505`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:34:50 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:50 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:50 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:34:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b09dfe2031d9b446b3ee43c5d2eb137dfc71c092600c42e3c284f71b9d0adb`  
		Last Modified: Fri, 25 Sep 2026 22:35:04 GMT  
		Size: 16.0 MB (16048303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d11f02b11e25db53f65f5e2b48d53e05b472bcc5bfa1893233f6ea9a3ae76e3`  
		Last Modified: Fri, 25 Sep 2026 22:35:05 GMT  
		Size: 41.3 MB (41295896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6a2ae5adcbd38b7d4c1072bf01170fac5b1129f5884ae20d4f5d832433a4b83`  
		Last Modified: Fri, 25 Sep 2026 22:35:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297fc0ccadc4564c3cbccbfafab1c19c0d723ae0970333d6fea2ddfa70819cf4`  
		Last Modified: Fri, 25 Sep 2026 22:35:04 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:f50156312d5612ce644f917247f4d60dbeaa39031da8994c96213e60b6500a5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3917875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e6863ce407f8139bc7f49fd207fe98ecbeca38ed14a1dbfc50e64333fa5d7c0`

```dockerfile
```

-	Layers:
	-	`sha256:01a9143ea549aa6dea4a46acc2fe54cf57fe79b967e9c8ab519b8b86d114b4df`  
		Last Modified: Fri, 25 Sep 2026 22:35:04 GMT  
		Size: 3.9 MB (3895848 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:714eaa7534fc87350c0e21c853e792a48562b096abf84b5265e219f7544470b4`  
		Last Modified: Fri, 25 Sep 2026 22:35:04 GMT  
		Size: 22.0 KB (22027 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:0b544f194e0fd614f56b6ab47ade41abffb4f8393f1f2a162ace8f0b4c4e04bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94030617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dc194dc7302252bd3b32155691f446f916e58ecca6f07a30bd35326bdd16c3a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:40:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:40:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:40:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:23 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:37:35 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='52dcd578baca1d3e449ea86768a9129c0ee04d7b22565695498353cc66940c61';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='9ae9c4dd80fc8f3c4081b480c7d42346e9e4cbee5ae58198fca11e0fc1a19163';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='8ca828acbe5f5b021e14a7ee67c6af36bd0ac50681f1ccdd62352afab947e9cb';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='314457c842c578607d61e8867c4a9adcb3765eb62bb1b543239b1baccfe7b48b';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jre_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:37:38 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06953810da290342e65fe66b92b4b60b2418772162a6703338733f254fafcb3`  
		Last Modified: Wed, 09 Sep 2026 01:42:21 GMT  
		Size: 17.6 MB (17582288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9bfa93ea0b838fc53e6a5c5a8cb87fe9cd18649f396d844f0ec53707b95589`  
		Last Modified: Fri, 25 Sep 2026 22:38:08 GMT  
		Size: 41.7 MB (41743059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07bc484c469920e290bd5a75c3d7fe29b38595261cb0a8da108f4878fd691e79`  
		Last Modified: Fri, 25 Sep 2026 22:38:07 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76b9bdb1fb1a42c0dee97aff2e9d44bbf40e5bcd44acf54fbb6c5a41672483e`  
		Last Modified: Fri, 25 Sep 2026 22:38:07 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5619dba7d1b00fbd4d8708713547b4dbbb0286b9c9dc72b95b97d0ae20319136
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3922218 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31918e0405dcd9a368bf457e5821206ff116970b72a03454d1833f2f28f76002`

```dockerfile
```

-	Layers:
	-	`sha256:a03edcf5bbbaecb1957849cf0dbdaf913b70aa584fa266be47f7190fb6ac9bb7`  
		Last Modified: Fri, 25 Sep 2026 22:38:07 GMT  
		Size: 3.9 MB (3900265 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b6071f8e6b9eb313418d7783e3db0ea22c2af9a08d1f87ef30ed552b89f028a`  
		Last Modified: Fri, 25 Sep 2026 22:38:07 GMT  
		Size: 22.0 KB (21953 bytes)  
		MIME: application/vnd.in-toto+json
