## `liquibase:latest`

```console
$ docker pull liquibase@sha256:f0ef1f9998d393a69e7850e69492661c5e704421b495ced9652c4d8ed8e6283a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:latest` - linux; amd64

```console
$ docker pull liquibase@sha256:124c81d0205d72ea4ec2e0c203967a30b8c8640a15d8e10b4ffeb40e984260b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111407329 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ee580c48831184af24bb43880233f5e7db2f6b9cc2769c131ce96c89e38dae3`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:14:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:14:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:14:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:14:29 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:14:29 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 18 Aug 2026 01:15:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:15:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:15:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:15:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 02:15:56 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Tue, 18 Aug 2026 02:15:56 GMT
WORKDIR /liquibase
# Tue, 18 Aug 2026 02:15:57 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Tue, 18 Aug 2026 02:15:57 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Tue, 18 Aug 2026 02:15:57 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Tue, 18 Aug 2026 02:15:57 GMT
ARG LPM_VERSION=0.2.14
# Tue, 18 Aug 2026 02:15:57 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Tue, 18 Aug 2026 02:15:57 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Tue, 18 Aug 2026 02:15:57 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Tue, 18 Aug 2026 02:15:57 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Tue, 18 Aug 2026 02:15:57 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Tue, 18 Aug 2026 02:15:57 GMT
LABEL org.opencontainers.image.version=5.0.1
# Tue, 18 Aug 2026 02:15:57 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Tue, 18 Aug 2026 02:16:05 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Tue, 18 Aug 2026 02:16:05 GMT
ENV LIQUIBASE_HOME=/liquibase
# Tue, 18 Aug 2026 02:16:05 GMT
ENV DOCKER_LIQUIBASE=true
# Tue, 18 Aug 2026 02:16:05 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Tue, 18 Aug 2026 02:16:05 GMT
COPY liquibase.docker.properties ./ # buildkit
# Tue, 18 Aug 2026 02:16:05 GMT
USER liquibase:liquibase
# Tue, 18 Aug 2026 02:16:05 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 02:16:05 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf7246f4eaa0641032b565907f746d564f5c42c465f5c61bd8ae82be6c09812`  
		Last Modified: Tue, 18 Aug 2026 01:14:54 GMT  
		Size: 16.1 MB (16108592 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313991a00a00fa5e2c7946299b0a21a69bc5960bc86e6557e2b33093ab6f9f9d`  
		Last Modified: Tue, 18 Aug 2026 01:15:18 GMT  
		Size: 53.1 MB (53122837 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4acf2208ad9e47317b98817aacc9f18fa5e16b3cf91836f26c56f15f4bf53cc8`  
		Last Modified: Tue, 18 Aug 2026 01:15:17 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e180422ca7027aa294fb197bf4ca3b07ad53f47456b52d6f06bdff50229d3b9e`  
		Last Modified: Tue, 18 Aug 2026 01:15:17 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26eaf2acd5673180c39e2f4ca111c691eac1ecb2a557b5a0636e308f67e49ab`  
		Last Modified: Tue, 18 Aug 2026 02:16:12 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f04cf67923851b6b7a8a26d0bd3dafb82db6beca768c6a1a5560ae28bf81156`  
		Last Modified: Tue, 18 Aug 2026 02:16:12 GMT  
		Size: 8.7 MB (8665801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73866c0207bccda6e670c2fee16b40f166d0bbf31c1d34dd798f300c2fc1bbdf`  
		Last Modified: Tue, 18 Aug 2026 02:16:12 GMT  
		Size: 3.8 MB (3764771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8c371d10a4e255d71cb50d4533b49e23a3d434ded4d9480e730b774c851a02`  
		Last Modified: Tue, 18 Aug 2026 02:16:12 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5ad5863a2537b66afb1421bc2c7477901c34bb29ff4cb639392de70aed18d1`  
		Last Modified: Tue, 18 Aug 2026 02:16:13 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:a87f2958004b9a2ef10bc512387e69d47215d71934dee42407f086cf7ffc8802
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bacf062c7ca7bb9ad0108999bc0fe0d795d7af84ef5318858d6a64b31e750bc0`

```dockerfile
```

-	Layers:
	-	`sha256:59b3180ef36c0d81cb7c40c44be12256858792b42c4f5753763eb7e768d90242`  
		Last Modified: Tue, 18 Aug 2026 02:16:12 GMT  
		Size: 3.9 MB (3882114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c9108f760297a91dec4d6b246a6fbbcf05e17b815c6a6181bf7e0b31d677cbca`  
		Last Modified: Tue, 18 Aug 2026 02:16:12 GMT  
		Size: 24.3 KB (24326 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:latest` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:8103aeb68df26d4d780589cf2e5f09be07a95d42e6d31e057e48d91c5aedfdf5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108090309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a081f01d2e154eeab46e06ac609d3f2f30e88863bc86de3f228ea4531be22137`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:15:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 18 Aug 2026 01:15:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 01:15:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 01:15:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:15:12 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Tue, 18 Aug 2026 01:15:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 18 Aug 2026 01:15:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 18 Aug 2026 01:15:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 18 Aug 2026 01:15:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 18 Aug 2026 02:16:03 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Tue, 18 Aug 2026 02:16:03 GMT
WORKDIR /liquibase
# Tue, 18 Aug 2026 02:16:04 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Tue, 18 Aug 2026 02:16:04 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Tue, 18 Aug 2026 02:16:04 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Tue, 18 Aug 2026 02:16:04 GMT
ARG LPM_VERSION=0.2.14
# Tue, 18 Aug 2026 02:16:04 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Tue, 18 Aug 2026 02:16:04 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Tue, 18 Aug 2026 02:16:04 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Tue, 18 Aug 2026 02:16:04 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Tue, 18 Aug 2026 02:16:04 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Tue, 18 Aug 2026 02:16:04 GMT
LABEL org.opencontainers.image.version=5.0.1
# Tue, 18 Aug 2026 02:16:04 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Tue, 18 Aug 2026 02:16:11 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Tue, 18 Aug 2026 02:16:11 GMT
ENV LIQUIBASE_HOME=/liquibase
# Tue, 18 Aug 2026 02:16:11 GMT
ENV DOCKER_LIQUIBASE=true
# Tue, 18 Aug 2026 02:16:11 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Tue, 18 Aug 2026 02:16:11 GMT
COPY liquibase.docker.properties ./ # buildkit
# Tue, 18 Aug 2026 02:16:11 GMT
USER liquibase:liquibase
# Tue, 18 Aug 2026 02:16:11 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Tue, 18 Aug 2026 02:16:11 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e593e3eda72ed0aab245abb4d82be79bb8377a373b2e29c28df3ce6156efe1cf`  
		Last Modified: Tue, 18 Aug 2026 01:15:30 GMT  
		Size: 16.0 MB (16039278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4588bef5871da94fed1a0028ab4b5cbefcfe690e1d4be7897259e5b88893c07`  
		Last Modified: Tue, 18 Aug 2026 01:15:31 GMT  
		Size: 52.3 MB (52314937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92434f15bba6a8a55ccaf988f9b8af00230a1d9de8987bd1708dba964b20ec37`  
		Last Modified: Tue, 18 Aug 2026 01:15:29 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8aa244d810014a6e8768ebf6bc5357dc1de7eb50ecb681bf1027c008f10ebe`  
		Last Modified: Tue, 18 Aug 2026 01:15:08 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:788a71dbf13f883ffe219a1f4c0f14918d40c159f1ad1c489eb104b518ef8322`  
		Last Modified: Tue, 18 Aug 2026 02:16:19 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bc89788f968da9102ccd93ad7e15a53ee05b5f52602348ae550af1216cb60c`  
		Last Modified: Tue, 18 Aug 2026 02:16:19 GMT  
		Size: 8.7 MB (8665797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23bdd2995712e356362c7687357b5171cc16bed1a7dff8912ac651cef79fe0b2`  
		Last Modified: Tue, 18 Aug 2026 02:16:19 GMT  
		Size: 3.4 MB (3441455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10933e5b09d73ecb95dfbe073deff8f0b9ca916e59d48183350ba5747e286fe`  
		Last Modified: Tue, 18 Aug 2026 02:16:19 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6a071542a965ab67669e9c5433575a8d765dc64edb068418df5791f88c6104`  
		Last Modified: Tue, 18 Aug 2026 02:16:20 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:2cfb87a8df97c205a04cefdcca2d1f1e0030096223727d98ca95cee78bee41d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de33b7ae5283cdfe15e4f51838ee5f0f36560f852037b5c8c292f7269791527`

```dockerfile
```

-	Layers:
	-	`sha256:c68af1dc89bf187812381eec157d7d5e226b94c3c5ecd8d42642a02c82d5dbbd`  
		Last Modified: Tue, 18 Aug 2026 02:16:19 GMT  
		Size: 3.9 MB (3881782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8193391b11ee0dfa3137353af52f74dcabab8cd74ac3fa05e962da644609878d`  
		Last Modified: Tue, 18 Aug 2026 02:16:19 GMT  
		Size: 24.4 KB (24447 bytes)  
		MIME: application/vnd.in-toto+json
