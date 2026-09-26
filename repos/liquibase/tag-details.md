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
$ docker pull liquibase@sha256:ec0d60478265df3fbf0bedb680f7aa0fad74609e02d2c4385676e99055529317
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0` - linux; amd64

```console
$ docker pull liquibase@sha256:40a9bf3aa598851f9f12bd4fc588cf9673b8149682ce44ab5b856e1dacf145a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111401126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c87092aa22b8e9fea7a3c19e68c6ce8baa201a1f8177d0e066be03ab5e6ecea9`
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
# Fri, 25 Sep 2026 22:37:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:37:31 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:07:32 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 25 Sep 2026 23:07:32 GMT
WORKDIR /liquibase
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 25 Sep 2026 23:07:33 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LPM_VERSION=0.2.14
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 25 Sep 2026 23:07:41 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 25 Sep 2026 23:07:41 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 25 Sep 2026 23:07:41 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 25 Sep 2026 23:07:41 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 25 Sep 2026 23:07:41 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 25 Sep 2026 23:07:41 GMT
USER liquibase:liquibase
# Fri, 25 Sep 2026 23:07:41 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:07:41 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283c139709fe7bcd89a1cc7c302b901b0d9729aaa0536d1eaa8d46d48c8e9cd6`  
		Last Modified: Fri, 25 Sep 2026 22:37:46 GMT  
		Size: 16.1 MB (16114061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b841c180a91f75f5d01a2aed904d56f2c6a0808b2346236f853ab6a26841b07`  
		Last Modified: Fri, 25 Sep 2026 22:38:29 GMT  
		Size: 53.1 MB (53097305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63613abe73dc47abe044fc4ab923aeaf0ea86c58ced1fe5e23e632f9176a93ea`  
		Last Modified: Fri, 25 Sep 2026 22:38:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce110be0146dbad245d038711c5d2bb77782715c20216ddd46bde4b6ebf07a22`  
		Last Modified: Fri, 25 Sep 2026 22:38:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c5d081cb6c3d36bb8318bbd4e4c3b894e5b01d9e5fd5f0a30b52f8c8c1aaf0`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7205897cb14eab1c8ccf5378f0e00d507460c77ccce9b50a31e5db0a01426bf`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 8.7 MB (8665802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf79417c1dbf09a69be8dc45d093045fbbcdf0e83bbfaa7f8aca36227135a19`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 3.8 MB (3765150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89849924ec51f3a3b51c1734cce49b2caf7efdc584771cc8a631d4cab0b12a6b`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d7bff79d4fad438c5a8d48fe2323ee9697aa377c9d2abea34ccf738fd3b340`  
		Last Modified: Fri, 25 Sep 2026 23:07:51 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:ba88e9a719823aaa6ef9eb8c53ae8e005dd442ceaa15351b1f1f0b78d6e9c869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3908101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690f2e00b9fb9207ecd191f1cb552f3850317ca44f45daf2dc1b3f428f93f459`

```dockerfile
```

-	Layers:
	-	`sha256:8c649dbe7030486d9ce5b650efd6b4ade0ec15d4959ae3ae0a73c9e33dc71bef`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 3.9 MB (3883772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:627a5b52fe4b9cb1cb32a54fe44fc6879500dbcc53c629b27a097197f0c66341`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 24.3 KB (24329 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:1230025ec89dc14cbdffe3e971f7cd34b02e59b99eaac2868d66a199dd16f72f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108120762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908bf6368aaf5232a9470489954e191314a61a57097045b2720b0b14193bb602`
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
# Fri, 25 Sep 2026 22:35:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:12 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:04:57 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 25 Sep 2026 23:04:57 GMT
WORKDIR /liquibase
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 25 Sep 2026 23:04:58 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LPM_VERSION=0.2.14
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 25 Sep 2026 23:05:06 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 25 Sep 2026 23:05:06 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 25 Sep 2026 23:05:06 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 25 Sep 2026 23:05:06 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 25 Sep 2026 23:05:06 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 25 Sep 2026 23:05:06 GMT
USER liquibase:liquibase
# Fri, 25 Sep 2026 23:05:06 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:05:06 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed38533225ab96284d0a7bda3e8b9e3b639358f247e1171c8730331834d0a85`  
		Last Modified: Fri, 25 Sep 2026 22:35:29 GMT  
		Size: 16.0 MB (16048264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabaa82ef032dc31156ff734a522a97ab0ba09c4773cb3374a5bb1e4c9d551a1`  
		Last Modified: Fri, 25 Sep 2026 22:35:30 GMT  
		Size: 52.3 MB (52273629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fd64a46cc5957d6a6565949ad86d420d365b0ff7947ce02eaa405af8f1cf01`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68382b26852af621b179e9c17bc9394838df450be8a15eb81512097d192f082`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5de95e0cdc411fe9c02c63744235e68030b73a831e78ae3ed6d1c02ba10f090`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c401417d6a9e6772979db4daf8f1f90ccbf751cab1169709cf437aa4274200c`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 8.7 MB (8665800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74257a1447c4dece86e15c32cd76602f3aaad5c8cc50e09e32c9057a635fcbac`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 3.4 MB (3441753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e1f5a0081d0770a9095072f7543cb371e94c49742f8d1d9d5cc9c89b913ff1`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cf95b668c433e568c5323216d20eb3d1ea35768592d20b23564adf5c441353`  
		Last Modified: Fri, 25 Sep 2026 23:05:16 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:36c608cc5a49924d22a50ca9e2bcf24dc3f56f8a2b1ad2db9686a864de831711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3907891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff1108acff4320160ffce57a17a7f4c743f01ce81fe7381bacf16fe734abece`

```dockerfile
```

-	Layers:
	-	`sha256:12abce3e4fcb8deba28604b40b54887baecd2b12fcafbd0fee7792818c2db4a7`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 3.9 MB (3883440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a18bcedf1a405b76b6039ed2c735fc94b117d70bcd649b7cd176fee2d63a7b1d`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 24.5 KB (24451 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:5.0-alpine`

```console
$ docker pull liquibase@sha256:f93a82c34b49e3557e49b3fd69ceb7a3b1bd50bea977bc9c452dda7f359370a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0-alpine` - linux; amd64

```console
$ docker pull liquibase@sha256:c42d095a9d09e19fbfcfd62e7a179fe2ac1fd89d716555aed5e80def7c3b273b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84105710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9456b7e5ab4d2135b6409628273cf7d3a1ea89c59acf4fdce853cc3e26ba4414`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:08 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 17 Sep 2026 21:47:10 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 17 Sep 2026 21:47:10 GMT
WORKDIR /liquibase
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 17 Sep 2026 21:47:12 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LPM_VERSION=0.2.14
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 17 Sep 2026 21:47:13 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 17 Sep 2026 21:47:13 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 17 Sep 2026 21:47:13 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 17 Sep 2026 21:47:13 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:47:13 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 17 Sep 2026 21:47:13 GMT
USER liquibase:liquibase
# Thu, 17 Sep 2026 21:47:13 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:13 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3985237039c9367dade70640ee1779ef029635c74ea354eb5e50c84296adc42f`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17fb838ec6697f3a036e6d32efc5b147dc04831bfb017eed6dc845abb6f4875`  
		Last Modified: Thu, 17 Sep 2026 21:47:26 GMT  
		Size: 67.9 MB (67941262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a627cf0a5169a1e1487ef75b4e6f72fac643e65d3f8da27b756d29351bc8161d`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 8.7 MB (8687855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f84561c4599930659aa004706795a2b5e34a9bab169312a9b3462caac4dc57`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 3.7 MB (3681949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fd5e4669a47727d3e73fbf3f1078a25165b71651ab388289f1784206889d5d`  
		Last Modified: Thu, 17 Sep 2026 21:47:25 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07711533981f0bbfe33ecd269cf3ab528baebd3cac8b830512c2f12fa35eed2f`  
		Last Modified: Thu, 17 Sep 2026 21:47:25 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:f197561e3dabbed13e0de504a0cf4e477461da96688e1b0fcd31463d86c9325f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.9 KB (364858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f964d3114dc2275c4707389a2beb9830d761933d5d3d0b538c2570018afd748f`

```dockerfile
```

-	Layers:
	-	`sha256:6b9744abf6c114fde49033d90dbe7db40397dc073c193d110290779cf73d96c0`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 343.2 KB (343201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f76e46085aaee9c118a6a739565ac312bab2807703a00ba0cbc8124e63791b`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 21.7 KB (21657 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0-alpine` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:2dbddb3c679e2a2aedd4b272762895ead88013a7630e80dfea8a12b8f0b5df60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83101161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7d074e571e15114224efa22f99c2e5afb05e2c64bc27e67d4492004ff5e223`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:46:54 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 17 Sep 2026 21:46:56 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 17 Sep 2026 21:46:56 GMT
WORKDIR /liquibase
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 17 Sep 2026 21:46:58 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LPM_VERSION=0.2.14
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 17 Sep 2026 21:47:00 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 17 Sep 2026 21:47:00 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 17 Sep 2026 21:47:00 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 17 Sep 2026 21:47:00 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:47:00 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 17 Sep 2026 21:47:00 GMT
USER liquibase:liquibase
# Thu, 17 Sep 2026 21:47:00 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:00 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ed98ece30faad0ad1cc6e91e650689162e078c16f7058d32a68837861624dd`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2765e0fdf13b095b5c649884ce914aea0cb853a379f0172806bc00149689483`  
		Last Modified: Thu, 17 Sep 2026 21:47:14 GMT  
		Size: 66.9 MB (66928562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3684f6019aa2492ba75d41d700b7ee09bb5ed296a1d6ca2232057ceb89a87b35`  
		Last Modified: Thu, 17 Sep 2026 21:47:13 GMT  
		Size: 8.7 MB (8687865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a634c8b5c241503c5950118dfc0aa58ce57734f38caf1f9bdd43c9ffaf6e775`  
		Last Modified: Thu, 17 Sep 2026 21:47:13 GMT  
		Size: 3.4 MB (3359080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f49be6d1f645f66cd02f6a940b73913622ac592334a6fc9a3e7c794aa34ba7`  
		Last Modified: Thu, 17 Sep 2026 21:47:13 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7c96d63d639d14266d0008fc3bddf81aebda2cf6debce7abaec1eb5c777ef8`  
		Last Modified: Thu, 17 Sep 2026 21:47:14 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:556fa07b9f53a6c7a4061a26e77e1fa9e0cb4a0238dbf99950506be1f32a445d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 KB (364242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4447fb5d75fdb52c254badfb5411b0051b649cc961b1fa2d5e9ae15cd0c7cd0b`

```dockerfile
```

-	Layers:
	-	`sha256:6182ae0767a13bc2b300217ae5e510fadb25d019a4bf2f51a216fd42932ed012`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 342.4 KB (342448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee976e82946d789428d57df75c44a50157d40346cc3d3d6b814f8b31155b31d8`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 21.8 KB (21794 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:5.0.1`

```console
$ docker pull liquibase@sha256:ec0d60478265df3fbf0bedb680f7aa0fad74609e02d2c4385676e99055529317
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0.1` - linux; amd64

```console
$ docker pull liquibase@sha256:40a9bf3aa598851f9f12bd4fc588cf9673b8149682ce44ab5b856e1dacf145a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111401126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c87092aa22b8e9fea7a3c19e68c6ce8baa201a1f8177d0e066be03ab5e6ecea9`
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
# Fri, 25 Sep 2026 22:37:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:37:31 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:07:32 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 25 Sep 2026 23:07:32 GMT
WORKDIR /liquibase
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 25 Sep 2026 23:07:33 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LPM_VERSION=0.2.14
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 25 Sep 2026 23:07:41 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 25 Sep 2026 23:07:41 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 25 Sep 2026 23:07:41 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 25 Sep 2026 23:07:41 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 25 Sep 2026 23:07:41 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 25 Sep 2026 23:07:41 GMT
USER liquibase:liquibase
# Fri, 25 Sep 2026 23:07:41 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:07:41 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283c139709fe7bcd89a1cc7c302b901b0d9729aaa0536d1eaa8d46d48c8e9cd6`  
		Last Modified: Fri, 25 Sep 2026 22:37:46 GMT  
		Size: 16.1 MB (16114061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b841c180a91f75f5d01a2aed904d56f2c6a0808b2346236f853ab6a26841b07`  
		Last Modified: Fri, 25 Sep 2026 22:38:29 GMT  
		Size: 53.1 MB (53097305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63613abe73dc47abe044fc4ab923aeaf0ea86c58ced1fe5e23e632f9176a93ea`  
		Last Modified: Fri, 25 Sep 2026 22:38:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce110be0146dbad245d038711c5d2bb77782715c20216ddd46bde4b6ebf07a22`  
		Last Modified: Fri, 25 Sep 2026 22:38:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c5d081cb6c3d36bb8318bbd4e4c3b894e5b01d9e5fd5f0a30b52f8c8c1aaf0`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7205897cb14eab1c8ccf5378f0e00d507460c77ccce9b50a31e5db0a01426bf`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 8.7 MB (8665802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf79417c1dbf09a69be8dc45d093045fbbcdf0e83bbfaa7f8aca36227135a19`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 3.8 MB (3765150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89849924ec51f3a3b51c1734cce49b2caf7efdc584771cc8a631d4cab0b12a6b`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d7bff79d4fad438c5a8d48fe2323ee9697aa377c9d2abea34ccf738fd3b340`  
		Last Modified: Fri, 25 Sep 2026 23:07:51 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:ba88e9a719823aaa6ef9eb8c53ae8e005dd442ceaa15351b1f1f0b78d6e9c869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3908101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690f2e00b9fb9207ecd191f1cb552f3850317ca44f45daf2dc1b3f428f93f459`

```dockerfile
```

-	Layers:
	-	`sha256:8c649dbe7030486d9ce5b650efd6b4ade0ec15d4959ae3ae0a73c9e33dc71bef`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 3.9 MB (3883772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:627a5b52fe4b9cb1cb32a54fe44fc6879500dbcc53c629b27a097197f0c66341`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 24.3 KB (24329 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0.1` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:1230025ec89dc14cbdffe3e971f7cd34b02e59b99eaac2868d66a199dd16f72f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108120762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908bf6368aaf5232a9470489954e191314a61a57097045b2720b0b14193bb602`
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
# Fri, 25 Sep 2026 22:35:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:12 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:04:57 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 25 Sep 2026 23:04:57 GMT
WORKDIR /liquibase
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 25 Sep 2026 23:04:58 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LPM_VERSION=0.2.14
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 25 Sep 2026 23:05:06 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 25 Sep 2026 23:05:06 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 25 Sep 2026 23:05:06 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 25 Sep 2026 23:05:06 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 25 Sep 2026 23:05:06 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 25 Sep 2026 23:05:06 GMT
USER liquibase:liquibase
# Fri, 25 Sep 2026 23:05:06 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:05:06 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed38533225ab96284d0a7bda3e8b9e3b639358f247e1171c8730331834d0a85`  
		Last Modified: Fri, 25 Sep 2026 22:35:29 GMT  
		Size: 16.0 MB (16048264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabaa82ef032dc31156ff734a522a97ab0ba09c4773cb3374a5bb1e4c9d551a1`  
		Last Modified: Fri, 25 Sep 2026 22:35:30 GMT  
		Size: 52.3 MB (52273629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fd64a46cc5957d6a6565949ad86d420d365b0ff7947ce02eaa405af8f1cf01`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68382b26852af621b179e9c17bc9394838df450be8a15eb81512097d192f082`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5de95e0cdc411fe9c02c63744235e68030b73a831e78ae3ed6d1c02ba10f090`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c401417d6a9e6772979db4daf8f1f90ccbf751cab1169709cf437aa4274200c`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 8.7 MB (8665800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74257a1447c4dece86e15c32cd76602f3aaad5c8cc50e09e32c9057a635fcbac`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 3.4 MB (3441753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e1f5a0081d0770a9095072f7543cb371e94c49742f8d1d9d5cc9c89b913ff1`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cf95b668c433e568c5323216d20eb3d1ea35768592d20b23564adf5c441353`  
		Last Modified: Fri, 25 Sep 2026 23:05:16 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:36c608cc5a49924d22a50ca9e2bcf24dc3f56f8a2b1ad2db9686a864de831711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3907891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff1108acff4320160ffce57a17a7f4c743f01ce81fe7381bacf16fe734abece`

```dockerfile
```

-	Layers:
	-	`sha256:12abce3e4fcb8deba28604b40b54887baecd2b12fcafbd0fee7792818c2db4a7`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 3.9 MB (3883440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a18bcedf1a405b76b6039ed2c735fc94b117d70bcd649b7cd176fee2d63a7b1d`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 24.5 KB (24451 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:5.0.1-alpine`

```console
$ docker pull liquibase@sha256:f93a82c34b49e3557e49b3fd69ceb7a3b1bd50bea977bc9c452dda7f359370a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0.1-alpine` - linux; amd64

```console
$ docker pull liquibase@sha256:c42d095a9d09e19fbfcfd62e7a179fe2ac1fd89d716555aed5e80def7c3b273b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84105710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9456b7e5ab4d2135b6409628273cf7d3a1ea89c59acf4fdce853cc3e26ba4414`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:08 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 17 Sep 2026 21:47:10 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 17 Sep 2026 21:47:10 GMT
WORKDIR /liquibase
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 17 Sep 2026 21:47:12 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LPM_VERSION=0.2.14
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 17 Sep 2026 21:47:13 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 17 Sep 2026 21:47:13 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 17 Sep 2026 21:47:13 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 17 Sep 2026 21:47:13 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:47:13 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 17 Sep 2026 21:47:13 GMT
USER liquibase:liquibase
# Thu, 17 Sep 2026 21:47:13 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:13 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3985237039c9367dade70640ee1779ef029635c74ea354eb5e50c84296adc42f`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17fb838ec6697f3a036e6d32efc5b147dc04831bfb017eed6dc845abb6f4875`  
		Last Modified: Thu, 17 Sep 2026 21:47:26 GMT  
		Size: 67.9 MB (67941262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a627cf0a5169a1e1487ef75b4e6f72fac643e65d3f8da27b756d29351bc8161d`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 8.7 MB (8687855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f84561c4599930659aa004706795a2b5e34a9bab169312a9b3462caac4dc57`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 3.7 MB (3681949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fd5e4669a47727d3e73fbf3f1078a25165b71651ab388289f1784206889d5d`  
		Last Modified: Thu, 17 Sep 2026 21:47:25 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07711533981f0bbfe33ecd269cf3ab528baebd3cac8b830512c2f12fa35eed2f`  
		Last Modified: Thu, 17 Sep 2026 21:47:25 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:f197561e3dabbed13e0de504a0cf4e477461da96688e1b0fcd31463d86c9325f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.9 KB (364858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f964d3114dc2275c4707389a2beb9830d761933d5d3d0b538c2570018afd748f`

```dockerfile
```

-	Layers:
	-	`sha256:6b9744abf6c114fde49033d90dbe7db40397dc073c193d110290779cf73d96c0`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 343.2 KB (343201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f76e46085aaee9c118a6a739565ac312bab2807703a00ba0cbc8124e63791b`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 21.7 KB (21657 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0.1-alpine` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:2dbddb3c679e2a2aedd4b272762895ead88013a7630e80dfea8a12b8f0b5df60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83101161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7d074e571e15114224efa22f99c2e5afb05e2c64bc27e67d4492004ff5e223`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:46:54 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 17 Sep 2026 21:46:56 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 17 Sep 2026 21:46:56 GMT
WORKDIR /liquibase
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 17 Sep 2026 21:46:58 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LPM_VERSION=0.2.14
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 17 Sep 2026 21:47:00 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 17 Sep 2026 21:47:00 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 17 Sep 2026 21:47:00 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 17 Sep 2026 21:47:00 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:47:00 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 17 Sep 2026 21:47:00 GMT
USER liquibase:liquibase
# Thu, 17 Sep 2026 21:47:00 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:00 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ed98ece30faad0ad1cc6e91e650689162e078c16f7058d32a68837861624dd`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2765e0fdf13b095b5c649884ce914aea0cb853a379f0172806bc00149689483`  
		Last Modified: Thu, 17 Sep 2026 21:47:14 GMT  
		Size: 66.9 MB (66928562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3684f6019aa2492ba75d41d700b7ee09bb5ed296a1d6ca2232057ceb89a87b35`  
		Last Modified: Thu, 17 Sep 2026 21:47:13 GMT  
		Size: 8.7 MB (8687865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a634c8b5c241503c5950118dfc0aa58ce57734f38caf1f9bdd43c9ffaf6e775`  
		Last Modified: Thu, 17 Sep 2026 21:47:13 GMT  
		Size: 3.4 MB (3359080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f49be6d1f645f66cd02f6a940b73913622ac592334a6fc9a3e7c794aa34ba7`  
		Last Modified: Thu, 17 Sep 2026 21:47:13 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7c96d63d639d14266d0008fc3bddf81aebda2cf6debce7abaec1eb5c777ef8`  
		Last Modified: Thu, 17 Sep 2026 21:47:14 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:556fa07b9f53a6c7a4061a26e77e1fa9e0cb4a0238dbf99950506be1f32a445d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 KB (364242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4447fb5d75fdb52c254badfb5411b0051b649cc961b1fa2d5e9ae15cd0c7cd0b`

```dockerfile
```

-	Layers:
	-	`sha256:6182ae0767a13bc2b300217ae5e510fadb25d019a4bf2f51a216fd42932ed012`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 342.4 KB (342448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee976e82946d789428d57df75c44a50157d40346cc3d3d6b814f8b31155b31d8`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 21.8 KB (21794 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:alpine`

```console
$ docker pull liquibase@sha256:f93a82c34b49e3557e49b3fd69ceb7a3b1bd50bea977bc9c452dda7f359370a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:alpine` - linux; amd64

```console
$ docker pull liquibase@sha256:c42d095a9d09e19fbfcfd62e7a179fe2ac1fd89d716555aed5e80def7c3b273b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84105710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9456b7e5ab4d2135b6409628273cf7d3a1ea89c59acf4fdce853cc3e26ba4414`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:44 GMT
ADD alpine-minirootfs-3.22.6-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:44 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:47:08 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 17 Sep 2026 21:47:10 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 17 Sep 2026 21:47:10 GMT
WORKDIR /liquibase
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 17 Sep 2026 21:47:12 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LPM_VERSION=0.2.14
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 17 Sep 2026 21:47:12 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 17 Sep 2026 21:47:12 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 17 Sep 2026 21:47:13 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 17 Sep 2026 21:47:13 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 17 Sep 2026 21:47:13 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 17 Sep 2026 21:47:13 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:47:13 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 17 Sep 2026 21:47:13 GMT
USER liquibase:liquibase
# Thu, 17 Sep 2026 21:47:13 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:13 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:53f8f5e03afd86ade91b7aa57a749f5a3d1419c113be5d8c10e7ee61bb5ab887`  
		Last Modified: Thu, 17 Sep 2026 20:37:49 GMT  
		Size: 3.8 MB (3792075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3985237039c9367dade70640ee1779ef029635c74ea354eb5e50c84296adc42f`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17fb838ec6697f3a036e6d32efc5b147dc04831bfb017eed6dc845abb6f4875`  
		Last Modified: Thu, 17 Sep 2026 21:47:26 GMT  
		Size: 67.9 MB (67941262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a627cf0a5169a1e1487ef75b4e6f72fac643e65d3f8da27b756d29351bc8161d`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 8.7 MB (8687855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61f84561c4599930659aa004706795a2b5e34a9bab169312a9b3462caac4dc57`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 3.7 MB (3681949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27fd5e4669a47727d3e73fbf3f1078a25165b71651ab388289f1784206889d5d`  
		Last Modified: Thu, 17 Sep 2026 21:47:25 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07711533981f0bbfe33ecd269cf3ab528baebd3cac8b830512c2f12fa35eed2f`  
		Last Modified: Thu, 17 Sep 2026 21:47:25 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:f197561e3dabbed13e0de504a0cf4e477461da96688e1b0fcd31463d86c9325f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.9 KB (364858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f964d3114dc2275c4707389a2beb9830d761933d5d3d0b538c2570018afd748f`

```dockerfile
```

-	Layers:
	-	`sha256:6b9744abf6c114fde49033d90dbe7db40397dc073c193d110290779cf73d96c0`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 343.2 KB (343201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d3f76e46085aaee9c118a6a739565ac312bab2807703a00ba0cbc8124e63791b`  
		Last Modified: Thu, 17 Sep 2026 21:47:24 GMT  
		Size: 21.7 KB (21657 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:alpine` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:2dbddb3c679e2a2aedd4b272762895ead88013a7630e80dfea8a12b8f0b5df60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83101161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a7d074e571e15114224efa22f99c2e5afb05e2c64bc27e67d4492004ff5e223`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:46:54 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 17 Sep 2026 21:46:56 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 17 Sep 2026 21:46:56 GMT
WORKDIR /liquibase
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 17 Sep 2026 21:46:58 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LPM_VERSION=0.2.14
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 17 Sep 2026 21:46:58 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 17 Sep 2026 21:46:58 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 17 Sep 2026 21:47:00 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 17 Sep 2026 21:47:00 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 17 Sep 2026 21:47:00 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 17 Sep 2026 21:47:00 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 17 Sep 2026 21:47:00 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 17 Sep 2026 21:47:00 GMT
USER liquibase:liquibase
# Thu, 17 Sep 2026 21:47:00 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:47:00 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ed98ece30faad0ad1cc6e91e650689162e078c16f7058d32a68837861624dd`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2765e0fdf13b095b5c649884ce914aea0cb853a379f0172806bc00149689483`  
		Last Modified: Thu, 17 Sep 2026 21:47:14 GMT  
		Size: 66.9 MB (66928562 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3684f6019aa2492ba75d41d700b7ee09bb5ed296a1d6ca2232057ceb89a87b35`  
		Last Modified: Thu, 17 Sep 2026 21:47:13 GMT  
		Size: 8.7 MB (8687865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a634c8b5c241503c5950118dfc0aa58ce57734f38caf1f9bdd43c9ffaf6e775`  
		Last Modified: Thu, 17 Sep 2026 21:47:13 GMT  
		Size: 3.4 MB (3359080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f49be6d1f645f66cd02f6a940b73913622ac592334a6fc9a3e7c794aa34ba7`  
		Last Modified: Thu, 17 Sep 2026 21:47:13 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d7c96d63d639d14266d0008fc3bddf81aebda2cf6debce7abaec1eb5c777ef8`  
		Last Modified: Thu, 17 Sep 2026 21:47:14 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:556fa07b9f53a6c7a4061a26e77e1fa9e0cb4a0238dbf99950506be1f32a445d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **364.2 KB (364242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4447fb5d75fdb52c254badfb5411b0051b649cc961b1fa2d5e9ae15cd0c7cd0b`

```dockerfile
```

-	Layers:
	-	`sha256:6182ae0767a13bc2b300217ae5e510fadb25d019a4bf2f51a216fd42932ed012`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 342.4 KB (342448 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ee976e82946d789428d57df75c44a50157d40346cc3d3d6b814f8b31155b31d8`  
		Last Modified: Thu, 17 Sep 2026 21:47:12 GMT  
		Size: 21.8 KB (21794 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:latest`

```console
$ docker pull liquibase@sha256:ec0d60478265df3fbf0bedb680f7aa0fad74609e02d2c4385676e99055529317
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:latest` - linux; amd64

```console
$ docker pull liquibase@sha256:40a9bf3aa598851f9f12bd4fc588cf9673b8149682ce44ab5b856e1dacf145a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111401126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c87092aa22b8e9fea7a3c19e68c6ce8baa201a1f8177d0e066be03ab5e6ecea9`
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
# Fri, 25 Sep 2026 22:37:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:37:31 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:38:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:38:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:07:32 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 25 Sep 2026 23:07:32 GMT
WORKDIR /liquibase
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 25 Sep 2026 23:07:33 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LPM_VERSION=0.2.14
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 25 Sep 2026 23:07:33 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 25 Sep 2026 23:07:33 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 25 Sep 2026 23:07:41 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 25 Sep 2026 23:07:41 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 25 Sep 2026 23:07:41 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 25 Sep 2026 23:07:41 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 25 Sep 2026 23:07:41 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 25 Sep 2026 23:07:41 GMT
USER liquibase:liquibase
# Fri, 25 Sep 2026 23:07:41 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:07:41 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283c139709fe7bcd89a1cc7c302b901b0d9729aaa0536d1eaa8d46d48c8e9cd6`  
		Last Modified: Fri, 25 Sep 2026 22:37:46 GMT  
		Size: 16.1 MB (16114061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b841c180a91f75f5d01a2aed904d56f2c6a0808b2346236f853ab6a26841b07`  
		Last Modified: Fri, 25 Sep 2026 22:38:29 GMT  
		Size: 53.1 MB (53097305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63613abe73dc47abe044fc4ab923aeaf0ea86c58ced1fe5e23e632f9176a93ea`  
		Last Modified: Fri, 25 Sep 2026 22:38:28 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce110be0146dbad245d038711c5d2bb77782715c20216ddd46bde4b6ebf07a22`  
		Last Modified: Fri, 25 Sep 2026 22:38:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c5d081cb6c3d36bb8318bbd4e4c3b894e5b01d9e5fd5f0a30b52f8c8c1aaf0`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7205897cb14eab1c8ccf5378f0e00d507460c77ccce9b50a31e5db0a01426bf`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 8.7 MB (8665802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf79417c1dbf09a69be8dc45d093045fbbcdf0e83bbfaa7f8aca36227135a19`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 3.8 MB (3765150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89849924ec51f3a3b51c1734cce49b2caf7efdc584771cc8a631d4cab0b12a6b`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d7bff79d4fad438c5a8d48fe2323ee9697aa377c9d2abea34ccf738fd3b340`  
		Last Modified: Fri, 25 Sep 2026 23:07:51 GMT  
		Size: 168.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:ba88e9a719823aaa6ef9eb8c53ae8e005dd442ceaa15351b1f1f0b78d6e9c869
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3908101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690f2e00b9fb9207ecd191f1cb552f3850317ca44f45daf2dc1b3f428f93f459`

```dockerfile
```

-	Layers:
	-	`sha256:8c649dbe7030486d9ce5b650efd6b4ade0ec15d4959ae3ae0a73c9e33dc71bef`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 3.9 MB (3883772 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:627a5b52fe4b9cb1cb32a54fe44fc6879500dbcc53c629b27a097197f0c66341`  
		Last Modified: Fri, 25 Sep 2026 23:07:50 GMT  
		Size: 24.3 KB (24329 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:latest` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:1230025ec89dc14cbdffe3e971f7cd34b02e59b99eaac2868d66a199dd16f72f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108120762 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:908bf6368aaf5232a9470489954e191314a61a57097045b2720b0b14193bb602`
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
# Fri, 25 Sep 2026 22:35:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:35:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:35:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:35:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:35:12 GMT
ENV JAVA_VERSION=jdk-21.0.12.1+1
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2413149700df0f7d440500a84a8f764c535f21e5a5e87d38328b64eec2c5b500';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_x64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        arm64)          ESUM='14be1f35ebdbd1f6e8d57eb911a3ffb74d6d9aa255abc5daf2b1302002cf2cf2';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        ppc64el)          ESUM='d2f07f1d97faab23b3add1af92db402b721b5b251cedab7144fdd4b2bf2e2f13';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        s390x)          ESUM='df43dc82a935868915a4b76227e2c63ffeb32868b608980dc67312a3d6217e1e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.12.1%2B1/OpenJDK21U-jre_s390x_linux_hotspot_21.0.12.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:35:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:04:57 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 25 Sep 2026 23:04:57 GMT
WORKDIR /liquibase
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 25 Sep 2026 23:04:58 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LPM_VERSION=0.2.14
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 25 Sep 2026 23:04:58 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 25 Sep 2026 23:04:58 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 25 Sep 2026 23:05:06 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 25 Sep 2026 23:05:06 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 25 Sep 2026 23:05:06 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 25 Sep 2026 23:05:06 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 25 Sep 2026 23:05:06 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 25 Sep 2026 23:05:06 GMT
USER liquibase:liquibase
# Fri, 25 Sep 2026 23:05:06 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:05:06 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ed38533225ab96284d0a7bda3e8b9e3b639358f247e1171c8730331834d0a85`  
		Last Modified: Fri, 25 Sep 2026 22:35:29 GMT  
		Size: 16.0 MB (16048264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabaa82ef032dc31156ff734a522a97ab0ba09c4773cb3374a5bb1e4c9d551a1`  
		Last Modified: Fri, 25 Sep 2026 22:35:30 GMT  
		Size: 52.3 MB (52273629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10fd64a46cc5957d6a6565949ad86d420d365b0ff7947ce02eaa405af8f1cf01`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e68382b26852af621b179e9c17bc9394838df450be8a15eb81512097d192f082`  
		Last Modified: Fri, 25 Sep 2026 22:35:28 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5de95e0cdc411fe9c02c63744235e68030b73a831e78ae3ed6d1c02ba10f090`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c401417d6a9e6772979db4daf8f1f90ccbf751cab1169709cf437aa4274200c`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 8.7 MB (8665800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74257a1447c4dece86e15c32cd76602f3aaad5c8cc50e09e32c9057a635fcbac`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 3.4 MB (3441753 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e1f5a0081d0770a9095072f7543cb371e94c49742f8d1d9d5cc9c89b913ff1`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06cf95b668c433e568c5323216d20eb3d1ea35768592d20b23564adf5c441353`  
		Last Modified: Fri, 25 Sep 2026 23:05:16 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:36c608cc5a49924d22a50ca9e2bcf24dc3f56f8a2b1ad2db9686a864de831711
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3907891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff1108acff4320160ffce57a17a7f4c743f01ce81fe7381bacf16fe734abece`

```dockerfile
```

-	Layers:
	-	`sha256:12abce3e4fcb8deba28604b40b54887baecd2b12fcafbd0fee7792818c2db4a7`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 3.9 MB (3883440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a18bcedf1a405b76b6039ed2c735fc94b117d70bcd649b7cd176fee2d63a7b1d`  
		Last Modified: Fri, 25 Sep 2026 23:05:15 GMT  
		Size: 24.5 KB (24451 bytes)  
		MIME: application/vnd.in-toto+json
