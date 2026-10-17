## `eclipse-temurin:8u504-b01-jdk-noble`

```console
$ docker pull eclipse-temurin@sha256:30875dc74fbba9949689e87e62981c5361beb2baa578e85f6b8508b49f8a7bf7
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

### `eclipse-temurin:8u504-b01-jdk-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:8c45b8f29a44d1dd46baaf99871d88702fc0e07bd97319f8f79f7ebd4eda0913
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101930293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d46fd680b1cab2169ab936e27d9671b292dff0709c64811cd9a23e00a4c30d05`
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
# Sat, 17 Oct 2026 00:17:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:17:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:17:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:17:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:17:13 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:17:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:17:17 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:17:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:17:17 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f690466b0febbee85478210e77133594eb1a0e623684dbc1e03e97bcedf216e`  
		Last Modified: Sat, 17 Oct 2026 00:17:28 GMT  
		Size: 17.0 MB (16967871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82440ba21db648d604536db0c094412a6501c1a55f0a3bf7a09656ca933a7e33`  
		Last Modified: Sat, 17 Oct 2026 00:17:29 GMT  
		Size: 55.2 MB (55194049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01df4cd84e90e27a1df6d251e1f3a57f5fbc82afce2a3100cc4d69e24dd21ed2`  
		Last Modified: Sat, 17 Oct 2026 00:17:28 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b302d6e84b5e0d7da69e28f2070a2d2981d3ee202b322a2fc953d142f78f658`  
		Last Modified: Sat, 17 Oct 2026 00:17:28 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:feca061d802f29d2cf2dbabcd16d157191c49e6b2ecd5eebc1c16d6c8ada58f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3497714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d09fd07273e075ea8cd0f9ceb8139cfd0784d7d061757c748ee30fb788ec5386`

```dockerfile
```

-	Layers:
	-	`sha256:17bf7f03592578488320dd03a22eb822bae7127ddba9bd1fdd8bfef3a1bcb97c`  
		Last Modified: Sat, 17 Oct 2026 00:17:28 GMT  
		Size: 3.5 MB (3475283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:78eae5536acfb2dee60f0f639ab159c6569a524b35ca287e61023d304af138a4`  
		Last Modified: Sat, 17 Oct 2026 00:17:28 GMT  
		Size: 22.4 KB (22431 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-noble` - linux; arm variant v7

```console
$ docker pull eclipse-temurin@sha256:9e2d1959355bcfd49bf27597ffdc0e71f749d642d74ffe24b96fa6e1da86c3cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.7 MB (93724561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ca0f3af7f3613f52a81f143682896dfdf87f5ed4e101127efb2ce24a83c1ea`
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
# Sat, 17 Oct 2026 00:12:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:12:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:12:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:39 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:12:39 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:12:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:12:49 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:12:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:12:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:cfda03319c73b24fb02c0806fdf981abb07b3d5025d2e7c9710f93347cee3d4d`  
		Last Modified: Fri, 02 Oct 2026 08:36:29 GMT  
		Size: 26.9 MB (26896728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7519e293ee0658261f844c0af1aeab5d12bcc89c521ed5fd5d9965323db23e`  
		Last Modified: Sat, 17 Oct 2026 00:13:01 GMT  
		Size: 16.3 MB (16285832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b206fdc7183181c41ce93fd593e07f114ecbcb40f09541856627f68cba157863`  
		Last Modified: Sat, 17 Oct 2026 00:13:02 GMT  
		Size: 50.5 MB (50539386 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7faa9c4f016b1779d2e43f56fed9bb38c8f623c1f0c5a5676587aaac11bd77`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610d2cb853d0782fa35f9ee529e0e973ee8951302d4adf9aba7858a4a1fbf688`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:95e99e35db9992cfd6816476d11cb1f6ae77a55937cb32bb1ac56a81c321966e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3501792 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5907cefd929efa38a2cbc4853fa4052159d8efe118cc4b21f6f10effd1cb0a6`

```dockerfile
```

-	Layers:
	-	`sha256:2eebcbfd6fd89e79960687b1eef2e6937a0a3f26b2b5993e91790c8564bd61c7`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 3.5 MB (3479263 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c9cef48817609c61a853c5cbbee935e9cdb510b34d590021df6cf325700a8e4`  
		Last Modified: Sat, 17 Oct 2026 00:13:00 GMT  
		Size: 22.5 KB (22529 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:c96e73424fe819dddcc47a0bab64598ab6dd9af920f3044865cd16a67c720a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100179384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf5978dd1d36669494ef313908c83dbd5b0de4eb2a968013b7c8a7587e18ea2e`
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
# Sat, 17 Oct 2026 00:17:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:17:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:17:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:17:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:17:19 GMT
ENV JAVA_VERSION=jdk8u504-b01
# Sat, 17 Oct 2026 00:17:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:17:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:17:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:17:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d06d82922ccc59272876c4cacb1fb1f96e019f85cd627e66ee8cefa4fc525f`  
		Last Modified: Sat, 17 Oct 2026 00:17:36 GMT  
		Size: 17.0 MB (16977492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea248e32bd11297c81224937758cddafdae4a3c5f382a5baec06f024e0bb57d1`  
		Last Modified: Sat, 17 Oct 2026 00:17:37 GMT  
		Size: 54.3 MB (54259516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698edd58160af79bfbf584e79e2ad3e2a72cee875198ac012692360a887f9b92`  
		Last Modified: Sat, 17 Oct 2026 00:17:35 GMT  
		Size: 129.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583b6e1f50232268192b51df02589bcb348734e40c6267a9563d540e17687149`  
		Last Modified: Sat, 17 Oct 2026 00:17:35 GMT  
		Size: 2.5 KB (2486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:62ffd2336ae3cc295d8724ad6cb5e452f7e74aad340ffd1f6945c1cf0fb1ed5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3498994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4ca03e8d997213d899ad7039c01e614e4282a4cfbb8fbec07684dc4c226abd9`

```dockerfile
```

-	Layers:
	-	`sha256:d049e2155a64cf1a227f3b90f6c368b6824a234cac93b6fe303c4a68ae03d2df`  
		Last Modified: Sat, 17 Oct 2026 00:17:35 GMT  
		Size: 3.5 MB (3476442 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09328bba71eb76177481ddd24e8615ccf26f3c60a4497821931a9e9f6b9e5774`  
		Last Modified: Sat, 17 Oct 2026 00:17:35 GMT  
		Size: 22.6 KB (22552 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:8u504-b01-jdk-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:93064af180b8b731ec392d2df6c7fe94263c04f943a1456f0d7bd763893cd1c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.8 MB (105836719 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4562cceebd3f5823fd47b8b43950b51991585d7e307455240c5c52c7deaaa2c7`
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
# Sat, 17 Oct 2026 00:18:15 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9c70e102f527ac674ac2fe9c7d47b9a04e2d19842ba5ab8e9b33f368bbadfaea';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_x64_linux_hotspot_8u504b01.tar.gz';          ;;        arm64)          ESUM='57b7ed8af9d48542bb49ff7894448040b17bea0a48b41677d11ecaec6129768d';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_aarch64_linux_hotspot_8u504b01.tar.gz';          ;;        armhf)          ESUM='b3e720d6515ec36b7de8a885e7e59a9b41968038644167aaff9c88d98b5e2aa7';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_arm_linux_hotspot_8u504b01.tar.gz';          apt-get update;          DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends libatomic1;          rm -rf /var/lib/apt/lists/*;          ;;        ppc64el)          ESUM='9ab4f48f91c5e140c732cef76a332989aeef9df7a19b2436de7833ef9d7d8960';          BINARY_URL='https://github.com/adoptium/temurin8-binaries/releases/download/jdk8u504-b01/OpenJDK8U-jdk_ppc64le_linux_hotspot_8u504b01.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig; # buildkit
# Sat, 17 Oct 2026 00:18:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "javac -version"; javac -version;     echo "java -version"; java -version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:18:17 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:18:17 GMT
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
	-	`sha256:ad7bb9c3c62f6bba0f2a2eef1cb7a79841de73c724b8f9a801fddb5f3c39881c`  
		Last Modified: Sat, 17 Oct 2026 00:18:59 GMT  
		Size: 52.7 MB (52670277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f5395dcc20c57c4cb8187fd4af1e60d0ed21fd4a0ac6fcbd317830eecc8541`  
		Last Modified: Sat, 17 Oct 2026 00:18:56 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676d33c04c20b3e77ec2aaa6059aa8040f1347b0927ed59963ed0f28fce045e9`  
		Last Modified: Sat, 17 Oct 2026 00:18:56 GMT  
		Size: 2.5 KB (2485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:8u504-b01-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:5376b37d0ebe03fad2f8c4fff7170c2dddad61bef036b2d5508dd8e4e8d05734
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3500494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4edae0a258208a9c834490b2387fb9828c31b35905bc8b4e354ffc2991f73709`

```dockerfile
```

-	Layers:
	-	`sha256:94afd49d0f9b86cb536580f37f2418e36b26ff228de2c780fe30468ba7a940ce`  
		Last Modified: Sat, 17 Oct 2026 00:18:57 GMT  
		Size: 3.5 MB (3478021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:156194f7dc71a5af081d6afcd01858ba81185990cb95f54d560ab2e83661dbbe`  
		Last Modified: Sat, 17 Oct 2026 00:18:56 GMT  
		Size: 22.5 KB (22473 bytes)  
		MIME: application/vnd.in-toto+json
