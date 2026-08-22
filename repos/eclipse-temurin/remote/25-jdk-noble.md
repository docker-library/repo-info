## `eclipse-temurin:25-jdk-noble`

```console
$ docker pull eclipse-temurin@sha256:534968c051301957beae735e7ba1db54d99ddecf08746d3b9d4f318cc132dbc3
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

### `eclipse-temurin:25-jdk-noble` - linux; amd64

```console
$ docker pull eclipse-temurin@sha256:955c8b94714bc2b5dba5f741bb3b65017287c66fe8d5bf0537e65031a16266ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.9 MB (139928929 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcbd63a41bb61957fd4370a6ab4f110413425c20a9a0b6cfab424df86ee336d9`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:01 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:26:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='c6a70ed1ebe5ff66614f71fa9070e26d5b21587f576a8cb4f818269f4f475191';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:26:15 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:15 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:15 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:26:15 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89416f64c8e9817cfdca36b79a04f5e94a3fca98dded5b18661b2e802da686d2`  
		Last Modified: Fri, 21 Aug 2026 18:26:30 GMT  
		Size: 17.4 MB (17422331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbdaa7f21d487921eaea2bb7a5149fffa98b1cdbac6ceee73127534d99d7b29f`  
		Last Modified: Fri, 21 Aug 2026 18:26:32 GMT  
		Size: 92.8 MB (92751295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:297337c1dc1397d1a537e0b4b022cffc87169a7daf1dba702b73b94279d76df7`  
		Last Modified: Fri, 21 Aug 2026 18:26:30 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:e7389982f29f30f66d4aefcd1a04922b5feb28e51329151e6b4b6a762f2bf59d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3270731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe01f345a1d82bf92bba8703338fd4e6abcdd291a8f301ec8ae17f689a6579ff`

```dockerfile
```

-	Layers:
	-	`sha256:3a7e50f8cd1b4918ba6298b80c7030fb0827dac882076a71b8f8085b2c75e942`  
		Last Modified: Fri, 21 Aug 2026 18:26:30 GMT  
		Size: 3.2 MB (3246304 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa89f510212baaf296c6fa3619a6041d520a632a392cd388a7203a69d703c2e2`  
		Last Modified: Fri, 21 Aug 2026 18:26:30 GMT  
		Size: 24.4 KB (24427 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-noble` - linux; arm64 variant v8

```console
$ docker pull eclipse-temurin@sha256:6376b978d0285693886ceabca245656bd90676363b6523ed5a5d8dbaac33e7db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **139.2 MB (139151885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e50021b3e2dd28e81c1aa8c0cf27ade21651512e3e58e69f939573c04d793ecb`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:29:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:29:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:29:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:29:04 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:29:04 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:29:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='c6a70ed1ebe5ff66614f71fa9070e26d5b21587f576a8cb4f818269f4f475191';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:29:22 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:29:22 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4130e74fdffd4a1588445f2dd8759c94346b4a0fa0cb245236bf17b635012367`  
		Last Modified: Fri, 21 Aug 2026 18:29:40 GMT  
		Size: 18.6 MB (18610178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b2f70fcc80d6d138df39b5b1c4d2cb4856001c9c3e83bf300f2682cec22991`  
		Last Modified: Fri, 21 Aug 2026 18:29:42 GMT  
		Size: 91.7 MB (91651975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2434e3d8844317a4d87258496ce61c78d34bf5ea5a4e180449b84a5e3c7fde11`  
		Last Modified: Fri, 21 Aug 2026 18:29:39 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:729dbfbe4e0f7afc403003667a65e765cee1c3317ff7ea692cdf1e4b1b6450b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3402339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8a7b72df88b8aa3984841347307b3eb5fc27dadf9b88168e226f12a57170f4c`

```dockerfile
```

-	Layers:
	-	`sha256:25c4ebff58c7b7a23f8181f9aa9ce89117b7003396409ed5b3ad3e5dc533ad56`  
		Last Modified: Fri, 21 Aug 2026 18:29:39 GMT  
		Size: 3.4 MB (3377791 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da93c72d5770996d66a1a064eb077eeaaf4cb606e8913299300d77a929abc9fd`  
		Last Modified: Fri, 21 Aug 2026 18:29:39 GMT  
		Size: 24.5 KB (24548 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-noble` - linux; ppc64le

```console
$ docker pull eclipse-temurin@sha256:d8c48bbdfa33403c000bffa41ebbe10927f23deae30c0e14d4eb52c987460a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.0 MB (142999050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c3253bd179dd7eedecd6967a705d1417af9862e4c8601ee2f196c9de8cb8fd8`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 21:17:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 21:17:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:17:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:17:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:17:19 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 20:45:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='c6a70ed1ebe5ff66614f71fa9070e26d5b21587f576a8cb4f818269f4f475191';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:45:06 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:45:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:45:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 20:45:06 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c87aa8f65b843a859d60157ae73c331b0e1d9e5a2e44cbfb0dae52866a2e7aa`  
		Last Modified: Wed, 19 Aug 2026 21:18:30 GMT  
		Size: 17.3 MB (17288209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab48b9f46b18c013a1c6cbb0b67198402f5b7aa52df06eca53b91d5a8e3fb822`  
		Last Modified: Fri, 21 Aug 2026 20:45:45 GMT  
		Size: 91.4 MB (91397149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3debb0bb7a5680b1baef23e06f2f1bb5560c1156e612897f6b1215726f9c28f`  
		Last Modified: Fri, 21 Aug 2026 20:45:43 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:1b5d5cfe6a2ba8ef90f7f75908c47035977a8020f8fbb8340b171a6cf32145bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3301692 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e2e7466e67b9f66f4161174093c1c8c76af8c60b32a850ff6200c892a65035`

```dockerfile
```

-	Layers:
	-	`sha256:145f75041cea9d4562161da0b7fe078a784472c53674585c46bcc7f13918c4d2`  
		Last Modified: Fri, 21 Aug 2026 20:45:43 GMT  
		Size: 3.3 MB (3277223 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b019a47ad13ac2d2b1cb58b9e539e9a12fcfa2335e44e1c1f919a9f3b9ef16b1`  
		Last Modified: Fri, 21 Aug 2026 20:45:43 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-noble` - linux; riscv64

```console
$ docker pull eclipse-temurin@sha256:28f56edb0a36b3cbaf69ccbfb113a0f8e5e80112d769616fb1ebe9961e92c2d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **135.9 MB (135939857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9f44f5fd29a3fe1f6a66936415fbd6ce2182a8d992ed10a7d415b6af1f6c084`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 14:15:49 GMT
ARG RELEASE
# Mon, 17 Aug 2026 14:15:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 14:15:51 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 14:17:04 GMT
ADD file:337a123e95e711614eff11fd53aa4a84d1e090961d0511f1605a70ac7c33d46a in / 
# Mon, 17 Aug 2026 14:17:10 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 00:39:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 00:39:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:39:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 00:39:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:39:27 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Sat, 22 Aug 2026 14:43:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='c6a70ed1ebe5ff66614f71fa9070e26d5b21587f576a8cb4f818269f4f475191';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 22 Aug 2026 14:44:00 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 22 Aug 2026 14:44:00 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 22 Aug 2026 14:44:00 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 22 Aug 2026 14:44:00 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:d85e724d9e83fe5958acde2418944fdb2b9077a9c6b5963f99e62d6feb11fb31`  
		Last Modified: Mon, 17 Aug 2026 14:27:49 GMT  
		Size: 31.0 MB (30983072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d13ba77835e49ad6ad00d1cf4e85f46c70183c285649ee44858a24627a91a30`  
		Last Modified: Wed, 19 Aug 2026 00:45:29 GMT  
		Size: 13.8 MB (13807212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d76e08d720373cf6db5bd99bae3bd4ff9f7af643df2c3ba68ed3ce052b06d82`  
		Last Modified: Sat, 22 Aug 2026 14:47:26 GMT  
		Size: 91.1 MB (91147076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e7514c91c6daff2d89829777bd221d294277f198cf2957d3c5769e366b988d`  
		Last Modified: Sat, 22 Aug 2026 14:47:12 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b86e613945a6dccb34607213d572ed8c882789da92f8c685993dbeea3076d106
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135634392d39286c1d9bf8db14e2e0314f034117c65a05e50e0ed417959ae5c5`

```dockerfile
```

-	Layers:
	-	`sha256:63f3fb461d5bde764dfbe2bce1a7c65bdebdb4364c7553406d6f0bc4466cfe1a`  
		Last Modified: Sat, 22 Aug 2026 14:47:13 GMT  
		Size: 3.3 MB (3335473 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2c873c6c0328f80be113483b54da86bd5bdf645ab2e6600e6f27366492ff5da`  
		Last Modified: Sat, 22 Aug 2026 14:47:12 GMT  
		Size: 24.5 KB (24469 bytes)  
		MIME: application/vnd.in-toto+json

### `eclipse-temurin:25-jdk-noble` - linux; s390x

```console
$ docker pull eclipse-temurin@sha256:09bcbc98fb2ab58894c2e554054391dd66c84099e859d429b8a2bf3440c713c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **134.8 MB (134764459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c4c349f7b68548263b1017d49022c65af19eae81a8d4a1f826c263a539b2ea4`
-	Entrypoint: `["\/__cacert_entrypoint.sh"]`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:32:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:32:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:32:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:32:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         binutils         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:32:31 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:32:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e58fcdcd637b25c03ca84cbbcefc70d11efb8f4b4cbd05decc9f661769d77f94';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='621f7196f0b682fb557da58bec89bd7dfe5419811fe1c0ba75c9cc8432f084c7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='6b49f8289c377d4fb79ef54b612d77f969648f6ff862152f73c0be897e7c1ef8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='c6a70ed1ebe5ff66614f71fa9070e26d5b21587f576a8cb4f818269f4f475191';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='24f05bf8b13cbb2fd6bdcc02da837725309d7279b5edebafb6b0994dcda262b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jdk_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz ${JAVA_HOME}/lib/src.zip;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:32:43 GMT
RUN set -eux;     echo "Verifying install ...";     fileEncoding="$(echo 'System.out.println(System.getProperty("file.encoding"))' | jshell -s -)"; [ "$fileEncoding" = 'UTF-8' ]; rm -rf ~/.java;     echo "javac --version"; javac --version;     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:32:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:32:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:32:44 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe0db45147d76997a9756d7b6ee3b49c8e34ee1d34e6d2cea3a47f7cc257241`  
		Last Modified: Fri, 21 Aug 2026 18:33:06 GMT  
		Size: 16.3 MB (16266067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ceb50ead8aaab99c1761e042243e49e9cf9716f18589ee379a30a715e40a979`  
		Last Modified: Fri, 21 Aug 2026 18:33:08 GMT  
		Size: 88.6 MB (88560641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03a69d537b98a4e0cace87bcc0e1ca43b2c9dcdd33f1030603eaa463abe501b`  
		Last Modified: Fri, 21 Aug 2026 18:33:05 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eclipse-temurin:25-jdk-noble` - unknown; unknown

```console
$ docker pull eclipse-temurin@sha256:b42303461dd4e7f1e1c76cdf4445c2e7179e7da8a85d0e3cffa9da422f00f4e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.2 MB (3201123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11d83f78923a8e22e352e6bfa3785891d6932bab573b52da109f7f428508fd71`

```dockerfile
```

-	Layers:
	-	`sha256:deff0e734f928f02e49c11a53ba45b24bb20f64d9ce84a8d9d4a31aeb7242bb5`  
		Last Modified: Fri, 21 Aug 2026 18:33:06 GMT  
		Size: 3.2 MB (3176696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1c8efbccf30959c395041778153279e500be93a2fef93afdce27756af8b2add4`  
		Last Modified: Fri, 21 Aug 2026 18:33:06 GMT  
		Size: 24.4 KB (24427 bytes)  
		MIME: application/vnd.in-toto+json
