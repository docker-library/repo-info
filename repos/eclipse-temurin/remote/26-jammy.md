## `eclipse-temurin:26-jammy`

```console
$ docker pull eclipse-temurin@sha256:9d7b456c752177876152e5e5747e4e8f04e60f00714343fca0773bfff01ab899
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:26-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:6c9db8fcc51746b048101d583f78c994618734d9c5d28572c10869cff59fbc6b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **140.3 MB (140337479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d3a5afbeef711b1cf064db9819a92c3228533010d0830c7d737bb7458c60a3`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 00:20:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:20:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:20:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:20:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:20:27 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Sat, 17 Oct 2026 00:20:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:20:51 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:20:51 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:20:51 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:20:51 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d12fca13ffa3a07df074d73f102f123291bef62c4aac3577368d3bff7d69093`  
		Last Modified: Sat, 17 Oct 2026 00:21:08 GMT  
		Size: 15.9 MB (15919452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb5d4059eb886ad8b7b075a0161f1e4f7dfb4f33e2f5655c08aa501bf69b9e4`  
		Last Modified: Sat, 17 Oct 2026 00:21:11 GMT  
		Size: 94.7 MB (94663055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1678733a7e2eea4b66b6f77272ee01b4eb1a4872acf11aff6a2fc41b3c525085`  
		Last Modified: Sat, 17 Oct 2026 00:20:59 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4b513e7af2d57daebe6fa3adbb0836e49d8c085796675fa652e2c5f2ac4c77c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3856724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68a6dde4da4416540fbdd45f5da88dced65b2a09518f36a496a35951f7b0c47a`

```dockerfile
```

-	Layers:
	-	`sha256:05b6bb3c73d429ea9291b3bd2195cff8480fdc12142d3eeea8e7497cfd32e8fe`  
		Last Modified: Sat, 17 Oct 2026 00:21:08 GMT  
		Size: 3.8 MB (3833047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80212b13ece690c22d6893647560af633dbf32efbd066adee115489cecbb3ca6`  
		Last Modified: Sat, 17 Oct 2026 00:21:07 GMT  
		Size: 23.7 KB (23677 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:0ed499aa80a25b9b61e21fec0d2f9a4b1e8d9646e4eba28cffa21c42bc9b13d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **138.7 MB (138691497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:98d8d029418f1fcc8b5a3ae8037776a1eb7a608c6e1ea443b750d3ef091c6629`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 00:20:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:20:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:20:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:20:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:20:24 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Sat, 17 Oct 2026 00:20:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:20:47 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:20:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:20:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:20:47 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2a24b3938d84e977c7e62645bf4c30e6a4a4effe43a3c473ad05077cb3bbfc`  
		Last Modified: Sat, 17 Oct 2026 00:21:05 GMT  
		Size: 17.4 MB (17357025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eebf49d7426e3e1864d3558f542e83b572c6734797496b7acecd47a32f4c1af`  
		Last Modified: Sat, 17 Oct 2026 00:21:06 GMT  
		Size: 93.6 MB (93647253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b5716fb52b05e757e4839291d1668a6f19263b4997fb6eec949f3c1e350bb71`  
		Last Modified: Sat, 17 Oct 2026 00:21:04 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c161895b272f4318ba92f07cfebbcf541749c024105209fed3d13c9f8128a05e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3952298 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2107769ee8a7616c65ce92e6ef7d2d6fab77431f8ef3ecd3b7d7ceaa2008d89c`

```dockerfile
```

-	Layers:
	-	`sha256:e81ae39b0db2d25368d4d62f969b6fecd7b81b82db7fd92b57a693bf00c9d393`  
		Last Modified: Sat, 17 Oct 2026 00:21:04 GMT  
		Size: 3.9 MB (3928499 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:147f4e4b94169b455d8e360a30fcea5abf4ad10345b6cd8d691947cf9e3fed3e`  
		Last Modified: Sat, 17 Oct 2026 00:21:04 GMT  
		Size: 23.8 KB (23799 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:2edfef5fb8bd54b251ad4c3bc499594c90c88bedd703b2bf17487ad4d7478632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **145.0 MB (144982479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cb1e7053ca1efcf3989921be6630d8b57883a7be47983be0b8b48dbbb1152e8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 00:40:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:40:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:40:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:40:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:40:16 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Sat, 17 Oct 2026 00:48:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:48:13 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:48:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:48:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:48:14 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:165e9e87248832ddbd55d95b5630fee55feb1e5fc0be0288a115f5d5dc87232a`  
		Last Modified: Sat, 17 Oct 2026 00:41:50 GMT  
		Size: 16.8 MB (16823101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b02b5d19f1b46b4514fbad9453c63322168041bd7835e3a708d8ae26b6191f0`  
		Last Modified: Sat, 17 Oct 2026 00:49:12 GMT  
		Size: 93.5 MB (93453247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758c81e07f62d70956a2aef37f6e335dcb3535a3abf586ab65a660e40dd12902`  
		Last Modified: Sat, 17 Oct 2026 00:49:09 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:c5ca66f47752a4f2893f5f630a9238ccc47f4eaf92e99af22bc12ba617149e52
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3868123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79377017086e3b59899dae969332bad526284c53f019fc4bc346c02fb605901d`

```dockerfile
```

-	Layers:
	-	`sha256:b58fed4c3187f4a54ddb66f63d3fa225ac10ca429fd32c898ebb189f85de6ad4`  
		Last Modified: Sat, 17 Oct 2026 00:49:10 GMT  
		Size: 3.8 MB (3844406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65eeb3645046e308b64fb51fa01437efaadc877fcb1d701f2a863f6a4e6a86f2`  
		Last Modified: Sat, 17 Oct 2026 00:49:09 GMT  
		Size: 23.7 KB (23717 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:26-jammy` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:d5e3a4c1c8dff28a164d7b612a8571d8664fc8b937e31b8097ca54839c01a7d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.6 MB (134644916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e43dd2009a41a8094e41b29b33cd706e2e43137f74acd9bc15cf0a5fbf244966`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:47 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:47 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:47 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:49 GMT
ADD file:37d95fb30f79d123e31757f3914721d25b7e55b974a72d49a4ef18cbdd2c5044 in / 
# Fri, 02 Oct 2026 10:22:49 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:19:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:19:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:19:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:19:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:19:22 GMT
ENV JAVA_VERSION=jdk-26.0.2.1+1
# Sat, 17 Oct 2026 00:19:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='451c12e68747bcfa2fb5a2c16b00483fedb9fa6d77bc962d30957f76ac17044d';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_x64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        arm64)          ESUM='9f6ad9856a7dd880061adaf88db3c4da0642113d59b7960a892f0e551c0c948c';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_aarch64_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        ppc64el)          ESUM='34e0030c9b972b93cd11c3fb77211ae64c6a7d9c2ba10665730ee9f56ab29722';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_ppc64le_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        s390x)          ESUM='165602f7c4c3daeb8a71fa0dc1d1437f4707b702b8c3d3876d399e11241db34a';          BINARY_URL='https://github.com/adoptium/temurin26-binaries/releases/download/jdk-26.0.2.1%2B1/OpenJDK26U-jdk_s390x_linux_hotspot_26.0.2.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:55 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:19:56 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:1cc3b16ef800fa37e67e957552c6fceece7de8c1f49769006e2e5ee5704c33e0`  
		Last Modified: Fri, 02 Oct 2026 11:09:00 GMT  
		Size: 28.2 MB (28222770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce95cc7f8a27895ddec9a4edfbc76caf1b4e1ca518469153ba0b31107dd8b9e4`  
		Last Modified: Sat, 17 Oct 2026 00:20:26 GMT  
		Size: 15.7 MB (15738155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d9ca48ed554ede55a5f2ae5a76d17d1603d990d0cc9cbc55dad6d9f35bc5eb`  
		Last Modified: Sat, 17 Oct 2026 00:20:28 GMT  
		Size: 90.7 MB (90681494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2db713978a143a6a065f819ee9d3fb1e4ee7f492c8ce7ba4272d45757a0d0368`  
		Last Modified: Sat, 17 Oct 2026 00:20:25 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:26-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e58dc24bfa2a109833196c8dd6ad18f48dae86a87f2c16bd620b17d18e1da204
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3766920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47aad03791ffb20d409c9f1640ae99cbde81ba04c1b4893a473792284141e523`

```dockerfile
```

-	Layers:
	-	`sha256:3a22a218a3014b66a6d78cd22134d67e1b9e597ffe761a4dd43c5cb2cb006d9c`  
		Last Modified: Sat, 17 Oct 2026 00:20:26 GMT  
		Size: 3.7 MB (3743244 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c488008afb9bf563ee6258a6eff447531c22b24ff870d138a9014c93776a2be5`  
		Last Modified: Sat, 17 Oct 2026 00:20:25 GMT  
		Size: 23.7 KB (23676 bytes)  
		MIME: application/vnd.in-toto+json
