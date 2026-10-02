## `eclipse-temurin:8u504-b01-jdk-jammy`

```console
$ docker pull eclipse-temurin@sha256:6b9ac13b81ad84972b12836cc6daad01a3ea428ff56ee8d89a2d30338fb81fa2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `eclipse-temurin:8u504-b01-jdk-jammy` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:32733e308c91c4cde5f003e37c3def82bb931e0242bf4062cfa45eefe3814df2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101062373 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76026704059b2db01997500a0f26d603943533ac10698e27cada9ad69415b4db`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 02 Oct 2026 01:17:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:23 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 01:17:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 02 Oct 2026 01:17:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:17:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:17:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04554394ac477b50174eaac591344e0ebed72cda3dee2a3754179f5386f434a9`  
		Last Modified: Fri, 02 Oct 2026 01:17:40 GMT  
		Size: 16.1 MB (16114143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8d4566a561e064f277e727ed5e69c2a651bbf578c8c242691198aff5fb1b66`  
		Last Modified: Fri, 02 Oct 2026 01:17:41 GMT  
		Size: 55.2 MB (55193990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09014cf089e2d55c338edec2e2fd2d7a02a5b41b034292cd446dacddfa0534fc`  
		Last Modified: Fri, 02 Oct 2026 01:17:39 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782835a1524cbdcfd9f25fdacec224c357ec3b028e5e4890a74099b09325765c`  
		Last Modified: Fri, 02 Oct 2026 01:17:39 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:09b227d66eff7c5df8b47d4faab67c3527b2ddd79b5f363d2d0bd8a6a6a25998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4094227 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba0ad4ec9eb0932a622d04c9af95fb1e096f3645c51201c65f02ba2456f7ecfa`

```dockerfile
```

-	Layers:
	-	`sha256:cb02f2837dced2606c224f20765cfe07f7e5cf8e31e69c12f2511844eeb68d97`  
		Last Modified: Fri, 02 Oct 2026 01:17:39 GMT  
		Size: 4.1 MB (4071797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6a78134c356211da095a78047b9bafc1f7b50bd2519844be773f710b2b1c26f5`  
		Last Modified: Fri, 02 Oct 2026 01:17:39 GMT  
		Size: 22.4 KB (22430 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-jammy` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c1f25993945d12c6e0f929caa95be4c57ed1a3a8152b717b70f10326a9109aea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.0 MB (97994667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a33b35190b522c733e9327d7c260bcfaa0dc359c7c9aa5a26d166d8f80ec395c`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 02 Oct 2026 01:17:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:10 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:10 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 01:17:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 02 Oct 2026 01:17:15 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:17:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:17:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f914d5b6735e86ff8985f0abc56a5ffe5b1bb58d6bda8ba74cc9f4dae03d9bb`  
		Last Modified: Fri, 02 Oct 2026 01:17:28 GMT  
		Size: 16.0 MB (16048412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb37dbd5c3d1c7f8c0d09ed02124d7a72125057bc2a70b4bdd50177b32dc8716`  
		Last Modified: Fri, 02 Oct 2026 01:17:29 GMT  
		Size: 54.3 MB (54259508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00f526e4e2ba2af2d496ea20fa25941edb2a0fae8a40ee01b863d93241ee5ca`  
		Last Modified: Fri, 02 Oct 2026 01:17:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9376c6f86ba532be6ec0d36a5f78c6b4be05f259c7e74672819a5d39ae0d3cb1`  
		Last Modified: Fri, 02 Oct 2026 01:17:27 GMT  
		Size: 2.5 KB (2484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:baa76f612c19fbb0c9a4de36f97270370f13275ce9e6c47bbec1046e7df72509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4094716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6736c78565a55114819f0259014184e160dd08c8d0a016b82de2c37e539d421`

```dockerfile
```

-	Layers:
	-	`sha256:c2a6870eb85c0667ee7d6529dd9478243ee77214f489afa6c0687f9311e631df`  
		Last Modified: Fri, 02 Oct 2026 01:17:27 GMT  
		Size: 4.1 MB (4072165 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25f4893b9b8629636a50f56be2118a04e7aa8c8d2a654985a4d30a2b387ee017`  
		Last Modified: Fri, 02 Oct 2026 01:17:27 GMT  
		Size: 22.6 KB (22551 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-jammy` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:18ea9e0f532984a1a7ee6f5f5289d13c70b2f43a2f237d8f4fb594c049b59c8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (104970130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93d05af1501583599dc717a1cd952f8a7b06ab9d09038cee331622935f21955d`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`

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
# Fri, 02 Oct 2026 03:34:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:34:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:34:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:34:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:34:32 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Fri, 02 Oct 2026 03:34:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Fri, 02 Oct 2026 03:34:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:34:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:34:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:4ec38ea96fb6e9976b5659ce60f9385aeabcf358353540676f8685df8f5439db`  
		Last Modified: Thu, 24 Sep 2026 23:36:25 GMT  
		Size: 34.7 MB (34703208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0293deb3c1983b9215d56b486798d88bc4f16eb2bd51413c759d76cb73436437`  
		Last Modified: Fri, 02 Oct 2026 03:35:09 GMT  
		Size: 17.6 MB (17594211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3db0a855dfc62887b4e8671a5d63cbcf34d319134c0c5bdac80d9360071244fd`  
		Last Modified: Fri, 02 Oct 2026 03:35:10 GMT  
		Size: 52.7 MB (52670098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b02072c7125473346547cc6b65b351cfbc6b6af028dc1838e0710b93c98eb43`  
		Last Modified: Fri, 02 Oct 2026 03:35:08 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2744bb7990efd91bc3dbaa08f3db67eb0fa655a4f76b6b04c03df41f93b17c17`  
		Last Modified: Fri, 02 Oct 2026 03:35:08 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-jammy` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:eddebdd59bf2b56609a09c217108423ad8ad4c225762dd916191e7b640ca10ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.1 MB (4097025 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0999f654a7e3a742e3080291c76bdbc74986ebf793cc4e290c239a12379e7ed`

```dockerfile
```

-	Layers:
	-	`sha256:6d94995e7319b7844d5ce1ee2eda38446926c32af47323e7de1eec12080ca4bd`  
		Last Modified: Fri, 02 Oct 2026 03:35:09 GMT  
		Size: 4.1 MB (4074552 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:477ce64ee5d9b9d825df179856b391e618a1bf6c0b71c7efdc41a979d7bf999b`  
		Last Modified: Fri, 02 Oct 2026 03:35:08 GMT  
		Size: 22.5 KB (22473 bytes)  
		MIME: application/vnd.in-toto+json
