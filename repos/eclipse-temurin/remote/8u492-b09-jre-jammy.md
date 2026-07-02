## `eclipse-temurin:8u492-b09-jre-jammy`

```console
$ docker pull eclipse-temurin@sha256:5d566d855bf810f068e21fcb040f926b9440120127082c293765b6bee9e4d956
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

### `eclipse-temurin:8u492-b09-jre-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:1a21356ed64032860d8647a7f65c9f2c15a5d5c9d5fa1a3bb792259d7e3b4c52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.2 MB (88229533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1422221b89c614f4228b5581134b68e6869f6d884ff83c21c8ec73b0ba79957a`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sat, 09 May 2026 04:49:21 GMT
ARG RELEASE
# Sat, 09 May 2026 04:49:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sat, 09 May 2026 04:49:21 GMT
LABEL org.opencontainers.image.version=22.04
# Sat, 09 May 2026 04:49:23 GMT
ADD file:14c8897ef5107db11b35f5a0c05bdcb883c0a6daa83d07d4439865541f08514c in / 
# Sat, 09 May 2026 04:49:23 GMT
CMD ["/bin/bash"]
# Fri, 15 May 2026 21:15:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 15 May 2026 21:15:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 May 2026 21:15:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 15 May 2026 21:15:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 15 May 2026 21:15:23 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Fri, 15 May 2026 21:15:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 15 May 2026 21:15:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 15 May 2026 21:15:26 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 15 May 2026 21:15:26 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:40d16f30db405106ef8074779bdf41f012465c2a785bbeaa2eab9f2081099b47`  
		Last Modified: Sat, 09 May 2026 05:24:51 GMT  
		Size: 29.7 MB (29736684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9809735d161606fca80eec522079346180854692b45e1414ac7417e599ce3f6d`  
		Last Modified: Fri, 15 May 2026 21:15:38 GMT  
		Size: 16.2 MB (16152926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4ef1e6dad19cb0537105de2651c5d76963b17975e10a4ac3f8b0e14e4948e37`  
		Last Modified: Fri, 15 May 2026 21:15:39 GMT  
		Size: 42.3 MB (42337331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3922ebca959aa9f759e651f7323c1f3d14e9857f978040ee3c681e0b250e92ee`  
		Last Modified: Fri, 15 May 2026 21:15:37 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06699c254ff1e59349f33a8a4d0877dcd0af8246b3381100902a078167ba1eeb`  
		Last Modified: Fri, 15 May 2026 21:15:37 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:89a950bcdedb4b6e938b1f1ed83e18306779af7991faecb8682e610df1ad5627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3932029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1828cee71babfd5649bf0ac78230cc46d4679a7bb7fa17684819caf7b4f66378`

```dockerfile
```

-	Layers:
	-	`sha256:9e010140de71b965c0b2bb6d99cc23ebe25f2097de157239d411ef35225f96d6`  
		Last Modified: Fri, 15 May 2026 21:15:37 GMT  
		Size: 3.9 MB (3910112 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e35cfcf6d5bca3302e032d6033111d6b0f98afa62ed8e3fb55e29c7519876b3e`  
		Last Modified: Fri, 15 May 2026 21:15:37 GMT  
		Size: 21.9 KB (21917 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jre-jammy` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:ee1f403e833b9dc4791d6018cfcc325a6ca015e308476c1d056edd993157a209
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **82.5 MB (82466675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98f3886df769175013f1153e7354780831f6c0bcfb9b62a4b8e227ebf680b25b`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Mon, 29 Jun 2026 10:37:54 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:37:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:37:55 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:37:58 GMT
ADD file:e7546f5c79f7a8bd7a469346f2df5e5e441b3dd98eeb097f35a0e4e12f178e37 in / 
# Mon, 29 Jun 2026 10:37:58 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:12:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:12:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:12:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:12:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:12:07 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Thu, 02 Jul 2026 02:12:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:12:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:7eb07192b0445ceecf2631737a38663aecbae5a424838f6da1b061161080da18`  
		Last Modified: Mon, 29 Jun 2026 11:25:33 GMT  
		Size: 26.8 MB (26844294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a020ac50fb9f4171667e1ae46cc3022fc067c3063e15e0b753f6370736054d84`  
		Last Modified: Thu, 02 Jul 2026 02:12:27 GMT  
		Size: 15.8 MB (15840985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a99a6e608b4e46263b43167edd6ad43b22c670544fea09bd09bf19c87f3ac2`  
		Last Modified: Thu, 02 Jul 2026 02:12:27 GMT  
		Size: 39.8 MB (39778804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4723908c813eae1efd0bb2dd05f7851440d310947e1b181113fd9c28c5c9d050`  
		Last Modified: Thu, 02 Jul 2026 02:12:26 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:882084bad6d22f5c0e0327c4bc37960819318d4aa1a5289fc98affef65262dd3`  
		Last Modified: Thu, 02 Jul 2026 02:12:26 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:08fe9a34395b40275f0300a3bf41ef7977c45ed17e691c05131fb7a8d7bb5286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3921862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:965d220c9b50600ecb6b14b67673cb39a60b3189aab51af54b24c1e7612697ed`

```dockerfile
```

-	Layers:
	-	`sha256:ca608f4ee0456e16e8059752667dc9222e5944da8e937190b2afa307a49e2e54`  
		Last Modified: Thu, 02 Jul 2026 02:12:26 GMT  
		Size: 3.9 MB (3899855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:596f2b9dd303218db503b7f21c67723d02d4b7c57d94f23917f576fa4b807b0d`  
		Last Modified: Thu, 02 Jul 2026 02:12:26 GMT  
		Size: 22.0 KB (22007 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jre-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:965d75a28f40eb0c7cabb5c573c22013ddaf071f0e7413aeec10c234eb7252dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **85.0 MB (84993057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2c52a083bc9fd13d08cde959fa76395ed2f0747ccb72cf2eff6454014004c45`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sat, 09 May 2026 04:50:55 GMT
ARG RELEASE
# Sat, 09 May 2026 04:50:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sat, 09 May 2026 04:50:55 GMT
LABEL org.opencontainers.image.version=22.04
# Sat, 09 May 2026 04:50:57 GMT
ADD file:a8d1411696ccaba92b4557162d508331f7cb7973e559947ad40c3f25d9402b10 in / 
# Sat, 09 May 2026 04:50:57 GMT
CMD ["/bin/bash"]
# Fri, 15 May 2026 21:15:49 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 15 May 2026 21:15:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 May 2026 21:15:49 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 15 May 2026 21:15:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 15 May 2026 21:15:49 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Fri, 15 May 2026 21:15:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 15 May 2026 21:15:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 15 May 2026 21:15:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 15 May 2026 21:15:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:99267111abcc4caf5e9b6f06fd8b9ca7ae7bff04ce06b24ca352c6007daaa73e`  
		Last Modified: Sat, 09 May 2026 05:24:57 GMT  
		Size: 27.6 MB (27606623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e57ad989666c9e0dfc45a5f5a1a6ec026fe709513407113fd1d938cb641e13ca`  
		Last Modified: Fri, 15 May 2026 21:16:03 GMT  
		Size: 16.1 MB (16076205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce65f238d0baca3298d1f9e6326cc56ca75810ad6e53c12037b367584082fda3`  
		Last Modified: Fri, 15 May 2026 21:16:04 GMT  
		Size: 41.3 MB (41307638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffb072afd1f67d58ee0f2eca30713f2d4a287fb73558f38fc9218f6171499c1f`  
		Last Modified: Fri, 15 May 2026 21:16:02 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713302fd0888c1f5d62848e974011f41dab17a6829c9ba51123a40c39f5438fb`  
		Last Modified: Fri, 15 May 2026 21:16:02 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e460be72b0b0353627a25f7215e726ceb0fa7931c627787712045e47ecacd423
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3932487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64b76c1c4d044f3eaa6bd0c2dd8ee7e6e0621bd7685bdc6aad074e5e565b4d5e`

```dockerfile
```

-	Layers:
	-	`sha256:4e6091408e5622f10a370f9c4f212ae1f3294f628dfeabbc4f57aa15b786ac47`  
		Last Modified: Fri, 15 May 2026 21:16:02 GMT  
		Size: 3.9 MB (3910460 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8eae54fd9c5a4fdfc931d5bf4d3eefaffd6397b513d06225b72286d2954f9b67`  
		Last Modified: Fri, 15 May 2026 21:16:02 GMT  
		Size: 22.0 KB (22027 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u492-b09-jre-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:06e27b925531c5f4f76ea59b9a3332ed7bd12b4d79c96c91db82b1f132b87d65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.0 MB (94016644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3080b481c91fb7dfa6869ec9990ff8bf7668b39757530c2af0ba6cf3ef944066`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Sat, 09 May 2026 04:51:05 GMT
ARG RELEASE
# Sat, 09 May 2026 04:51:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sat, 09 May 2026 04:51:05 GMT
LABEL org.opencontainers.image.version=22.04
# Sat, 09 May 2026 04:51:11 GMT
ADD file:bd6823713e9d7c2f4ea7ca1d6d549e2bed56e8ce1fc6f98e14f6eb3a3371ebfa in / 
# Sat, 09 May 2026 04:51:12 GMT
CMD ["/bin/bash"]
# Fri, 15 May 2026 21:10:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 15 May 2026 21:10:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 15 May 2026 21:10:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 15 May 2026 21:10:20 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 15 May 2026 21:10:20 GMT
ENV JAVA_VERSION=jdk8u492-b09
# Fri, 15 May 2026 21:10:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8eef3d4a837bb7a9e45d30a7579d84d5b76a4321f4376573311e6bf89e48f9b0';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_x64_linux_hotspot_8u492b09.tar.gz';          ;;        arm64)          ESUM='d5e50cb002600007dbdfac523605d26196607fa5212db0942ef05cdce9fe2892';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_aarch64_linux_hotspot_8u492b09.tar.gz';          ;;        armhf)          ESUM='5f0693c6c8ca0eb8df969bb1053b1926b1e7c57a3f90c6f9e8d493395e76a329';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_arm_linux_hotspot_8u492b09.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='4f724a0fce1117521a3a3e55ebb0281d56f6c9a066092bc3186ee40d8cd955a2';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u492-b09/OpenJDK8U-jre_ppc64le_linux_hotspot_8u492b09.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 15 May 2026 21:10:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 15 May 2026 21:10:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 15 May 2026 21:10:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:6970bf2b5ef1698cb51975b1a652f6511f8fd9f88ae7b247e3ee32591d975e63`  
		Last Modified: Sat, 09 May 2026 05:25:11 GMT  
		Size: 34.6 MB (34646720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74563760a17437dfb610242b605ae18edc6feef6143f0f512cfd8f6e66afb898`  
		Last Modified: Fri, 15 May 2026 21:10:51 GMT  
		Size: 17.6 MB (17625928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50452b4021ff92b1c76e9c25e7e62a9fcc842f3a9ebc7a316c87fc38169381ef`  
		Last Modified: Fri, 15 May 2026 21:11:03 GMT  
		Size: 41.7 MB (41741407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4d348018cc4e251c2e5b407aaf527e2ee02115468d2812d9464da272452bce`  
		Last Modified: Fri, 15 May 2026 21:11:02 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a621e01ca9ba78e5bb182a77472ceda2ff8d82643828fafaf7e6868360a6171`  
		Last Modified: Fri, 15 May 2026 21:11:02 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u492-b09-jre-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:eedeb98f19ce204b6376bc688d9c54dca2a66a017eba8fae1ace83b592eac1e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3936830 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c0a695d3382f26e830cd22e6fc6db7e2b944d239d2d68f48a6131f709cd3404`

```dockerfile
```

-	Layers:
	-	`sha256:bd8270797c6e348e1774fc2f8ade180dc77992d30d2c3257733c6715b10ef749`  
		Last Modified: Fri, 15 May 2026 21:11:02 GMT  
		Size: 3.9 MB (3914877 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f8a4456a694ad88dc35980698996fd582ae0499621263ff498b81141d4700b5`  
		Last Modified: Fri, 15 May 2026 21:11:02 GMT  
		Size: 22.0 KB (21953 bytes)  
		MIME: application/vnd.in-toto+json
