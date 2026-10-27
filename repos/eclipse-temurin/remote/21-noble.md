## `eclipse-temurin:21-noble`

```console
$ docker pull eclipse-temurin@sha256:ac86e53470d929299c90d00d88d914cb8194084adcfdfe9a7759040efa33ee07
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `eclipse-temurin:21-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:8b3b108b98b06013f1fb7105745b4ab128f6bdce7759206d3fa8ef9fc58e4d90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.8 MB (210845977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:850a79a648b155cc2802ac214a109f2707418645a2f1eb16b227a3f22687b672`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:12:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:12:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:12:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:12:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:12:56 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:13:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:03 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:03 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:03 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:13:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1107eb4d57a197cf92fee9346a1d1613b49bdc8354f5100f65e86b156ad9c344`  
		Last Modified: Mon, 26 Oct 2026 23:13:20 GMT  
		Size: 23.0 MB (22953033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3782cad2410fa5c87451473b779952d0e593aca4e0f71ddc7f25e7178907dac2`  
		Last Modified: Mon, 26 Oct 2026 23:13:23 GMT  
		Size: 158.1 MB (158122714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3ca24936b7e6ec34cbbde4dd5246a2c3c8839645428546ae6b16a5c78c033d6`  
		Last Modified: Mon, 26 Oct 2026 23:13:19 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99edbeddc6397d76a182d754553e69059d7aa5b70ed167e87f9c7dcaefe744d8`  
		Last Modified: Mon, 26 Oct 2026 23:13:19 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:17e9124b754678e5acd39f8ef708b1ad4e5f9d65c57f6c216353ac29342f0afd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3532476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cf191ca8834d2be32ce2d541ddc889cf0c972201e6e3cd388e9be7b16759558`

```dockerfile
```

-	Layers:
	-	`sha256:e49546662425191c9097e871a29a242182f1f1403d590daac486ca65ee57e592`  
		Last Modified: Mon, 26 Oct 2026 23:13:19 GMT  
		Size: 3.5 MB (3508518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:efc1f72a544e49042a83d1a9adcd669741eb2b9076ea5fe9bf265829e5b8fb27`  
		Last Modified: Mon, 26 Oct 2026 23:13:19 GMT  
		Size: 24.0 KB (23958 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:47d408e3a08b4e0cf7e966e891491a8a886a49ca8c0d2f79f1d3a22995ba1ecf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.5 MB (209504661 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c7de6113db9872bf81fd68e5328bfc73d71f61d610b1e277d4b89bb90f5aa4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:17:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:17:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:17:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:22 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:17:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:17:31 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:17:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:17:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:17:31 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbdb01060bf82eae120cdae1ce95bf58ae5c6d8e7506ad66ec4f127a0aac72e`  
		Last Modified: Mon, 26 Oct 2026 23:17:48 GMT  
		Size: 24.2 MB (24152176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f555f24a635d4f5be412aa51cbb6256d0d7fe35d13bd0c196b37cdc467f7aed1`  
		Last Modified: Mon, 26 Oct 2026 23:17:51 GMT  
		Size: 156.4 MB (156409734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaa88fa0cce2dc522cc0e39ab7bf28020a77b77383ec10d3019ee3b9e90b59d9`  
		Last Modified: Mon, 26 Oct 2026 23:17:47 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857ead2f7fa2de20bc65a7aa72f83546948d91bcfd5f1eac04bdf051a0122bcb`  
		Last Modified: Mon, 26 Oct 2026 23:17:37 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:57395168e948aee2ba2b96d6b37829fb11eecf31640a3f12ff717be84cb560da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3664107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d2b1344e589cadc333ad2d19bdd8d60d905b4b3779ba2410b2d2df018219f0f`

```dockerfile
```

-	Layers:
	-	`sha256:44a48b630636301b8daf2410a8f302277009663120487cf98b254ca0cce8c837`  
		Last Modified: Mon, 26 Oct 2026 23:17:48 GMT  
		Size: 3.6 MB (3640027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70beca687d98991e8489ae554d34556c2a3a9ed60d93f3808b08a909a7753cdf`  
		Last Modified: Mon, 26 Oct 2026 23:17:47 GMT  
		Size: 24.1 KB (24080 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:825e5512ff58a4c4d5d0decffb7ddff1869031f610ef724a4c6785bb6156c982
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.7 MB (216743127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fafae3dd3786354ffc1f0f475760d68ea7258f4ce92735c0a9f58ce335b9d5f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

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
# Sat, 17 Oct 2026 00:26:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:26:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:26:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:26:52 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:26:52 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 00:32:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:32:05 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:32:07 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:32:07 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 00:32:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f1756011acdb06b8d2991eb7c67214cc1050b9ad8a4caad5097db0edbf4e83`  
		Last Modified: Sat, 17 Oct 2026 00:28:06 GMT  
		Size: 24.1 MB (24077051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:910a9a3624920abcd26184accf641f6ecbce76c7384559214d7d47e78e005503`  
		Last Modified: Sat, 17 Oct 2026 00:32:51 GMT  
		Size: 158.3 MB (158285462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5bc7aca7d80da0272e4b66dbd8e81cbb8f1fcd305f535b3926a1a2c5d7c055`  
		Last Modified: Sat, 17 Oct 2026 00:32:47 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78ba0cda87f776e3585df0fb0708aea498d86db4de17da1a72c8ec60ce593e32`  
		Last Modified: Sat, 17 Oct 2026 00:32:48 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ed5c25c56e715db2e41e0e77edb1aa0dca2e00abc9e4a291f45f6388bd382333
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3580916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e36bee240fd78cb915f968cf78045480589de83e2c330c2ecb4f215189d77f4`

```dockerfile
```

-	Layers:
	-	`sha256:292571b1c192473e512976143700d6b200350259dbfc914b9b23cf3c1923bbeb`  
		Last Modified: Sat, 17 Oct 2026 00:32:48 GMT  
		Size: 3.6 MB (3556916 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da258c7801a64a4cc4a4005af4263181c9c383e6abf9d399d5979d2288a73388`  
		Last Modified: Sat, 17 Oct 2026 00:32:47 GMT  
		Size: 24.0 KB (24000 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:029c8feb3a6c693af3698f7d92eb1e7a2526e5dd40be19b3aee9c4eade86dab4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.6 MB (208576390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:452e92586e6b7fdecc646f8ac4df5e5b8d3515f5b9aa09fb5730373cb88df68f`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Fri, 02 Oct 2026 08:25:26 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:25:27 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:25:27 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:26:13 GMT
ADD file:902c2a17706a401d4186db6f76d930ee8d9bfdf11a18905ad7b4475895533666 in / 
# Fri, 02 Oct 2026 08:26:17 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 15:37:16 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 15:37:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 15:37:16 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 15:37:16 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 15:37:16 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 15:49:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 15:49:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 15:49:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 15:49:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 15:49:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:6ac3b4459b1cfc53476c9bca2bcbbd91ffee22c902b3d5791e258f4a99455cf0`  
		Last Modified: Fri, 02 Oct 2026 08:36:44 GMT  
		Size: 31.1 MB (31052636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd7b3e71979955f62734f1ac555d87c5c3461c52d973d5526b6c444e033b3ac`  
		Last Modified: Sat, 17 Oct 2026 15:42:17 GMT  
		Size: 20.1 MB (20128575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:293cb12fb515765ae43ad4a413bd137d2716d602f1bef583bf799c40f182e123`  
		Last Modified: Sat, 17 Oct 2026 15:53:38 GMT  
		Size: 157.4 MB (157392554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12032576b2519ced3c00833a4787189704ba36a0efa54753248edbefc5a2ecc8`  
		Last Modified: Sat, 17 Oct 2026 15:53:15 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3970226d39f7d86be41829ad95941d149c9440cf604de1564cde3e2cb37eb7e`  
		Last Modified: Sat, 17 Oct 2026 15:53:15 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:ba2e5c33d676d983a98f7bea8500bc88f8b2537b8554e2618b8c301609d7d7c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.6 MB (3640391 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fd4879a3b0abee9140452594d1e5fbaa11939ed784009cae5c9e360daff5003`

```dockerfile
```

-	Layers:
	-	`sha256:fb50746a12576ecd3af60756652d15c688880645c4582aefe8f313507ea7efcb`  
		Last Modified: Sat, 17 Oct 2026 15:53:16 GMT  
		Size: 3.6 MB (3616391 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:378d2134d098fb2b343f6e45dd241e78bd92386f5eec1f7efb50d4c4d0ee7e56`  
		Last Modified: Sat, 17 Oct 2026 15:53:15 GMT  
		Size: 24.0 KB (24000 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:21-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:1fbc0e8c2790f990eb9370f3184e4a2fb6830fdfd8087dce89908ca24658fe90
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.4 MB (199407622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:103d4382397607974b053bf5ab2ec0671e46264b83e44621cc1e4fb04743ba38`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:40:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:40:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:40:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:40:09 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:40:09 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Mon, 26 Oct 2026 23:40:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ce79869e1307ed8ee1e2baa86a412b1eb5b75d10a01006d788a6f968bcfaee94';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='23e37e026f12f3e706f18938ff611db3032d075b09d0879a25d06718c773e223';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='042482fa372f12741ceb721397e277b4e69672182aaa45a1bf7af55d9ba876d6';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        riscv64)          ESUM='e6cac9a9f74a001bd21644461697be1ad0d06c9c69076b51984dc9f3b1bb2478';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_riscv64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='806bb29b0d408eb6312cda0a1e756bc91e554ef9ed6a5863f6004e502f6c789a';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jdk_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:40:19 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:40:19 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:40:19 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Mon, 26 Oct 2026 23:40:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b31eeac690d9e720d87470087fc7e7a96181727a27cf11395528de4629667c`  
		Last Modified: Mon, 26 Oct 2026 23:40:48 GMT  
		Size: 22.1 MB (22101737 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1145e7aa5d87adb69cc3d4c78dc397d969fcd1e6432553c37f82f01f8ceba763`  
		Last Modified: Mon, 26 Oct 2026 23:40:50 GMT  
		Size: 147.4 MB (147356210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83112b5ca780679d662f1c64dcdee82113668a39f44f27126c3f8879e96ebcd3`  
		Last Modified: Mon, 26 Oct 2026 23:40:46 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e587cdfbe702757e3520bb788d06fe0c0db99881dedfb159ea21a91775909fef`  
		Last Modified: Mon, 26 Oct 2026 23:40:47 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:21-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:988a244b0cf497f9b4da7ef3b9d5603d5b4b029637728b9a1d92e45d8f6829ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3478287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:372be7d340ff6f2f14077d2869164f88b8d69c106e4e7de525de1b3e54970ba5`

```dockerfile
```

-	Layers:
	-	`sha256:556909ff207ab2dbb1edf451b0fbb3c7a31c4d95af64be09bce46e330f54cccf`  
		Last Modified: Mon, 26 Oct 2026 23:40:47 GMT  
		Size: 3.5 MB (3454329 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eff60fe6dce6c9e124a1bac14d132a94e51fc1420243f609ae8c18785a36230f`  
		Last Modified: Mon, 26 Oct 2026 23:40:47 GMT  
		Size: 24.0 KB (23958 bytes)  
		MIME: application/vnd.in-toto+json
