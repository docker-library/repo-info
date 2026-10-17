## `liquibase:latest`

```console
$ docker pull liquibase@sha256:727157d7335f3ec95ada6089de2c2a2fd9b251fb3fb52fb5c2be48f6b2baa80d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:latest` - linux; amd64

```console
$ docker pull liquibase@sha256:6908b5d1edfc6b800258299e62ecc9c057b2f3f02995eb7ab64933d0b8c82b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111407294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:585cb0d37c509792f3383924865e6a6fcbb31319eb9e92a712935bb1e2e5522d`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

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
# Sat, 17 Oct 2026 00:19:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:19:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:19:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:19:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:19:42 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 00:19:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:45 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:45 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:45 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 01:27:27 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Sat, 17 Oct 2026 01:27:27 GMT
WORKDIR /liquibase
# Sat, 17 Oct 2026 01:27:28 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Sat, 17 Oct 2026 01:27:28 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Sat, 17 Oct 2026 01:27:28 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Sat, 17 Oct 2026 01:27:28 GMT
ARG LPM_VERSION=0.2.14
# Sat, 17 Oct 2026 01:27:28 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Sat, 17 Oct 2026 01:27:28 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Sat, 17 Oct 2026 01:27:28 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Sat, 17 Oct 2026 01:27:28 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Sat, 17 Oct 2026 01:27:28 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Sat, 17 Oct 2026 01:27:28 GMT
LABEL org.opencontainers.image.version=5.0.1
# Sat, 17 Oct 2026 01:27:28 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Sat, 17 Oct 2026 01:27:34 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Sat, 17 Oct 2026 01:27:34 GMT
ENV LIQUIBASE_HOME=/liquibase
# Sat, 17 Oct 2026 01:27:34 GMT
ENV DOCKER_LIQUIBASE=true
# Sat, 17 Oct 2026 01:27:34 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Sat, 17 Oct 2026 01:27:34 GMT
COPY liquibase.docker.properties ./ # buildkit
# Sat, 17 Oct 2026 01:27:34 GMT
USER liquibase:liquibase
# Sat, 17 Oct 2026 01:27:34 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:27:34 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c13179339d83404d86b92f445e2692eb870962a738a4383da35394859e46fa`  
		Last Modified: Sat, 17 Oct 2026 00:19:58 GMT  
		Size: 16.1 MB (16117951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22d3391d8c4912e306bcf7153bab3c68fe06476ef652c930e39b65dea9140eed`  
		Last Modified: Sat, 17 Oct 2026 00:19:59 GMT  
		Size: 53.1 MB (53097302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ddd6de30055ac5bdcb28bc67e61aa12ab2c46949cfa24571411b2a9b9fd4873`  
		Last Modified: Sat, 17 Oct 2026 00:19:56 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18e088bcb32fde124a4553022c55d42c394a352ce80c57bdbf902ffa0441a52`  
		Last Modified: Sat, 17 Oct 2026 00:19:57 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c887de5f81deb3ebddb22a11a679895cec0689b4c2ccbb217ebd84700aafb346`  
		Last Modified: Sat, 17 Oct 2026 01:27:42 GMT  
		Size: 4.3 KB (4305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10bdf438cec6f15a3c0f72b7ef626547ffec9ba06e19c95f21f470edb5838b05`  
		Last Modified: Sat, 17 Oct 2026 01:27:42 GMT  
		Size: 8.7 MB (8665795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771bfec61d5f7250816d9975fff83b364663ad4b8a286af6ae81e6e68e8836f0`  
		Last Modified: Sat, 17 Oct 2026 01:27:42 GMT  
		Size: 3.8 MB (3765205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36f6c9fbd5ce0e20b87228820d9faf0627a825bd09fe2f72f8f81e779b3e6fe`  
		Last Modified: Sat, 17 Oct 2026 01:27:42 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb00403eee97d6d2448a5492a056437a9af68518ccca088a6f5808ec232d5ff3`  
		Last Modified: Sat, 17 Oct 2026 01:27:43 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:b22b15f2b85abb73523c0bfc5832dc087862021e504680b6ffa278f41647be86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906523 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50d897258956dbb57d4cba6527281dab0818ee8e614fbee9444a861fb9bbb2d5`

```dockerfile
```

-	Layers:
	-	`sha256:bfa286192b45bcd311825efb95b5bfd75708c1f5d567870f30f3f1a1843306ff`  
		Last Modified: Sat, 17 Oct 2026 01:27:42 GMT  
		Size: 3.9 MB (3882194 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:049bbb31203e2473273f4abda592aa7f1747b1c40a644d7cc5ee2e6c7c16f5c5`  
		Last Modified: Sat, 17 Oct 2026 01:27:42 GMT  
		Size: 24.3 KB (24329 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:latest` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:8410a09ee195cd9f9aa510534a6b0584fb12fe4b89f54910921ebe1bc3c8f570
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108129497 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b5601a1b978a90111652df8490db7a34208d6798e9bff6e6fb21f452fa67cd4`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

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
# Sat, 17 Oct 2026 00:19:44 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:19:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:19:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:19:44 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:19:44 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Sat, 17 Oct 2026 00:19:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:50 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:50 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:50 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 01:28:03 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Sat, 17 Oct 2026 01:28:03 GMT
WORKDIR /liquibase
# Sat, 17 Oct 2026 01:28:05 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Sat, 17 Oct 2026 01:28:05 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Sat, 17 Oct 2026 01:28:05 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Sat, 17 Oct 2026 01:28:05 GMT
ARG LPM_VERSION=0.2.14
# Sat, 17 Oct 2026 01:28:05 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Sat, 17 Oct 2026 01:28:05 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Sat, 17 Oct 2026 01:28:05 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Sat, 17 Oct 2026 01:28:05 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Sat, 17 Oct 2026 01:28:05 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Sat, 17 Oct 2026 01:28:05 GMT
LABEL org.opencontainers.image.version=5.0.1
# Sat, 17 Oct 2026 01:28:05 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Sat, 17 Oct 2026 01:28:14 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Sat, 17 Oct 2026 01:28:14 GMT
ENV LIQUIBASE_HOME=/liquibase
# Sat, 17 Oct 2026 01:28:14 GMT
ENV DOCKER_LIQUIBASE=true
# Sat, 17 Oct 2026 01:28:14 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Sat, 17 Oct 2026 01:28:14 GMT
COPY liquibase.docker.properties ./ # buildkit
# Sat, 17 Oct 2026 01:28:14 GMT
USER liquibase:liquibase
# Sat, 17 Oct 2026 01:28:14 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:28:14 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f764b4ad63d9f1a8079d498779792133046478a836505979e7686b727bc51b`  
		Last Modified: Sat, 17 Oct 2026 00:20:03 GMT  
		Size: 16.1 MB (16054940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2743dccf8b3e4dd85c8838121ffe7bb7208dca12e3320c9112ce41f9d2a1387`  
		Last Modified: Sat, 17 Oct 2026 00:20:04 GMT  
		Size: 52.3 MB (52273637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc4f1f6fc680432ae5bd6a06373f5823b65e68786cc010699181f79ad4a3d56`  
		Last Modified: Sat, 17 Oct 2026 00:20:02 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d18e088bcb32fde124a4553022c55d42c394a352ce80c57bdbf902ffa0441a52`  
		Last Modified: Sat, 17 Oct 2026 00:19:57 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70afaafb9f7b56df1531e4a4594a8c1f03fd1d1288ce6ed4268a4abd4974cecb`  
		Last Modified: Sat, 17 Oct 2026 01:28:22 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049b654498c7281be6c99f48a4baf4af55ed0e49df7901c39585ba78777bc0cb`  
		Last Modified: Sat, 17 Oct 2026 01:28:23 GMT  
		Size: 8.7 MB (8665797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f086e7b6dba1f781e48f47e0b2b1ac1287b6ba86989cb1e34e6883c9fe868b`  
		Last Modified: Sat, 17 Oct 2026 01:28:23 GMT  
		Size: 3.4 MB (3441829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b1b14a493162b7c4b4632a6aa417a053c118442b44d6f7981d37fc21534a9e`  
		Last Modified: Sat, 17 Oct 2026 01:28:22 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7c990b6445a48e4491338ed6058754f8358e52447f52f1597139a4537b74cb`  
		Last Modified: Sat, 17 Oct 2026 01:28:23 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:f7c5397ace5c67bc61120582637edccfd190666d7cf9bde39e4f4618aa0d0e24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906313 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39d92eb304f68c34663dc8b7928b85ec8520816d63c4377311ff1618581f138f`

```dockerfile
```

-	Layers:
	-	`sha256:98bb66b116e1b5ed0c4e7fa8464a0e9c37589a07e62bb44e4709ea1ac0e801f9`  
		Last Modified: Sat, 17 Oct 2026 01:28:23 GMT  
		Size: 3.9 MB (3881862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:991938a6f64a1c8dbbb45eee4083cacb8a0c3f9c48f16ef92f79319c0ca1f796`  
		Last Modified: Sat, 17 Oct 2026 01:28:22 GMT  
		Size: 24.5 KB (24451 bytes)  
		MIME: application/vnd.in-toto+json
