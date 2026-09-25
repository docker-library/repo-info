## `eclipse-temurin:11-jre-noble`

```console
$ docker pull eclipse-temurin@sha256:43713efb0b2e10c88a310868e41ff7b2796f46c761d919ca862975e495cbc3d7
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
$ docker pull eclipse-temurin@sha256:b4cdaadb96fa436a33e8f1f31272a5b023321cec178ea92ff07d825d2e27f7ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.1 MB (94069802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f453191c1d4b6cda6afc4d2b5459c8d9c7166e365af695fab932716c1b515a`
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
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:05 GMT
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
	-	`sha256:88d7577eb55fcb12329232b2d364b3f605d5ba932671ced36a30cca0cb308944`  
		Last Modified: Fri, 25 Sep 2026 22:36:17 GMT  
		Size: 47.3 MB (47336059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0577d506e23443d4beebe5bea9e99e0d7403b240d5fee559c130f9a754435ea9`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ebc1cfea865cf2ac2b3e11d6b5957c52861b06cd043b714cfeb9320dd5522c4`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:79bd048e8bdabaf84dae260fd9cdc9c401f854678a2a3f7aee6e03aa9e961f75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3305500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a80a67448f321c679475005cf03186e138719db0d03f496bab178ec8aef338e`

```dockerfile
```

-	Layers:
	-	`sha256:357b00dffd74d524c4e6f4d3eae8daf44623d87bbc9f4206463354de366b17b9`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 3.3 MB (3282947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41d9f1cb0bf22b9ee1a3287dba8133fd91972626fe6ea175312e54ebe948e831`  
		Last Modified: Fri, 25 Sep 2026 22:36:16 GMT  
		Size: 22.6 KB (22553 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-noble` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:8e7b5aa0c546faa2e9be54b702665378d0df56bf8074584e64edb56696c75710
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.6 MB (88625467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f321fb2c1f0e216da986c67565b990aca0ac016384fa5075db9429f5c4429090`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:45:45 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:45:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:45:45 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:45:48 GMT
ADD file:683b4c146da2addbd0ae70d2240b8e3a57dd2f7582c952d416231fdd6496720f in / 
# Fri, 11 Sep 2026 11:45:48 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:29 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f98fce276933dc8d40e338c8a5447d14e10d972c731f074e9fcd9f9bb629aa50`  
		Last Modified: Fri, 11 Sep 2026 13:38:53 GMT  
		Size: 26.9 MB (26894925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f8968b01ba18649072fa4a64d227ab4038e1ada70e60676624f76d6761b9a0`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 16.3 MB (16283738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1511597911fd4e0a3b5f26f717b4d89e2da1632f8d6412119f2928a81f8d102d`  
		Last Modified: Fri, 25 Sep 2026 22:35:45 GMT  
		Size: 45.4 MB (45444181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e64ec88cd231539d78d11753cedb1e37749613071437c4f08be35935417dde`  
		Last Modified: Fri, 25 Sep 2026 22:35:43 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009e2287f1af12edf8cf61ad50f946773d13cef17207ba3009bb0d48d92cdd3b`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:aa7dae6f049e0058515e223dcdc5f750aed64f7d77be863797165d3bacec8387
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3309174 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:870b5088abae5d0f646a85f1f273868610fcba2d311ccfee1ae18f060b579e5a`

```dockerfile
```

-	Layers:
	-	`sha256:bcb42bce24c2e64dd3c0c3418be581e0582daba66711345410357dd433787504`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 3.3 MB (3286531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8227b578364809bb280ff119e70dccdf05c1822f6903af3fcf898997c536256`  
		Last Modified: Fri, 25 Sep 2026 22:35:44 GMT  
		Size: 22.6 KB (22643 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:1045fff09342f7ca0700fa03d6505af142d707de277fd66c6b85a28e1d6d2e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.6 MB (91561829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb55d7c127bac0ebdc781aa857bdc8f325b1c432cbd9010fef3568c015184fd7`
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
# Fri, 25 Sep 2026 22:34:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:36 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:8a38824eedc553ba80cf1eb7df278a003340f7409fd4b9002bce07db8840a9a2`  
		Last Modified: Fri, 11 Sep 2026 13:38:46 GMT  
		Size: 28.9 MB (28941580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfbb616b2d1efdf3578f7daeede7ef8ff04418477ab2679ec203cc9dd2051661`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 17.0 MB (16977396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff0454d4ddb06252a60b0a228139a983578030ce9f1126ce9d5f7e103fc8b6af`  
		Last Modified: Fri, 25 Sep 2026 22:34:53 GMT  
		Size: 45.6 MB (45640229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35668e93a7a2dec90159bd7de1fea312d21e75871eecff8b8797cfdfb2941d4`  
		Last Modified: Fri, 25 Sep 2026 22:34:51 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983fdc5f52ea32fbbaea1aeda1874fb465182868e5c45af4e4b7ff4652756b5b`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:4736be341f4156af2e760181b0ac75e3ed78bba1ce5a640ecd25f26cbf18ffb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3306675 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c0bc6e6db7cb6b536c6420cbb921e3cdd238123308e89de7e502e9b44ecc4e5`

```dockerfile
```

-	Layers:
	-	`sha256:4797291251ea86dd13c178fc09cdcc2c32199df084a4feb3e3a0124e5e4994f0`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 3.3 MB (3284012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:80bd6b37e34be007ee8098ac752605d0d94db9ea4cdf35eef1ee5470e62b62bd`  
		Last Modified: Fri, 25 Sep 2026 22:34:52 GMT  
		Size: 22.7 KB (22663 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:63cd2ad01d2fbb97f7bfb41890a47451c977c4dc4c8372863efddbbebdb9cfa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.0 MB (95962624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca75e53e79c5aa78d513bc7b8ea1758b624b1aeed2544ac0a41580e1d039ebef`
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
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:43:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:43:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:43:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:43:13 GMT
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
	-	`sha256:9adb0a8ff652f4fe47b0a602483bbc2c80610463f9c8b49c4decfe9fbb96f087`  
		Last Modified: Fri, 25 Sep 2026 22:43:41 GMT  
		Size: 42.8 MB (42799333 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5313aaf3437f9172fe5323e9fd63cc91319df0f0bb88d193296ef2df26ae6f9c`  
		Last Modified: Fri, 25 Sep 2026 22:43:39 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7c8bdc463488aae70e472fdf11e7f723e53bef8bbec7331409486017f18589`  
		Last Modified: Fri, 25 Sep 2026 22:43:39 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:d7391cb5ce602f541b0ba6b552a015a419c84edf72d10628db78ad91a43f28fe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3309598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:478cd73362f730dc57056726d8ab236971ec6326167fc7303557de4a9cbadb7a`

```dockerfile
```

-	Layers:
	-	`sha256:84e2375072389860920871cff1d23c0eb4a5ca089e8a68ee004477cc90d82009`  
		Last Modified: Fri, 25 Sep 2026 22:43:39 GMT  
		Size: 3.3 MB (3287009 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:933d257ca25fcb59ac792d90b934a28295e0470ffd5d9cd6881958579cd70b62`  
		Last Modified: Fri, 25 Sep 2026 22:43:39 GMT  
		Size: 22.6 KB (22589 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:11-jre-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:49169e308bade970286a8bc7bc9562517f38e13cfc476f1c3825a727b1d831fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **88.9 MB (88852488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ae2b7360d51e5ec53739098542863f0fe7f5237e504ea455cf33fb27c169bd`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

```dockerfile
# Fri, 11 Sep 2026 11:53:08 GMT
ARG RELEASE
# Fri, 11 Sep 2026 11:53:08 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 11:53:08 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 11:53:09 GMT
ADD file:62feb922e0e5d063c128e1d59ecbc5c2274c804b45055ac83d490a0a0c953700 in / 
# Fri, 11 Sep 2026 11:53:09 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:33:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:33:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:33:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:33:18 GMT
ENV JAVA_VERSION=jdk-11.0.32.1+1
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5eb6cf7f45c623272c64b8e7b4934a8051abb7ae73bfd28488a9856da3f4848a';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_x64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        arm64)          ESUM='0125e0d4911b9d7b11c6268cdf365a263f4794fd923d482e1b1c01b07a68b8b5';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_aarch64_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        armhf)          ESUM='44b9c5d95a95c81f96c857212e8b035bcc6c92d5910b7bb2c8b8b0b24d4f09ad';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_arm_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        ppc64el)          ESUM='c8540b0a3785587646cbda7394a47bbbb43a3226005321db9d17c2f772f828b2';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_ppc64le_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        s390x)          ESUM='2095edca2f5f46413959f94e1e613f778e7287c41732a6164433cd872aa98aa8';          BINARY_URL='https://github.com/adoptium/temurin11-binaries/releases/download/jdk-11.0.32.1%2B1/OpenJDK11U-jre_s390x_linux_hotspot_11.0.32.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:34:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2d1aac92a29a4eacd140d431dc526f6da099043772d537d221717429ee877b2a`  
		Last Modified: Fri, 11 Sep 2026 13:39:18 GMT  
		Size: 29.9 MB (29945392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9940722e4aa6a0f59106fc47c1516a9e4898f63e8bc8012c418c802b18224b1c`  
		Last Modified: Fri, 25 Sep 2026 22:33:46 GMT  
		Size: 17.6 MB (17557112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11760ea4994341de0f76bc09d3c917143cb4b4f98d226b6468226716b61af819`  
		Last Modified: Fri, 25 Sep 2026 22:34:32 GMT  
		Size: 41.3 MB (41347362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104d0060e1f7d8443ed5900208224705b4808b9596894166b98d41ac82e5f6fc`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0202b7c2389d4d418e5a877589086dc02915da0dac5112280ec0d8c0d5ea6b1f`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:11-jre-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:625860226101051830180c1278879a61609bd8e5f686a144ba0d327306ff2a8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3307706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b55840af425f445c7ad97a23fa18de8d993d8884dd774bbda2cac86832f491d`

```dockerfile
```

-	Layers:
	-	`sha256:353cd408d25304e62c0565d0494b0c9138b258ed1bbf373300a905ec44651b74`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 3.3 MB (3285153 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7ba9a4498830e5f99bf6a12ec033bd756b7a33f1cb792e93523073cba3dc7df`  
		Last Modified: Fri, 25 Sep 2026 22:34:31 GMT  
		Size: 22.6 KB (22553 bytes)  
		MIME: application/vnd.in-toto+json
