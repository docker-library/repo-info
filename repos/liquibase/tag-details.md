<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `liquibase`

-	[`liquibase:5.0`](#liquibase50)
-	[`liquibase:5.0-alpine`](#liquibase50-alpine)
-	[`liquibase:5.0.1`](#liquibase501)
-	[`liquibase:5.0.1-alpine`](#liquibase501-alpine)
-	[`liquibase:alpine`](#liquibasealpine)
-	[`liquibase:latest`](#liquibaselatest)

## `liquibase:5.0`

```console
$ docker pull liquibase@sha256:5c7fb8ce5d97bf04fa35117009943229183dcd17d8c6ef341b69114c5a08d68b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0` - linux; amd64

```console
$ docker pull liquibase@sha256:d1aaa2ba17e346ad79f1c05170b8926cdf469dca4edc3e7872375288d1f7b481
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111399284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6a9708019b1b3e2d8e10d16e7b8fca3b53c69ca619a1b4f15e3ad0610f239b`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:19:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:19:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:19:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:19:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:19:56 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 02:20:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:20:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:20:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:20:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 03:26:07 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Wed, 09 Sep 2026 03:26:07 GMT
WORKDIR /liquibase
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Wed, 09 Sep 2026 03:26:08 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LPM_VERSION=0.2.14
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.version=5.0.1
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Wed, 09 Sep 2026 03:26:16 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Wed, 09 Sep 2026 03:26:16 GMT
ENV LIQUIBASE_HOME=/liquibase
# Wed, 09 Sep 2026 03:26:16 GMT
ENV DOCKER_LIQUIBASE=true
# Wed, 09 Sep 2026 03:26:16 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Wed, 09 Sep 2026 03:26:16 GMT
COPY liquibase.docker.properties ./ # buildkit
# Wed, 09 Sep 2026 03:26:16 GMT
USER liquibase:liquibase
# Wed, 09 Sep 2026 03:26:16 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 03:26:16 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6fdf6080df40c02c4812ec3ee7bf885998671f58d62e800131b72c6484577d`  
		Last Modified: Wed, 09 Sep 2026 02:20:20 GMT  
		Size: 16.1 MB (16112095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dede7c3d89888cdbb8c1f3642a6c904b7db3794ab89830eb0dd30393072c280`  
		Last Modified: Wed, 09 Sep 2026 02:20:46 GMT  
		Size: 53.1 MB (53097465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911ff1f59fbe0d784ac453c37b8adbcb2a1ac9cafeb5f92a5b2ac85ba2174723`  
		Last Modified: Wed, 09 Sep 2026 02:20:44 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c65824682369a31e3cd354244f0d0a4c7789196e8041fb67163d382e5ec9ac`  
		Last Modified: Wed, 09 Sep 2026 02:20:44 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b035d9c9fc1250152dc670a089ea1cf4b40039365cda4e8139f55e70c66c101f`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d8845d9d50cbe6dfc9ccda29cbd47041a8e595df17d7e522a2923ac2b8e73a6`  
		Last Modified: Wed, 09 Sep 2026 03:26:25 GMT  
		Size: 8.7 MB (8665794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd6e85816fb53716a2f68140c749a12bdc372d2412cad4dd208e0703ee4f154`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 3.8 MB (3765122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018de43f99fe140a87f460946c2213bd054c45fabb0e1607e429f2b4f21f53f4`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc713d4cc9cd11bce95cf9bbf8fbf370e6e105e8289ad4f24ac00566f99ce8`  
		Last Modified: Wed, 09 Sep 2026 03:26:25 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:7835555030b809887de0ecbc36b9725439446185ba6ba368d8a089e23ee30523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3908087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4766434fa2a6e06e78a5084277754cde65db325909266198dff6b5c776266478`

```dockerfile
```

-	Layers:
	-	`sha256:0d3f113c9b7e1d595055cb98659c04d67b4ddbaece65b8a9ed23558003e4e6e4`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 3.9 MB (3883764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79de8f4ed2857849df60e983cccab1d2b217d8dfbf2e540a1e983a66d8b4ae06`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 24.3 KB (24323 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:5816c1542c515cf29cabb3d8920d959d20b76a7282b3399feed725107228d6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108108577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17233b8dff85fffe272b577824b87f539f39b41aa5ef44fbc434c98f019556cd`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:25:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:25:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:25:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:25:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:25:01 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 01:25:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 01:25:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:25:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:25:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:31 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Wed, 09 Sep 2026 02:29:31 GMT
WORKDIR /liquibase
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Wed, 09 Sep 2026 02:29:33 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LPM_VERSION=0.2.14
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.version=5.0.1
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Wed, 09 Sep 2026 02:29:42 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Wed, 09 Sep 2026 02:29:42 GMT
ENV LIQUIBASE_HOME=/liquibase
# Wed, 09 Sep 2026 02:29:42 GMT
ENV DOCKER_LIQUIBASE=true
# Wed, 09 Sep 2026 02:29:42 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Wed, 09 Sep 2026 02:29:42 GMT
COPY liquibase.docker.properties ./ # buildkit
# Wed, 09 Sep 2026 02:29:42 GMT
USER liquibase:liquibase
# Wed, 09 Sep 2026 02:29:42 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:42 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672ea238ab994cea2a62e2600306c6c40c6c35d46f0a711628a78eb6f9c8d6f0`  
		Last Modified: Wed, 09 Sep 2026 01:25:59 GMT  
		Size: 16.0 MB (16036388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe86bf9761296d50620534871e966b7fd4028c61242d9ec03bb934ed3f54092`  
		Last Modified: Wed, 09 Sep 2026 01:26:00 GMT  
		Size: 52.3 MB (52273318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd6ada92f9b5c5d4dce60c5e9fdd7c51178f0a12b68bbe85db55d5654d12ff8`  
		Last Modified: Wed, 09 Sep 2026 01:25:58 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db701940256c28f9cb6c9b31273591bea8dbea74067b161fd1f9977954332457`  
		Last Modified: Wed, 09 Sep 2026 01:25:58 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044335615d85decf487d4fdc5b70b2d805c750dd2069db804cc328150d2515c4`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad98dfbfd5de25c9e206ab63d7d85e249d52794baad68316532d80ca75bb763a`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 8.7 MB (8665797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6298dfc08458aa9707afc603d6fa166b8392b43a49b29a541416375292b17aaa`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 3.4 MB (3441760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43009cdcc3eec370952c8bdb48fa601f15c0dd054b1c1aee1cc925ba5410e448`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf5cac8fe9a454e153276641ea6bf0d4976abf99a718a63350339340697a593`  
		Last Modified: Wed, 09 Sep 2026 02:29:52 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:226b3536e81367e26d5df0edb017d5389d6528fe5337bc2fd343f7111d315248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3907877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3bbcb81e74503010b85a302b1cdceed062443c9f2717a6d594148bb1a35881`

```dockerfile
```

-	Layers:
	-	`sha256:d258ae4881aef4b5c787a91704502ff148ac11ba61c1bf177a2450be0b72837e`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 3.9 MB (3883432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67663fa76b334e2f3f48938b48dd29e1f8950cdf3cf91a12852021656ff02830`  
		Last Modified: Wed, 09 Sep 2026 02:29:50 GMT  
		Size: 24.4 KB (24445 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:5.0-alpine`

```console
$ docker pull liquibase@sha256:7ccd46d67225e4590512d1182a6902006175e2e69131713f904f14eb1afbd90e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0-alpine` - linux; amd64

```console
$ docker pull liquibase@sha256:6f1b64d9dad9f86340411854e9236bce69adbd105a656ab03fafa174eff5742f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84026615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b033fcf5c88b7364061790e9be4069210c58bddcc02f45c1f3443388b0e90b9`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:01:26 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Mon, 22 Jun 2026 20:01:28 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Mon, 22 Jun 2026 20:01:28 GMT
WORKDIR /liquibase
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Mon, 22 Jun 2026 20:01:29 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LPM_VERSION=0.2.14
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.version=5.0.1
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Mon, 22 Jun 2026 20:01:30 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Mon, 22 Jun 2026 20:01:30 GMT
ENV LIQUIBASE_HOME=/liquibase
# Mon, 22 Jun 2026 20:01:30 GMT
ENV DOCKER_LIQUIBASE=true
# Mon, 22 Jun 2026 20:01:30 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Mon, 22 Jun 2026 20:01:31 GMT
COPY liquibase.docker.properties ./ # buildkit
# Mon, 22 Jun 2026 20:01:31 GMT
USER liquibase:liquibase
# Mon, 22 Jun 2026 20:01:31 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:01:31 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253834b0b4a07a4a08a9cf3853bbfdcad0e00afa439ffb671c19b363b5dc375e`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1421e4bc4f56791584a359bb984744f7162218def18c0c7bd00f589374f1581a`  
		Last Modified: Mon, 22 Jun 2026 20:01:45 GMT  
		Size: 67.9 MB (67866848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe375d9b1dcd009815bb94a6847858abb051f1989c6b3a6e3b1f8f362b487566`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 8.7 MB (8687795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1112bfd2dbff32c98a0b59687132e5e061574e8977db4c1bbb4d279f5cc120c9`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 3.7 MB (3681812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afea256cda865a09b494d19686ad77da823bccb11c08208311e18c29f3e489b9`  
		Last Modified: Mon, 22 Jun 2026 20:01:43 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086dc2d708e845fb0ebc7636a1cd22a36b8fdfb0e0110ae8faf40c295b57e1de`  
		Last Modified: Mon, 22 Jun 2026 20:01:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:f15bbb0a9359d50787758806b2a8386860f349b17ee8a16eb7bdd5ef244c0ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 KB (363566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f17d640c725627af296b4b0f9f894bb491667aadf2b70eba6b5de6ff134ddf`

```dockerfile
```

-	Layers:
	-	`sha256:a122d75c777219ec4376fb4f372cace532c9b3fc73b7bd4a5392c0ef45e39e10`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 341.9 KB (341908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d89e5eec10e43f5123173c7848bf95f8f292155023c824db40bf24f6354e92`  
		Last Modified: Mon, 22 Jun 2026 20:01:41 GMT  
		Size: 21.7 KB (21658 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0-alpine` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:2bd48644873d9fc6d17b11d6151742b7bfee6ef6157a794a7595a1ab73fe9794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83046210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e92260df459b5e2dda5003d2246e0a4a41a04f1376b82cec3a7d2d205a3eb9`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:02:32 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Mon, 22 Jun 2026 20:02:35 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Mon, 22 Jun 2026 20:02:35 GMT
WORKDIR /liquibase
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Mon, 22 Jun 2026 20:02:37 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LPM_VERSION=0.2.14
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.version=5.0.1
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Mon, 22 Jun 2026 20:02:38 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Mon, 22 Jun 2026 20:02:38 GMT
ENV LIQUIBASE_HOME=/liquibase
# Mon, 22 Jun 2026 20:02:38 GMT
ENV DOCKER_LIQUIBASE=true
# Mon, 22 Jun 2026 20:02:38 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Mon, 22 Jun 2026 20:02:38 GMT
COPY liquibase.docker.properties ./ # buildkit
# Mon, 22 Jun 2026 20:02:38 GMT
USER liquibase:liquibase
# Mon, 22 Jun 2026 20:02:38 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:02:38 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501cdf11253af59bc05b655191465040ff32438319ee42e71c553ac91d278b3f`  
		Last Modified: Mon, 22 Jun 2026 20:02:50 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e686b0b99a30415116a0cec9f8e77bab68f411c3b9b165cef43e626118bd1e5f`  
		Last Modified: Mon, 22 Jun 2026 20:02:53 GMT  
		Size: 66.9 MB (66876378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d2fdf7c9f5cc30297f9c60a340403531d3a2bf8db437f57e9c3eabf78c5a02`  
		Last Modified: Mon, 22 Jun 2026 20:02:51 GMT  
		Size: 8.7 MB (8687740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7717102bd5a7986fb573604112323ff7060989b9765f7b802c4f8216b427a940`  
		Last Modified: Mon, 22 Jun 2026 20:02:51 GMT  
		Size: 3.4 MB (3359037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9045241c4e2d43404d91657b5ef812e49a1482cbab340841730c92a0410cee61`  
		Last Modified: Mon, 22 Jun 2026 20:02:52 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ec1e2499440fd71a7989de7b8593a29963b695a17b30845ddc6479b59a2efd`  
		Last Modified: Mon, 22 Jun 2026 20:02:52 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:56f5f803e93927679ef6480d49a618ace6fc39e399daf527f105076d8157dc37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.9 KB (362950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6550c0bb1fbc7162baa1e62d4e90ee234b2a80ad14ef73e37256a298bdd1a7`

```dockerfile
```

-	Layers:
	-	`sha256:579221ac61d4799002ae45b10fca2007cd612cd42b8acae771ef50f4f4567442`  
		Last Modified: Mon, 22 Jun 2026 20:02:50 GMT  
		Size: 341.2 KB (341155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5fe8f3ec1f5b860936f9f3da08d84c53f4772371191d6f149d08c513e0e1e8a`  
		Last Modified: Mon, 22 Jun 2026 20:02:50 GMT  
		Size: 21.8 KB (21795 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:5.0.1`

```console
$ docker pull liquibase@sha256:5c7fb8ce5d97bf04fa35117009943229183dcd17d8c6ef341b69114c5a08d68b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0.1` - linux; amd64

```console
$ docker pull liquibase@sha256:d1aaa2ba17e346ad79f1c05170b8926cdf469dca4edc3e7872375288d1f7b481
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111399284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6a9708019b1b3e2d8e10d16e7b8fca3b53c69ca619a1b4f15e3ad0610f239b`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:19:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:19:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:19:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:19:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:19:56 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 02:20:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:20:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:20:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:20:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 03:26:07 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Wed, 09 Sep 2026 03:26:07 GMT
WORKDIR /liquibase
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Wed, 09 Sep 2026 03:26:08 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LPM_VERSION=0.2.14
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.version=5.0.1
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Wed, 09 Sep 2026 03:26:16 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Wed, 09 Sep 2026 03:26:16 GMT
ENV LIQUIBASE_HOME=/liquibase
# Wed, 09 Sep 2026 03:26:16 GMT
ENV DOCKER_LIQUIBASE=true
# Wed, 09 Sep 2026 03:26:16 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Wed, 09 Sep 2026 03:26:16 GMT
COPY liquibase.docker.properties ./ # buildkit
# Wed, 09 Sep 2026 03:26:16 GMT
USER liquibase:liquibase
# Wed, 09 Sep 2026 03:26:16 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 03:26:16 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6fdf6080df40c02c4812ec3ee7bf885998671f58d62e800131b72c6484577d`  
		Last Modified: Wed, 09 Sep 2026 02:20:20 GMT  
		Size: 16.1 MB (16112095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dede7c3d89888cdbb8c1f3642a6c904b7db3794ab89830eb0dd30393072c280`  
		Last Modified: Wed, 09 Sep 2026 02:20:46 GMT  
		Size: 53.1 MB (53097465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911ff1f59fbe0d784ac453c37b8adbcb2a1ac9cafeb5f92a5b2ac85ba2174723`  
		Last Modified: Wed, 09 Sep 2026 02:20:44 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c65824682369a31e3cd354244f0d0a4c7789196e8041fb67163d382e5ec9ac`  
		Last Modified: Wed, 09 Sep 2026 02:20:44 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b035d9c9fc1250152dc670a089ea1cf4b40039365cda4e8139f55e70c66c101f`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d8845d9d50cbe6dfc9ccda29cbd47041a8e595df17d7e522a2923ac2b8e73a6`  
		Last Modified: Wed, 09 Sep 2026 03:26:25 GMT  
		Size: 8.7 MB (8665794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd6e85816fb53716a2f68140c749a12bdc372d2412cad4dd208e0703ee4f154`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 3.8 MB (3765122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018de43f99fe140a87f460946c2213bd054c45fabb0e1607e429f2b4f21f53f4`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc713d4cc9cd11bce95cf9bbf8fbf370e6e105e8289ad4f24ac00566f99ce8`  
		Last Modified: Wed, 09 Sep 2026 03:26:25 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:7835555030b809887de0ecbc36b9725439446185ba6ba368d8a089e23ee30523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3908087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4766434fa2a6e06e78a5084277754cde65db325909266198dff6b5c776266478`

```dockerfile
```

-	Layers:
	-	`sha256:0d3f113c9b7e1d595055cb98659c04d67b4ddbaece65b8a9ed23558003e4e6e4`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 3.9 MB (3883764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79de8f4ed2857849df60e983cccab1d2b217d8dfbf2e540a1e983a66d8b4ae06`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 24.3 KB (24323 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0.1` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:5816c1542c515cf29cabb3d8920d959d20b76a7282b3399feed725107228d6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108108577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17233b8dff85fffe272b577824b87f539f39b41aa5ef44fbc434c98f019556cd`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:25:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:25:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:25:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:25:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:25:01 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 01:25:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 01:25:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:25:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:25:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:31 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Wed, 09 Sep 2026 02:29:31 GMT
WORKDIR /liquibase
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Wed, 09 Sep 2026 02:29:33 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LPM_VERSION=0.2.14
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.version=5.0.1
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Wed, 09 Sep 2026 02:29:42 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Wed, 09 Sep 2026 02:29:42 GMT
ENV LIQUIBASE_HOME=/liquibase
# Wed, 09 Sep 2026 02:29:42 GMT
ENV DOCKER_LIQUIBASE=true
# Wed, 09 Sep 2026 02:29:42 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Wed, 09 Sep 2026 02:29:42 GMT
COPY liquibase.docker.properties ./ # buildkit
# Wed, 09 Sep 2026 02:29:42 GMT
USER liquibase:liquibase
# Wed, 09 Sep 2026 02:29:42 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:42 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672ea238ab994cea2a62e2600306c6c40c6c35d46f0a711628a78eb6f9c8d6f0`  
		Last Modified: Wed, 09 Sep 2026 01:25:59 GMT  
		Size: 16.0 MB (16036388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe86bf9761296d50620534871e966b7fd4028c61242d9ec03bb934ed3f54092`  
		Last Modified: Wed, 09 Sep 2026 01:26:00 GMT  
		Size: 52.3 MB (52273318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd6ada92f9b5c5d4dce60c5e9fdd7c51178f0a12b68bbe85db55d5654d12ff8`  
		Last Modified: Wed, 09 Sep 2026 01:25:58 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db701940256c28f9cb6c9b31273591bea8dbea74067b161fd1f9977954332457`  
		Last Modified: Wed, 09 Sep 2026 01:25:58 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044335615d85decf487d4fdc5b70b2d805c750dd2069db804cc328150d2515c4`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad98dfbfd5de25c9e206ab63d7d85e249d52794baad68316532d80ca75bb763a`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 8.7 MB (8665797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6298dfc08458aa9707afc603d6fa166b8392b43a49b29a541416375292b17aaa`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 3.4 MB (3441760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43009cdcc3eec370952c8bdb48fa601f15c0dd054b1c1aee1cc925ba5410e448`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf5cac8fe9a454e153276641ea6bf0d4976abf99a718a63350339340697a593`  
		Last Modified: Wed, 09 Sep 2026 02:29:52 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:226b3536e81367e26d5df0edb017d5389d6528fe5337bc2fd343f7111d315248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3907877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3bbcb81e74503010b85a302b1cdceed062443c9f2717a6d594148bb1a35881`

```dockerfile
```

-	Layers:
	-	`sha256:d258ae4881aef4b5c787a91704502ff148ac11ba61c1bf177a2450be0b72837e`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 3.9 MB (3883432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67663fa76b334e2f3f48938b48dd29e1f8950cdf3cf91a12852021656ff02830`  
		Last Modified: Wed, 09 Sep 2026 02:29:50 GMT  
		Size: 24.4 KB (24445 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:5.0.1-alpine`

```console
$ docker pull liquibase@sha256:7ccd46d67225e4590512d1182a6902006175e2e69131713f904f14eb1afbd90e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0.1-alpine` - linux; amd64

```console
$ docker pull liquibase@sha256:6f1b64d9dad9f86340411854e9236bce69adbd105a656ab03fafa174eff5742f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84026615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b033fcf5c88b7364061790e9be4069210c58bddcc02f45c1f3443388b0e90b9`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:01:26 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Mon, 22 Jun 2026 20:01:28 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Mon, 22 Jun 2026 20:01:28 GMT
WORKDIR /liquibase
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Mon, 22 Jun 2026 20:01:29 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LPM_VERSION=0.2.14
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.version=5.0.1
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Mon, 22 Jun 2026 20:01:30 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Mon, 22 Jun 2026 20:01:30 GMT
ENV LIQUIBASE_HOME=/liquibase
# Mon, 22 Jun 2026 20:01:30 GMT
ENV DOCKER_LIQUIBASE=true
# Mon, 22 Jun 2026 20:01:30 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Mon, 22 Jun 2026 20:01:31 GMT
COPY liquibase.docker.properties ./ # buildkit
# Mon, 22 Jun 2026 20:01:31 GMT
USER liquibase:liquibase
# Mon, 22 Jun 2026 20:01:31 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:01:31 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253834b0b4a07a4a08a9cf3853bbfdcad0e00afa439ffb671c19b363b5dc375e`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1421e4bc4f56791584a359bb984744f7162218def18c0c7bd00f589374f1581a`  
		Last Modified: Mon, 22 Jun 2026 20:01:45 GMT  
		Size: 67.9 MB (67866848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe375d9b1dcd009815bb94a6847858abb051f1989c6b3a6e3b1f8f362b487566`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 8.7 MB (8687795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1112bfd2dbff32c98a0b59687132e5e061574e8977db4c1bbb4d279f5cc120c9`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 3.7 MB (3681812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afea256cda865a09b494d19686ad77da823bccb11c08208311e18c29f3e489b9`  
		Last Modified: Mon, 22 Jun 2026 20:01:43 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086dc2d708e845fb0ebc7636a1cd22a36b8fdfb0e0110ae8faf40c295b57e1de`  
		Last Modified: Mon, 22 Jun 2026 20:01:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:f15bbb0a9359d50787758806b2a8386860f349b17ee8a16eb7bdd5ef244c0ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 KB (363566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f17d640c725627af296b4b0f9f894bb491667aadf2b70eba6b5de6ff134ddf`

```dockerfile
```

-	Layers:
	-	`sha256:a122d75c777219ec4376fb4f372cace532c9b3fc73b7bd4a5392c0ef45e39e10`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 341.9 KB (341908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d89e5eec10e43f5123173c7848bf95f8f292155023c824db40bf24f6354e92`  
		Last Modified: Mon, 22 Jun 2026 20:01:41 GMT  
		Size: 21.7 KB (21658 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0.1-alpine` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:2bd48644873d9fc6d17b11d6151742b7bfee6ef6157a794a7595a1ab73fe9794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83046210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e92260df459b5e2dda5003d2246e0a4a41a04f1376b82cec3a7d2d205a3eb9`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:02:32 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Mon, 22 Jun 2026 20:02:35 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Mon, 22 Jun 2026 20:02:35 GMT
WORKDIR /liquibase
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Mon, 22 Jun 2026 20:02:37 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LPM_VERSION=0.2.14
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.version=5.0.1
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Mon, 22 Jun 2026 20:02:38 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Mon, 22 Jun 2026 20:02:38 GMT
ENV LIQUIBASE_HOME=/liquibase
# Mon, 22 Jun 2026 20:02:38 GMT
ENV DOCKER_LIQUIBASE=true
# Mon, 22 Jun 2026 20:02:38 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Mon, 22 Jun 2026 20:02:38 GMT
COPY liquibase.docker.properties ./ # buildkit
# Mon, 22 Jun 2026 20:02:38 GMT
USER liquibase:liquibase
# Mon, 22 Jun 2026 20:02:38 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:02:38 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501cdf11253af59bc05b655191465040ff32438319ee42e71c553ac91d278b3f`  
		Last Modified: Mon, 22 Jun 2026 20:02:50 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e686b0b99a30415116a0cec9f8e77bab68f411c3b9b165cef43e626118bd1e5f`  
		Last Modified: Mon, 22 Jun 2026 20:02:53 GMT  
		Size: 66.9 MB (66876378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d2fdf7c9f5cc30297f9c60a340403531d3a2bf8db437f57e9c3eabf78c5a02`  
		Last Modified: Mon, 22 Jun 2026 20:02:51 GMT  
		Size: 8.7 MB (8687740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7717102bd5a7986fb573604112323ff7060989b9765f7b802c4f8216b427a940`  
		Last Modified: Mon, 22 Jun 2026 20:02:51 GMT  
		Size: 3.4 MB (3359037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9045241c4e2d43404d91657b5ef812e49a1482cbab340841730c92a0410cee61`  
		Last Modified: Mon, 22 Jun 2026 20:02:52 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ec1e2499440fd71a7989de7b8593a29963b695a17b30845ddc6479b59a2efd`  
		Last Modified: Mon, 22 Jun 2026 20:02:52 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:56f5f803e93927679ef6480d49a618ace6fc39e399daf527f105076d8157dc37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.9 KB (362950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6550c0bb1fbc7162baa1e62d4e90ee234b2a80ad14ef73e37256a298bdd1a7`

```dockerfile
```

-	Layers:
	-	`sha256:579221ac61d4799002ae45b10fca2007cd612cd42b8acae771ef50f4f4567442`  
		Last Modified: Mon, 22 Jun 2026 20:02:50 GMT  
		Size: 341.2 KB (341155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5fe8f3ec1f5b860936f9f3da08d84c53f4772371191d6f149d08c513e0e1e8a`  
		Last Modified: Mon, 22 Jun 2026 20:02:50 GMT  
		Size: 21.8 KB (21795 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:alpine`

```console
$ docker pull liquibase@sha256:7ccd46d67225e4590512d1182a6902006175e2e69131713f904f14eb1afbd90e
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:alpine` - linux; amd64

```console
$ docker pull liquibase@sha256:6f1b64d9dad9f86340411854e9236bce69adbd105a656ab03fafa174eff5742f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.0 MB (84026615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b033fcf5c88b7364061790e9be4069210c58bddcc02f45c1f3443388b0e90b9`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:01:26 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Mon, 22 Jun 2026 20:01:28 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Mon, 22 Jun 2026 20:01:28 GMT
WORKDIR /liquibase
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Mon, 22 Jun 2026 20:01:29 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LPM_VERSION=0.2.14
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Mon, 22 Jun 2026 20:01:29 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.version=5.0.1
# Mon, 22 Jun 2026 20:01:29 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Mon, 22 Jun 2026 20:01:30 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Mon, 22 Jun 2026 20:01:30 GMT
ENV LIQUIBASE_HOME=/liquibase
# Mon, 22 Jun 2026 20:01:30 GMT
ENV DOCKER_LIQUIBASE=true
# Mon, 22 Jun 2026 20:01:30 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Mon, 22 Jun 2026 20:01:31 GMT
COPY liquibase.docker.properties ./ # buildkit
# Mon, 22 Jun 2026 20:01:31 GMT
USER liquibase:liquibase
# Mon, 22 Jun 2026 20:01:31 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:01:31 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253834b0b4a07a4a08a9cf3853bbfdcad0e00afa439ffb671c19b363b5dc375e`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1421e4bc4f56791584a359bb984744f7162218def18c0c7bd00f589374f1581a`  
		Last Modified: Mon, 22 Jun 2026 20:01:45 GMT  
		Size: 67.9 MB (67866848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe375d9b1dcd009815bb94a6847858abb051f1989c6b3a6e3b1f8f362b487566`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 8.7 MB (8687795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1112bfd2dbff32c98a0b59687132e5e061574e8977db4c1bbb4d279f5cc120c9`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 3.7 MB (3681812 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afea256cda865a09b494d19686ad77da823bccb11c08208311e18c29f3e489b9`  
		Last Modified: Mon, 22 Jun 2026 20:01:43 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:086dc2d708e845fb0ebc7636a1cd22a36b8fdfb0e0110ae8faf40c295b57e1de`  
		Last Modified: Mon, 22 Jun 2026 20:01:43 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:f15bbb0a9359d50787758806b2a8386860f349b17ee8a16eb7bdd5ef244c0ef5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **363.6 KB (363566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f17d640c725627af296b4b0f9f894bb491667aadf2b70eba6b5de6ff134ddf`

```dockerfile
```

-	Layers:
	-	`sha256:a122d75c777219ec4376fb4f372cace532c9b3fc73b7bd4a5392c0ef45e39e10`  
		Last Modified: Mon, 22 Jun 2026 20:01:42 GMT  
		Size: 341.9 KB (341908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38d89e5eec10e43f5123173c7848bf95f8f292155023c824db40bf24f6354e92`  
		Last Modified: Mon, 22 Jun 2026 20:01:41 GMT  
		Size: 21.7 KB (21658 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:alpine` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:2bd48644873d9fc6d17b11d6151742b7bfee6ef6157a794a7595a1ab73fe9794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.0 MB (83046210 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9e92260df459b5e2dda5003d2246e0a4a41a04f1376b82cec3a7d2d205a3eb9`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 20:02:32 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Mon, 22 Jun 2026 20:02:35 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Mon, 22 Jun 2026 20:02:35 GMT
WORKDIR /liquibase
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Mon, 22 Jun 2026 20:02:37 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LPM_VERSION=0.2.14
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Mon, 22 Jun 2026 20:02:37 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.version=5.0.1
# Mon, 22 Jun 2026 20:02:37 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Mon, 22 Jun 2026 20:02:38 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Mon, 22 Jun 2026 20:02:38 GMT
ENV LIQUIBASE_HOME=/liquibase
# Mon, 22 Jun 2026 20:02:38 GMT
ENV DOCKER_LIQUIBASE=true
# Mon, 22 Jun 2026 20:02:38 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Mon, 22 Jun 2026 20:02:38 GMT
COPY liquibase.docker.properties ./ # buildkit
# Mon, 22 Jun 2026 20:02:38 GMT
USER liquibase:liquibase
# Mon, 22 Jun 2026 20:02:38 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Mon, 22 Jun 2026 20:02:38 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:501cdf11253af59bc05b655191465040ff32438319ee42e71c553ac91d278b3f`  
		Last Modified: Mon, 22 Jun 2026 20:02:50 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e686b0b99a30415116a0cec9f8e77bab68f411c3b9b165cef43e626118bd1e5f`  
		Last Modified: Mon, 22 Jun 2026 20:02:53 GMT  
		Size: 66.9 MB (66876378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d2fdf7c9f5cc30297f9c60a340403531d3a2bf8db437f57e9c3eabf78c5a02`  
		Last Modified: Mon, 22 Jun 2026 20:02:51 GMT  
		Size: 8.7 MB (8687740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7717102bd5a7986fb573604112323ff7060989b9765f7b802c4f8216b427a940`  
		Last Modified: Mon, 22 Jun 2026 20:02:51 GMT  
		Size: 3.4 MB (3359037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9045241c4e2d43404d91657b5ef812e49a1482cbab340841730c92a0410cee61`  
		Last Modified: Mon, 22 Jun 2026 20:02:52 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ec1e2499440fd71a7989de7b8593a29963b695a17b30845ddc6479b59a2efd`  
		Last Modified: Mon, 22 Jun 2026 20:02:52 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:56f5f803e93927679ef6480d49a618ace6fc39e399daf527f105076d8157dc37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.9 KB (362950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc6550c0bb1fbc7162baa1e62d4e90ee234b2a80ad14ef73e37256a298bdd1a7`

```dockerfile
```

-	Layers:
	-	`sha256:579221ac61d4799002ae45b10fca2007cd612cd42b8acae771ef50f4f4567442`  
		Last Modified: Mon, 22 Jun 2026 20:02:50 GMT  
		Size: 341.2 KB (341155 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d5fe8f3ec1f5b860936f9f3da08d84c53f4772371191d6f149d08c513e0e1e8a`  
		Last Modified: Mon, 22 Jun 2026 20:02:50 GMT  
		Size: 21.8 KB (21795 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:latest`

```console
$ docker pull liquibase@sha256:5c7fb8ce5d97bf04fa35117009943229183dcd17d8c6ef341b69114c5a08d68b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:latest` - linux; amd64

```console
$ docker pull liquibase@sha256:d1aaa2ba17e346ad79f1c05170b8926cdf469dca4edc3e7872375288d1f7b481
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111399284 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6a9708019b1b3e2d8e10d16e7b8fca3b53c69ca619a1b4f15e3ad0610f239b`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:19:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:19:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:19:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:19:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:19:56 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 02:20:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:20:32 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:20:32 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:20:32 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 03:26:07 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Wed, 09 Sep 2026 03:26:07 GMT
WORKDIR /liquibase
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Wed, 09 Sep 2026 03:26:08 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LPM_VERSION=0.2.14
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Wed, 09 Sep 2026 03:26:08 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.version=5.0.1
# Wed, 09 Sep 2026 03:26:08 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Wed, 09 Sep 2026 03:26:16 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Wed, 09 Sep 2026 03:26:16 GMT
ENV LIQUIBASE_HOME=/liquibase
# Wed, 09 Sep 2026 03:26:16 GMT
ENV DOCKER_LIQUIBASE=true
# Wed, 09 Sep 2026 03:26:16 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Wed, 09 Sep 2026 03:26:16 GMT
COPY liquibase.docker.properties ./ # buildkit
# Wed, 09 Sep 2026 03:26:16 GMT
USER liquibase:liquibase
# Wed, 09 Sep 2026 03:26:16 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 03:26:16 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b6fdf6080df40c02c4812ec3ee7bf885998671f58d62e800131b72c6484577d`  
		Last Modified: Wed, 09 Sep 2026 02:20:20 GMT  
		Size: 16.1 MB (16112095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dede7c3d89888cdbb8c1f3642a6c904b7db3794ab89830eb0dd30393072c280`  
		Last Modified: Wed, 09 Sep 2026 02:20:46 GMT  
		Size: 53.1 MB (53097465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:911ff1f59fbe0d784ac453c37b8adbcb2a1ac9cafeb5f92a5b2ac85ba2174723`  
		Last Modified: Wed, 09 Sep 2026 02:20:44 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09c65824682369a31e3cd354244f0d0a4c7789196e8041fb67163d382e5ec9ac`  
		Last Modified: Wed, 09 Sep 2026 02:20:44 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b035d9c9fc1250152dc670a089ea1cf4b40039365cda4e8139f55e70c66c101f`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d8845d9d50cbe6dfc9ccda29cbd47041a8e595df17d7e522a2923ac2b8e73a6`  
		Last Modified: Wed, 09 Sep 2026 03:26:25 GMT  
		Size: 8.7 MB (8665794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd6e85816fb53716a2f68140c749a12bdc372d2412cad4dd208e0703ee4f154`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 3.8 MB (3765122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018de43f99fe140a87f460946c2213bd054c45fabb0e1607e429f2b4f21f53f4`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 1.4 KB (1427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0fc713d4cc9cd11bce95cf9bbf8fbf370e6e105e8289ad4f24ac00566f99ce8`  
		Last Modified: Wed, 09 Sep 2026 03:26:25 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:7835555030b809887de0ecbc36b9725439446185ba6ba368d8a089e23ee30523
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3908087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4766434fa2a6e06e78a5084277754cde65db325909266198dff6b5c776266478`

```dockerfile
```

-	Layers:
	-	`sha256:0d3f113c9b7e1d595055cb98659c04d67b4ddbaece65b8a9ed23558003e4e6e4`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 3.9 MB (3883764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:79de8f4ed2857849df60e983cccab1d2b217d8dfbf2e540a1e983a66d8b4ae06`  
		Last Modified: Wed, 09 Sep 2026 03:26:24 GMT  
		Size: 24.3 KB (24323 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:latest` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:5816c1542c515cf29cabb3d8920d959d20b76a7282b3399feed725107228d6d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108108577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17233b8dff85fffe272b577824b87f539f39b41aa5ef44fbc434c98f019556cd`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:40 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:40 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:40 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:43 GMT
ADD file:b920ec328a9d4f41fbaa4e839ab5a48ad3f138f98a847b3ee8c48142817ee32d in / 
# Thu, 03 Sep 2026 12:14:43 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:25:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:25:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:25:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:25:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:25:01 GMT
ENV JAVA_VERSION=jdk-21.0.12+8
# Wed, 09 Sep 2026 01:25:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='8a379a67c91a3ae61ffb33d46e0a40c7ba35e70713c4db31cfca30492f792eff';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_x64_linux_hotspot_21.0.12_8.tar.gz';          ;;        arm64)          ESUM='5f9c96b656827b9d14ebeda7739e25be554fa6d25669b03847c1df6e869c0679';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12_8.tar.gz';          ;;        ppc64el)          ESUM='fe1b73886269d589336532c31c0db0d01ac7cd567313cfe3e76f02b37b58c068';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12_8.tar.gz';          ;;        s390x)          ESUM='2ec0aecaec755ffa8c7904983f89873e51c28e683de39946ba49496acae8fe96';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12%2B8/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 01:25:06 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:25:06 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:25:06 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:31 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Wed, 09 Sep 2026 02:29:31 GMT
WORKDIR /liquibase
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Wed, 09 Sep 2026 02:29:33 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LPM_VERSION=0.2.14
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Wed, 09 Sep 2026 02:29:33 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.version=5.0.1
# Wed, 09 Sep 2026 02:29:33 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Wed, 09 Sep 2026 02:29:42 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Wed, 09 Sep 2026 02:29:42 GMT
ENV LIQUIBASE_HOME=/liquibase
# Wed, 09 Sep 2026 02:29:42 GMT
ENV DOCKER_LIQUIBASE=true
# Wed, 09 Sep 2026 02:29:42 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Wed, 09 Sep 2026 02:29:42 GMT
COPY liquibase.docker.properties ./ # buildkit
# Wed, 09 Sep 2026 02:29:42 GMT
USER liquibase:liquibase
# Wed, 09 Sep 2026 02:29:42 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:29:42 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672ea238ab994cea2a62e2600306c6c40c6c35d46f0a711628a78eb6f9c8d6f0`  
		Last Modified: Wed, 09 Sep 2026 01:25:59 GMT  
		Size: 16.0 MB (16036388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fe86bf9761296d50620534871e966b7fd4028c61242d9ec03bb934ed3f54092`  
		Last Modified: Wed, 09 Sep 2026 01:26:00 GMT  
		Size: 52.3 MB (52273318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd6ada92f9b5c5d4dce60c5e9fdd7c51178f0a12b68bbe85db55d5654d12ff8`  
		Last Modified: Wed, 09 Sep 2026 01:25:58 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db701940256c28f9cb6c9b31273591bea8dbea74067b161fd1f9977954332457`  
		Last Modified: Wed, 09 Sep 2026 01:25:58 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044335615d85decf487d4fdc5b70b2d805c750dd2069db804cc328150d2515c4`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 4.3 KB (4314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad98dfbfd5de25c9e206ab63d7d85e249d52794baad68316532d80ca75bb763a`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 8.7 MB (8665797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6298dfc08458aa9707afc603d6fa166b8392b43a49b29a541416375292b17aaa`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 3.4 MB (3441760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43009cdcc3eec370952c8bdb48fa601f15c0dd054b1c1aee1cc925ba5410e448`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cf5cac8fe9a454e153276641ea6bf0d4976abf99a718a63350339340697a593`  
		Last Modified: Wed, 09 Sep 2026 02:29:52 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:226b3536e81367e26d5df0edb017d5389d6528fe5337bc2fd343f7111d315248
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3907877 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3bbcb81e74503010b85a302b1cdceed062443c9f2717a6d594148bb1a35881`

```dockerfile
```

-	Layers:
	-	`sha256:d258ae4881aef4b5c787a91704502ff148ac11ba61c1bf177a2450be0b72837e`  
		Last Modified: Wed, 09 Sep 2026 02:29:51 GMT  
		Size: 3.9 MB (3883432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67663fa76b334e2f3f48938b48dd29e1f8950cdf3cf91a12852021656ff02830`  
		Last Modified: Wed, 09 Sep 2026 02:29:50 GMT  
		Size: 24.4 KB (24445 bytes)  
		MIME: application/vnd.in-toto+json
