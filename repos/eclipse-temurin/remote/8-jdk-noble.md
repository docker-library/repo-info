## `eclipse-temurin:8-jdk-noble`

```console
$ docker pull eclipse-temurin@sha256:540aa59f51dbd3ba1125fca1a6d2ddf4bfafcad45cc8222ab5609f3e291813e3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8-jdk-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:9c5eea3f308e841ca3086e1ec4d029db2701fe01bf2e5ed07ab07c3e968214c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101927811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3fda16f301b4c1020873fb5cb643814cf8c06c5522b9fd798ec6f8aa0c7b66`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:44:03 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:44:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:44:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:44:06 GMT
ADD file:43d479b270bbaf47965cfc86b37f4c517bda83ddefda6f708f98c3b2b7d15396 in / 
# Fri, 11 Sep 2026 11:44:06 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:04 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:edd1ed89f0d443580bd42e5a10cd8736aba5a3438b2a0645c2ebb50119bb0eba`  
		Last Modified: Fri, 11 Sep 2026 13:38:39 GMT  
		Size: 29.8 MB (29764116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa11cca00d94f9edf8aff00f761f71847bd1624524cbb17b8e7a06542698164`  
		Last Modified: Fri, 25 Sep 2026 22:35:21 GMT  
		Size: 17.0 MB (16967005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47072100c61c1d73b02a50f8e94a68c5bb2923a2505bfdc7d51d73a8809ed876`  
		Last Modified: Fri, 25 Sep 2026 22:35:22 GMT  
		Size: 55.2 MB (55194077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87d92c87e647a8037c3aa7a013b50bcc95919ce81bea2124c9f6d28402c24f7`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e266086e3d4d553e1371b71fb1fffce28273a34c716c9cd64c0aa970b218950`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:a4a1b687d24c25c578630665f119fb5a1216bfdb32f50e64b3d79d7bef3781e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3497708 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1fa2c4f7efe2858744f1d6f77debc36b18dc2ea17c4f3519e87b95752e6e9abe`

```dockerfile
```

-	Layers:
	-	`sha256:43af06cc7378292433650cb786ef6e9964329b910146a1eb3dbb7ced72720c54`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 3.5 MB (3475277 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ef2affc797c10ee00cb2f299b57bc9971b443b041e73848c60e061862464253`  
		Last Modified: Fri, 25 Sep 2026 22:35:20 GMT  
		Size: 22.4 KB (22431 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jdk-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1ad65a1d44ad9aa5ae548473901ec2a38ab3100cffdfbcc181e84b93c79e4bab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100181080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb73d5bc5994e544b238f6fdd9a56cbb31c81ec0c427dcdebb862da5c8ed1ab5`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:33 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:37 GMT
ADD file:ff1ce8d2ee022926eb353ff9248358531fbe1661ef12d8784e68fbc52738ed34 in / 
# Fri, 11 Sep 2026 11:53:37 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e339abc629cb61080e38b911ca39e9e7c6b0beb1d74e4bc923e86a3ae5e792c2`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 17.0 MB (16977372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde7587076f7cbcf9c2eca1827dd2bcb0f810ce1999ad13be8210faf7834ab77`  
		Last Modified: Fri, 25 Sep 2026 22:34:57 GMT  
		Size: 54.3 MB (54259515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b4759cf5ad51f90c066e0284615a247cab926e7e376c95c0ee306bcc83eb9e6`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c974c49e0692a41554cee963b1a3eec548ba3d5ad233b88158627f53caa9957`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:454c478eca8c81ac37c50ca4cc2742f78f0910cdf8d18aa713a575b53d1bf985
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3498989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585c3133ea96b37f4bf8ffe8e0f334c3cdd2960cee17ec81d1e88b9d95542d92`

```dockerfile
```

-	Layers:
	-	`sha256:fceb6de09a44e79198a21d29cb114382050fc804f68bebe0dacc3a0406a4317c`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 3.5 MB (3476436 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c47cdc59927e074e2c1db6712080e53d7e80a3cd283edffa6ed7cda3be0f7446`  
		Last Modified: Fri, 25 Sep 2026 22:34:56 GMT  
		Size: 22.6 KB (22553 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8-jdk-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:954e524111d150df338ec776bd1acfb24818c92a43dcbc07990b34aa9f5ffb7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105833656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce3889b36d3ccb2d752d89cfff9aa79b9e0d1de998cd1b8d61bf82d854ff93d8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:54:01 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:54:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:54:01 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:54:04 GMT
ADD file:23a54200dc45d2e165b80cd813d76a8863b2e15710bb20b738f813328f74d05b in / 
# Fri, 11 Sep 2026 11:54:05 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:34:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:03 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 25 Sep 2026 22:34:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 25 Sep 2026 22:34:18 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:a7067f7ee788cc3e90f83fa0ac84d48a200fde4469a2a5e638f059842a8f11d1`  
		Last Modified: Fri, 11 Sep 2026 13:39:01 GMT  
		Size: 34.4 MB (34376958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0dc4ca29f5ca7e294a6a894d89e44c4f2de248709545d2a44d42686c9eb9365`  
		Last Modified: Fri, 25 Sep 2026 22:35:05 GMT  
		Size: 18.8 MB (18783708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaeb50057d9b3a3e158ed4233b8f6b909016e39724eeac9c77affea6d8133443`  
		Last Modified: Fri, 25 Sep 2026 22:35:06 GMT  
		Size: 52.7 MB (52670377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1e8e4afc8a5651f531ca7ed8780f912b757e58710149747d1463425f255a05`  
		Last Modified: Fri, 25 Sep 2026 22:35:04 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a9974c7b328b1c58d4a45d68d3534c2998fbbdeae3a75a9d882667e76fcfb78`  
		Last Modified: Fri, 25 Sep 2026 22:35:04 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d241785eea4c10a40b3d597377dd34f9e61f42750215ddc385ec24df3454ffab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3500488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60cb91e08df5c57fd65834f5ab8e32f73afce21ec729e509624b91ccac8cd8db`

```dockerfile
```

-	Layers:
	-	`sha256:aa849c67c91c92911497fc97ed0f6943072f93917f57bf1f5e346c07a512c204`  
		Last Modified: Fri, 25 Sep 2026 22:35:04 GMT  
		Size: 3.5 MB (3478015 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:50757bc6f62b5523932702eb43df1b2ce7283af24725548579874fc4f19642ef`  
		Last Modified: Fri, 25 Sep 2026 22:35:04 GMT  
		Size: 22.5 KB (22473 bytes)  
		MIME: application/vnd.in-toto+json
