## `eclipse-temurin:11-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:6bfdc39ba1d55df439ea3e5a5ff0b9faae0513c2b813acaad6791b1abceb538a
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

### `eclipse-temurin:11-jre-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:2f9b18a8e21499ba05870394fb80f219eaf56b97c194f9c02f9f4c42660dc8ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.4 MB (96442780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:818a21c691834a410c380ac80a80b7de38b2881672939cf2abb27c4ab4115a06`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:27:00 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:27:00 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:27:00 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:27:00 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:27:00 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 04 Aug 2026 01:27:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a6af3d61851f57eb79ef0189837522329717458bf230ee284da2d26634f1ea3a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='eabe05fb80626ad24db17cf1df137855e77fbacbc83c11aaf243cedd224467de';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='5d3e988cdc8291779068c957c01d339f26178ff65d13af4671107b169e80a69f';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='11e58bf1eeae10f0dc1a98cc43bf97af270a0b516f6ff9fb3189024c5e22550a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4c311b19aa3922951be288076f0f41a831ab7af32284da9b3e21cdaa251a078a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:27:04 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:27:04 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:27:04 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a1b8cdd67febad978382bd10af3403234929722fd7c25183e24fedbdeff0e76`  
		Last Modified: Tue, 04 Aug 2026 01:27:17 GMT  
		Size: 19.3 MB (19345549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f40b67a099f1503921d687b8d4a6c103c971ffa6b129b77338c981ba9eba389c`  
		Last Modified: Tue, 04 Aug 2026 01:27:17 GMT  
		Size: 47.3 MB (47343682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fbc5c23b7bcc779fda741c826a5c86d04ab173abb2aba236501dfeaeb02999`  
		Last Modified: Tue, 04 Aug 2026 01:27:16 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8b5fd3a5fb47b3ab3fdd2fc6e2a888a8777724bfadbfac10b5b0e021749321f`  
		Last Modified: Tue, 04 Aug 2026 01:27:16 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4eed54b733468ecb3fd0814675ac117fcc4e48bb219cfed548fcfa347b377d1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3305438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5108ef07b52083493e4950a14017141cae44cfd21cf080dd0d7bb1f0fdda908c`

```dockerfile
```

-	Layers:
	-	`sha256:146e72347f113dce9aae03ad7cd1d7ea9e0a122393976b35ff991ec7cdd495a6`  
		Last Modified: Tue, 04 Aug 2026 01:27:16 GMT  
		Size: 3.3 MB (3282915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9070937a1b880d6f7c353dda6896aca905703b4edec9bf7ac6579ef051b17e67`  
		Last Modified: Tue, 04 Aug 2026 01:27:16 GMT  
		Size: 22.5 KB (22523 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-noble` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:fadba0a1acd76cc8bcaddc5e4dbdc88cd4c53701eafafd6d8b68036e382bc39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88596981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4a81e2b59caabbbf2bb33189d78d274b714bb78f5bf76c7ae5a770c66492cf6`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:36 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:36 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:39 GMT
ADD file:a14f36e5118167aeb083ee3ba0aabf6fcdf633fe1c3297963fe456c1a0cb252a in / 
# Fri, 31 Jul 2026 20:45:40 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:14:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:14:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:14:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:14:55 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 04 Aug 2026 01:15:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a6af3d61851f57eb79ef0189837522329717458bf230ee284da2d26634f1ea3a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='eabe05fb80626ad24db17cf1df137855e77fbacbc83c11aaf243cedd224467de';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='5d3e988cdc8291779068c957c01d339f26178ff65d13af4671107b169e80a69f';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='11e58bf1eeae10f0dc1a98cc43bf97af270a0b516f6ff9fb3189024c5e22550a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4c311b19aa3922951be288076f0f41a831ab7af32284da9b3e21cdaa251a078a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:15:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:15:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:15:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:c55214abec85c375f31bae91edc8d5ede87ebb1a3979fe7ba996b347fc559989`  
		Last Modified: Fri, 31 Jul 2026 22:22:35 GMT  
		Size: 26.9 MB (26872495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afed1caaa1c1cbb941f424fedbaffd964c9f4a13eec711f24c3f8ecfcd212b63`  
		Last Modified: Tue, 04 Aug 2026 01:15:21 GMT  
		Size: 16.3 MB (16267952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:706aaef7a62688187174f54101b199cb0f28cfb0eddfeca3459e27ed4b5b8649`  
		Last Modified: Tue, 04 Aug 2026 01:15:44 GMT  
		Size: 45.5 MB (45454093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dadb13d6df0f0b9c130f39085ecc7e43efbd4427ff1dd596b9d2827ad205f22a`  
		Last Modified: Tue, 04 Aug 2026 01:15:42 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ec937144124b0c44e6fc9184619177a80b1fdaf34a58f4960ddd790eb66a47`  
		Last Modified: Tue, 04 Aug 2026 01:15:42 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6bc7922890cf183e8cd34f38699649cd91fdaef9dec1cf9c113fbc59a6aeb65d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3309112 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:241ab3b9dd57699d6f32651653b5f9635bb6d2cdeb103b1318fab6ab653deaf4`

```dockerfile
```

-	Layers:
	-	`sha256:d7209aa6e5d35cd3a77f4a79e5a0a0505f264b3ef52990d59299b61c2146a74d`  
		Last Modified: Tue, 04 Aug 2026 01:15:43 GMT  
		Size: 3.3 MB (3286499 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:95299d73e463f825cefd777389bde0190046a04e40cdcbad08e5a093798b75f2`  
		Last Modified: Tue, 04 Aug 2026 01:15:42 GMT  
		Size: 22.6 KB (22613 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:0952c9a98eb7260a53878cd756a9beaa1e21bc8ac3b4bd5f8c5730349126bbed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.5 MB (91499833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0edae09462183061bcddd739dff65fe68314a10a1a961f1a38a316c9ddda619c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:27:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:27:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:27:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:27:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:27:08 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 04 Aug 2026 01:27:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a6af3d61851f57eb79ef0189837522329717458bf230ee284da2d26634f1ea3a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='eabe05fb80626ad24db17cf1df137855e77fbacbc83c11aaf243cedd224467de';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='5d3e988cdc8291779068c957c01d339f26178ff65d13af4671107b169e80a69f';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='11e58bf1eeae10f0dc1a98cc43bf97af270a0b516f6ff9fb3189024c5e22550a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4c311b19aa3922951be288076f0f41a831ab7af32284da9b3e21cdaa251a078a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:27:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:27:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:27:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eed0c760f079e366afea59693b195bbd08d3e67d192feb619249072fba6f0c80`  
		Last Modified: Tue, 04 Aug 2026 01:27:25 GMT  
		Size: 17.0 MB (16950985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586717f6fd1132936d47ae2ac25084d6180e43d93be0dfb6d970faab7e057e12`  
		Last Modified: Tue, 04 Aug 2026 01:27:26 GMT  
		Size: 45.7 MB (45659591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be944892b75e44524909bf59d5cc4d5272f155619bf76942287865abf86d099`  
		Last Modified: Tue, 04 Aug 2026 01:27:24 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6692163b9b6deb6b71034741724d37a7bdedac89d82a190b7b45ed048161d587`  
		Last Modified: Tue, 04 Aug 2026 01:27:23 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4cbf8486c35645eb796d18d1d56b383cdb822343971537fe8e947f584ba1a42f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6af646f191f8e6c3ad4593f04c49ff0477532512162f5126e283817bd9a66550`

```dockerfile
```

-	Layers:
	-	`sha256:24da1084c2c042b751713cea934612c47ef94b8d2be77624346eab6afe1a008b`  
		Last Modified: Tue, 04 Aug 2026 01:27:24 GMT  
		Size: 3.3 MB (3283980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9331bab075959b16a6ddb7e48afc0b79a4615afede432f71636bd11c161a649a`  
		Last Modified: Tue, 04 Aug 2026 01:27:24 GMT  
		Size: 22.6 KB (22633 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:c59ed43ab2736a14cac3e9998e8298690a98b5e88305c0236f245bfaafc9d60a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.5 MB (98514923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dea14fe5fef2f442f477dcf9b044209aa0ac3f875e69c57159bb0a7e47d580a8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:14:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:14:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:14:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:14:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:14:23 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 04 Aug 2026 01:18:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a6af3d61851f57eb79ef0189837522329717458bf230ee284da2d26634f1ea3a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='eabe05fb80626ad24db17cf1df137855e77fbacbc83c11aaf243cedd224467de';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='5d3e988cdc8291779068c957c01d339f26178ff65d13af4671107b169e80a69f';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='11e58bf1eeae10f0dc1a98cc43bf97af270a0b516f6ff9fb3189024c5e22550a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4c311b19aa3922951be288076f0f41a831ab7af32284da9b3e21cdaa251a078a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:18:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:18:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:18:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:511319b2e0803887cfd0c90af4cb35091e190f8fd52c0cfc09ab24dc5a25e75d`  
		Last Modified: Tue, 04 Aug 2026 01:14:52 GMT  
		Size: 21.4 MB (21390214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca39f6971d4b577f436ab744b7e5a45255e22a63d95e31e5014c8904cb503f8e`  
		Last Modified: Tue, 04 Aug 2026 01:18:51 GMT  
		Size: 42.8 MB (42811593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf71c07afb70c04ddfb80da1e69110211cef02b93538d619201c134e6c77e07f`  
		Last Modified: Tue, 04 Aug 2026 01:18:50 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a82e765ec8a33faeca23c301b08038bdbd3794e6975e4fc6b8b4ef37e2afe894`  
		Last Modified: Tue, 04 Aug 2026 01:18:50 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:27efdfe0644adc3314842a33c43c4807a4ecb96566e32cca69420369f4547b77
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3309536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1212cf5a99546b13747ed0530c52ce1e0aed6c483ee80c75a76327de61da923`

```dockerfile
```

-	Layers:
	-	`sha256:62999f75f2686fa58095800d4341af6ff7194fd2798b71caa38eb95e69eb8697`  
		Last Modified: Tue, 04 Aug 2026 01:18:50 GMT  
		Size: 3.3 MB (3286977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:586ea9b737bb9934fc69f6ab8c77f5351ca6d4687de84fe36621feb6f3301e4c`  
		Last Modified: Tue, 04 Aug 2026 01:18:50 GMT  
		Size: 22.6 KB (22559 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:a4155a6a23819e3ac9487290cd377bcba518ecfec1214d3e80ea020d01fc3807
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.8 MB (88830563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25392645bed408bc896c7f14833e7c4cc803c2a6c904b279263184d5f42d019b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 31 Jul 2026 20:38:37 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:38:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:38:37 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:38:39 GMT
ADD file:6086e70240c95f713e06ab2c1f53baed9645134bf0319a771ee83e6caa6fe818 in / 
# Fri, 31 Jul 2026 20:38:39 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:12:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 01:12:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:12:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:12:05 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:12:05 GMT
ENV JAVA_VERSION=jdk-11.0.31+11
# Tue, 04 Aug 2026 01:12:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a6af3d61851f57eb79ef0189837522329717458bf230ee284da2d26634f1ea3a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_x64_linux_hotspot_11.0.31_11.tar.gz';          ;;        arm64)          ESUM='eabe05fb80626ad24db17cf1df137855e77fbacbc83c11aaf243cedd224467de';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.31_11.tar.gz';          ;;        armhf)          ESUM='5d3e988cdc8291779068c957c01d339f26178ff65d13af4671107b169e80a69f';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_arm_linux_hotspot_11.0.31_11.tar.gz';          ;;        ppc64el)          ESUM='11e58bf1eeae10f0dc1a98cc43bf97af270a0b516f6ff9fb3189024c5e22550a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.31_11.tar.gz';          ;;        s390x)          ESUM='4c311b19aa3922951be288076f0f41a831ab7af32284da9b3e21cdaa251a078a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.31%2B11/OpenJDK11U-jre_s390x_linux_hotspot_11.0.31_11.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 04 Aug 2026 01:12:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 04 Aug 2026 01:12:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 04 Aug 2026 01:12:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6bb1e92e6c04f8404c596df473b847d14a4cc2ca1d4734e5353b4b54d37b3338`  
		Last Modified: Fri, 31 Jul 2026 22:22:57 GMT  
		Size: 29.9 MB (29935711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244bcf803db4aa1c3a74edc930afc51d254e49e3935fe005a3ec5a3befb1a351`  
		Last Modified: Tue, 04 Aug 2026 01:12:32 GMT  
		Size: 17.5 MB (17533740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c4b0d8b1f46aa867b14bdd29694e4317f023c24fe5fd5c141bd472171732675`  
		Last Modified: Tue, 04 Aug 2026 01:12:45 GMT  
		Size: 41.4 MB (41358671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71331fbb78c8c330eedb17632fa8b89aeec894aa816460e753455228c739579`  
		Last Modified: Tue, 04 Aug 2026 01:12:44 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe800516f9cd652f0ef6acba2eeca2db3b222b5a804d77890e22fbefb24771c6`  
		Last Modified: Tue, 04 Aug 2026 01:12:44 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:6b4be4399c6e8aff6f22528beb8da0ba1474a74235357c0d02ff7ac1fb5c3bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3307644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd09f2e193134c16536beff9a371f99b0492b7f7ec24bc152a0c07355e02724`

```dockerfile
```

-	Layers:
	-	`sha256:6f327a62c37020ce068fcc7a54705a19efd4843aa587ebfed551a722b05a7a86`  
		Last Modified: Tue, 04 Aug 2026 01:12:44 GMT  
		Size: 3.3 MB (3285121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a0769002c033209db527fa6597707c6c0d933cdbb8291e2895eca81f6236285`  
		Last Modified: Tue, 04 Aug 2026 01:12:44 GMT  
		Size: 22.5 KB (22523 bytes)  
		MIME: application/vnd.in-toto+json
