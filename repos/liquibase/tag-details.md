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
$ docker pull liquibase@sha256:f482f515fe66fb8222428d9f9a130acc7f44dd1e5b873d3d43fb99c3ea97f3b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0` - linux; amd64

```console
$ docker pull liquibase@sha256:9fbbd69fdf0e51cf85b4859583283c6760623bf1908ccb15a7f5756e37c7449f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111838144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6820693e11ec67686550066780f15031366153319524bac7e4d5933abd409ec`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:01 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:36 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 20 Nov 2026 04:22:36 GMT
WORKDIR /liquibase
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 20 Nov 2026 04:22:37 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LPM_VERSION=0.2.14
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 20 Nov 2026 04:22:42 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 20 Nov 2026 04:22:42 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 20 Nov 2026 04:22:42 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
USER liquibase:liquibase
# Fri, 20 Nov 2026 04:22:42 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:42 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7313e67a02dfc38240be83cb78b6c878c3313e0ad99b4fb41362a352141ca0bc`  
		Last Modified: Fri, 20 Nov 2026 03:17:18 GMT  
		Size: 16.1 MB (16116459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860d119a42585002c16d5d3b4529c4a302845f20cade3d00040013bff16bff72`  
		Last Modified: Fri, 20 Nov 2026 03:17:19 GMT  
		Size: 53.2 MB (53212250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dbf06c79d3ec03c72752727cfed04df87aa1a8ed90118e02d584219391af7a`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa15c5b111790b02ebff7bc152bb6bb2310a9175f88efae74d89935237f87843`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8e5f7660a347dc4d376a5e57122490caa506e1cdf41e9d0f983278e4167b79`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b176b5b8d65baf1f1120b825798b4d0806b2ed5cdb128726a771e08222ece006`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 8.7 MB (8665796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a752063f9c8a6ce94440d55324cd2c84042a4c365fc5bd5bc367abb6e10136c4`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 3.8 MB (3765267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a398a42c4b9eb427553b2c64d60bd0d13cd933556c0bea89fe432e35b43e9d4`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e500389e2b1f47fa18d4ab49a9e1d43f115c7249a35fbc67b57321c9bac0ce`  
		Last Modified: Fri, 20 Nov 2026 04:22:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:bf04a568336a9bb7acc16b0b7c4748a221f861cc09e8f0fc82644e8afacefd37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83585b155344e5148d07a97e82b0ed81fa824e7dc598fe9612dc83dc247151a0`

```dockerfile
```

-	Layers:
	-	`sha256:1a57ad9223653eb825c8b577a06515564ef9de797e3b9b6cc59aec903a1b473a`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 3.9 MB (3882162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d47d8643852faf5ddf4e4d591c3de1d4294091daa496c84652029067e95e7b74`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 24.3 KB (24323 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:3dd1b0f94eb1904a4dbc6ec9ab174a78aac889a3ce6a7ad2b253a64aa786e3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108559691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bdf82a79bdac299ab8b95278b79fe4839f34f7327b8c13bba59bdf5ba465f5`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:23 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:12 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 20 Nov 2026 04:23:12 GMT
WORKDIR /liquibase
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 20 Nov 2026 04:23:14 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LPM_VERSION=0.2.14
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 20 Nov 2026 04:23:19 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 20 Nov 2026 04:23:19 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 20 Nov 2026 04:23:19 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
USER liquibase:liquibase
# Fri, 20 Nov 2026 04:23:19 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:19 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ef94eb3366d1bc996e03224923f408c9594b4a567d291cfaecc55658180f2a`  
		Last Modified: Fri, 20 Nov 2026 03:16:49 GMT  
		Size: 16.1 MB (16051440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719ee3b5446024b156810745facd44f350c7feb8b22927fc0a7871032af58601`  
		Last Modified: Fri, 20 Nov 2026 03:17:37 GMT  
		Size: 52.4 MB (52390572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adfe4e11e083538a3d3de416b52de5869d649515c4ab52e6d41800a04395e4ef`  
		Last Modified: Fri, 20 Nov 2026 03:17:36 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8001dc1c1d612395f99e6390456ca2622125a2171d0e3772ffe0e25799530fd8`  
		Last Modified: Fri, 20 Nov 2026 03:17:36 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184199c392c00ffcaac201e36488861a22319a952531e3ad73bcde7ed2897f11`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a8a871420014f71bfdb0ffeb415dae00f640a01e43c63e9eadfef9e539767b`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 8.7 MB (8665794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4544e47a319ab3b2f15eb34fa03ac14a23e2991033622bf2be192d3a8abfc47`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 3.4 MB (3441925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34465db1220aa928700f820dc7380a9c478809d902cfc0f8dc897c631b2a0df7`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327305a4c5833445fddb26f15a92523d8e0af84ec9fae6867af09c34b0479ab6`  
		Last Modified: Fri, 20 Nov 2026 04:23:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:d70818549b4923afdc53010e039febcdb4920235acc6208caa57036a02bb238f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8247b18d9fb9349240c0c6954370dbe6d71bb324ad8a38d1aa442fef1becf4e`

```dockerfile
```

-	Layers:
	-	`sha256:d82896ddced274a53706c1e9720ce9e75c5f6fc5a912e7c8630cc58cb68c535f`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 3.9 MB (3881830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aba033f26d23bc48a38c44a1dc491c281746a2460cd97de496e236ae50aa1f1`  
		Last Modified: Fri, 20 Nov 2026 04:23:27 GMT  
		Size: 24.4 KB (24445 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:5.0-alpine`

```console
$ docker pull liquibase@sha256:36340f78092fdc76d8773c36e19d643028ada944b4a2a119635793df1b9b4a47
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0-alpine` - linux; amd64

```console
$ docker pull liquibase@sha256:cfa53c9f23ae81d525015fb49c8678c6c0529f305e50e503a22e9bcd5ebf8a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84107780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b06649d9690f108892e3660eaf7087df2232ae15bb2cbfef15ca477174af41`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:45 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 05 Nov 2026 19:24:47 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 05 Nov 2026 19:24:47 GMT
WORKDIR /liquibase
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 05 Nov 2026 19:24:49 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_VERSION=0.2.14
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 05 Nov 2026 19:24:50 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 05 Nov 2026 19:24:50 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 05 Nov 2026 19:24:50 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
USER liquibase:liquibase
# Thu, 05 Nov 2026 19:24:50 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:50 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7d07c8cc591afa2574154872f5b0c603cd286c1b2907c2dd93ebb254fbaa50`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6518b5d3bc0f1f93b0225d985f582e67a778f3b8e88c92803213f548d90084a`  
		Last Modified: Thu, 05 Nov 2026 19:25:05 GMT  
		Size: 67.9 MB (67941266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31c2b70acb05b5bd88e84ce90db0d02ef808e48d197f8baa793152cb3605f5a`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 8.7 MB (8687778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62fde5ca9b2e4f52ac499e6154a7c7e8d87633d51a81965df927e495ac02ff4`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 3.7 MB (3681791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971909dd96763ee9340f07114da7a430b60b7d6c024d9213b82231a703c4dce2`  
		Last Modified: Thu, 05 Nov 2026 19:25:04 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2fc6ed24292abadd1f845f8d3781a52ce4cc5d149b0e032bbaa08ddbd0f7f4`  
		Last Modified: Thu, 05 Nov 2026 19:25:04 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:99e69849e427631bd844c195fa632b4f22da8bcccf7ab773c4aa072356bca700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.9 KB (362922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39720960353f5c6fd9b927b4765e62c6d8c12bc979045d8ee20ae4bb782868b`

```dockerfile
```

-	Layers:
	-	`sha256:5e29b1003167f8decef1977ff524cfccd08c66f89c1648bb16e8cd42bdc0776b`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 341.3 KB (341264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce31fbe90358d0e47eed8000543867775538de462e68c4991620cd827f75c612`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 21.7 KB (21658 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0-alpine` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:d61acd3d63b6a75e87bdeba3b14e84b699f5214851f70fca759e8ac487a3db7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83100294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cd9b13feb1d31a22d1a34bf959a301da675a9a26763e13173daba75169fe26`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:53 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 05 Nov 2026 19:18:55 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 05 Nov 2026 19:18:55 GMT
WORKDIR /liquibase
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 05 Nov 2026 19:18:57 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_VERSION=0.2.14
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 05 Nov 2026 19:18:58 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 05 Nov 2026 19:18:58 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 05 Nov 2026 19:18:58 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 05 Nov 2026 19:18:58 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
USER liquibase:liquibase
# Thu, 05 Nov 2026 19:18:59 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:59 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964ff38d7a736eec972f1728812e0e576b8df92b43fcf201e909ac6494610b19`  
		Last Modified: Thu, 05 Nov 2026 19:19:10 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50292ca884546d61449c370564b40db2a8e7f9a4ea1651e7d474ec6eda265c04`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 66.9 MB (66923602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6554b7d847ba3e1a4cfc56a3fd18adc2aba944983dac6029a8b5d6e446d0c042`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 8.7 MB (8687718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fb4a070ad6d3ee31556ae89db67205689e1c090d11b82382ee8ab2edb931f7`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 3.4 MB (3359019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396fd7ff093218d0d3d52e6f9db522cf14fe7b2639ce41229ae3c61e2c42b82b`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578b8822cf7d47590654c466450f1d3f4a53a4d6ae5727f927ccd69913b4fb4d`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:1c6f22cc6ec1cd7a29071d06c738a4c296ac3e20dcaa2f79ae8e6d31b4ebc399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.3 KB (362306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41cc96438d4de5d71f844421ebd5d5a8572f64fdeb24efae753d1bf0b3b05e0a`

```dockerfile
```

-	Layers:
	-	`sha256:0c86500aa143683166abb22d5bc470f2361caf1e0575f10438de91aedbd77d9b`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 340.5 KB (340511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d492a770d995110da195e352b138927527cbc3e042129ebf9edaf709375c272e`  
		Last Modified: Thu, 05 Nov 2026 19:19:10 GMT  
		Size: 21.8 KB (21795 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:5.0.1`

```console
$ docker pull liquibase@sha256:f482f515fe66fb8222428d9f9a130acc7f44dd1e5b873d3d43fb99c3ea97f3b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0.1` - linux; amd64

```console
$ docker pull liquibase@sha256:9fbbd69fdf0e51cf85b4859583283c6760623bf1908ccb15a7f5756e37c7449f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111838144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6820693e11ec67686550066780f15031366153319524bac7e4d5933abd409ec`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:01 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:36 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 20 Nov 2026 04:22:36 GMT
WORKDIR /liquibase
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 20 Nov 2026 04:22:37 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LPM_VERSION=0.2.14
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 20 Nov 2026 04:22:42 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 20 Nov 2026 04:22:42 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 20 Nov 2026 04:22:42 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
USER liquibase:liquibase
# Fri, 20 Nov 2026 04:22:42 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:42 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7313e67a02dfc38240be83cb78b6c878c3313e0ad99b4fb41362a352141ca0bc`  
		Last Modified: Fri, 20 Nov 2026 03:17:18 GMT  
		Size: 16.1 MB (16116459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860d119a42585002c16d5d3b4529c4a302845f20cade3d00040013bff16bff72`  
		Last Modified: Fri, 20 Nov 2026 03:17:19 GMT  
		Size: 53.2 MB (53212250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dbf06c79d3ec03c72752727cfed04df87aa1a8ed90118e02d584219391af7a`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa15c5b111790b02ebff7bc152bb6bb2310a9175f88efae74d89935237f87843`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8e5f7660a347dc4d376a5e57122490caa506e1cdf41e9d0f983278e4167b79`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b176b5b8d65baf1f1120b825798b4d0806b2ed5cdb128726a771e08222ece006`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 8.7 MB (8665796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a752063f9c8a6ce94440d55324cd2c84042a4c365fc5bd5bc367abb6e10136c4`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 3.8 MB (3765267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a398a42c4b9eb427553b2c64d60bd0d13cd933556c0bea89fe432e35b43e9d4`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e500389e2b1f47fa18d4ab49a9e1d43f115c7249a35fbc67b57321c9bac0ce`  
		Last Modified: Fri, 20 Nov 2026 04:22:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:bf04a568336a9bb7acc16b0b7c4748a221f861cc09e8f0fc82644e8afacefd37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83585b155344e5148d07a97e82b0ed81fa824e7dc598fe9612dc83dc247151a0`

```dockerfile
```

-	Layers:
	-	`sha256:1a57ad9223653eb825c8b577a06515564ef9de797e3b9b6cc59aec903a1b473a`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 3.9 MB (3882162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d47d8643852faf5ddf4e4d591c3de1d4294091daa496c84652029067e95e7b74`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 24.3 KB (24323 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0.1` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:3dd1b0f94eb1904a4dbc6ec9ab174a78aac889a3ce6a7ad2b253a64aa786e3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108559691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bdf82a79bdac299ab8b95278b79fe4839f34f7327b8c13bba59bdf5ba465f5`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:23 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:12 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 20 Nov 2026 04:23:12 GMT
WORKDIR /liquibase
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 20 Nov 2026 04:23:14 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LPM_VERSION=0.2.14
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 20 Nov 2026 04:23:19 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 20 Nov 2026 04:23:19 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 20 Nov 2026 04:23:19 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
USER liquibase:liquibase
# Fri, 20 Nov 2026 04:23:19 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:19 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ef94eb3366d1bc996e03224923f408c9594b4a567d291cfaecc55658180f2a`  
		Last Modified: Fri, 20 Nov 2026 03:16:49 GMT  
		Size: 16.1 MB (16051440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719ee3b5446024b156810745facd44f350c7feb8b22927fc0a7871032af58601`  
		Last Modified: Fri, 20 Nov 2026 03:17:37 GMT  
		Size: 52.4 MB (52390572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adfe4e11e083538a3d3de416b52de5869d649515c4ab52e6d41800a04395e4ef`  
		Last Modified: Fri, 20 Nov 2026 03:17:36 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8001dc1c1d612395f99e6390456ca2622125a2171d0e3772ffe0e25799530fd8`  
		Last Modified: Fri, 20 Nov 2026 03:17:36 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184199c392c00ffcaac201e36488861a22319a952531e3ad73bcde7ed2897f11`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a8a871420014f71bfdb0ffeb415dae00f640a01e43c63e9eadfef9e539767b`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 8.7 MB (8665794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4544e47a319ab3b2f15eb34fa03ac14a23e2991033622bf2be192d3a8abfc47`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 3.4 MB (3441925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34465db1220aa928700f820dc7380a9c478809d902cfc0f8dc897c631b2a0df7`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327305a4c5833445fddb26f15a92523d8e0af84ec9fae6867af09c34b0479ab6`  
		Last Modified: Fri, 20 Nov 2026 04:23:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:d70818549b4923afdc53010e039febcdb4920235acc6208caa57036a02bb238f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8247b18d9fb9349240c0c6954370dbe6d71bb324ad8a38d1aa442fef1becf4e`

```dockerfile
```

-	Layers:
	-	`sha256:d82896ddced274a53706c1e9720ce9e75c5f6fc5a912e7c8630cc58cb68c535f`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 3.9 MB (3881830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aba033f26d23bc48a38c44a1dc491c281746a2460cd97de496e236ae50aa1f1`  
		Last Modified: Fri, 20 Nov 2026 04:23:27 GMT  
		Size: 24.4 KB (24445 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:5.0.1-alpine`

```console
$ docker pull liquibase@sha256:36340f78092fdc76d8773c36e19d643028ada944b4a2a119635793df1b9b4a47
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0.1-alpine` - linux; amd64

```console
$ docker pull liquibase@sha256:cfa53c9f23ae81d525015fb49c8678c6c0529f305e50e503a22e9bcd5ebf8a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84107780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b06649d9690f108892e3660eaf7087df2232ae15bb2cbfef15ca477174af41`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:45 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 05 Nov 2026 19:24:47 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 05 Nov 2026 19:24:47 GMT
WORKDIR /liquibase
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 05 Nov 2026 19:24:49 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_VERSION=0.2.14
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 05 Nov 2026 19:24:50 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 05 Nov 2026 19:24:50 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 05 Nov 2026 19:24:50 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
USER liquibase:liquibase
# Thu, 05 Nov 2026 19:24:50 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:50 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7d07c8cc591afa2574154872f5b0c603cd286c1b2907c2dd93ebb254fbaa50`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6518b5d3bc0f1f93b0225d985f582e67a778f3b8e88c92803213f548d90084a`  
		Last Modified: Thu, 05 Nov 2026 19:25:05 GMT  
		Size: 67.9 MB (67941266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31c2b70acb05b5bd88e84ce90db0d02ef808e48d197f8baa793152cb3605f5a`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 8.7 MB (8687778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62fde5ca9b2e4f52ac499e6154a7c7e8d87633d51a81965df927e495ac02ff4`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 3.7 MB (3681791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971909dd96763ee9340f07114da7a430b60b7d6c024d9213b82231a703c4dce2`  
		Last Modified: Thu, 05 Nov 2026 19:25:04 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2fc6ed24292abadd1f845f8d3781a52ce4cc5d149b0e032bbaa08ddbd0f7f4`  
		Last Modified: Thu, 05 Nov 2026 19:25:04 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:99e69849e427631bd844c195fa632b4f22da8bcccf7ab773c4aa072356bca700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.9 KB (362922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39720960353f5c6fd9b927b4765e62c6d8c12bc979045d8ee20ae4bb782868b`

```dockerfile
```

-	Layers:
	-	`sha256:5e29b1003167f8decef1977ff524cfccd08c66f89c1648bb16e8cd42bdc0776b`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 341.3 KB (341264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce31fbe90358d0e47eed8000543867775538de462e68c4991620cd827f75c612`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 21.7 KB (21658 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0.1-alpine` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:d61acd3d63b6a75e87bdeba3b14e84b699f5214851f70fca759e8ac487a3db7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83100294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cd9b13feb1d31a22d1a34bf959a301da675a9a26763e13173daba75169fe26`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:53 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 05 Nov 2026 19:18:55 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 05 Nov 2026 19:18:55 GMT
WORKDIR /liquibase
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 05 Nov 2026 19:18:57 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_VERSION=0.2.14
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 05 Nov 2026 19:18:58 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 05 Nov 2026 19:18:58 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 05 Nov 2026 19:18:58 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 05 Nov 2026 19:18:58 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
USER liquibase:liquibase
# Thu, 05 Nov 2026 19:18:59 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:59 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964ff38d7a736eec972f1728812e0e576b8df92b43fcf201e909ac6494610b19`  
		Last Modified: Thu, 05 Nov 2026 19:19:10 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50292ca884546d61449c370564b40db2a8e7f9a4ea1651e7d474ec6eda265c04`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 66.9 MB (66923602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6554b7d847ba3e1a4cfc56a3fd18adc2aba944983dac6029a8b5d6e446d0c042`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 8.7 MB (8687718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fb4a070ad6d3ee31556ae89db67205689e1c090d11b82382ee8ab2edb931f7`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 3.4 MB (3359019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396fd7ff093218d0d3d52e6f9db522cf14fe7b2639ce41229ae3c61e2c42b82b`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578b8822cf7d47590654c466450f1d3f4a53a4d6ae5727f927ccd69913b4fb4d`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1-alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:1c6f22cc6ec1cd7a29071d06c738a4c296ac3e20dcaa2f79ae8e6d31b4ebc399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.3 KB (362306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41cc96438d4de5d71f844421ebd5d5a8572f64fdeb24efae753d1bf0b3b05e0a`

```dockerfile
```

-	Layers:
	-	`sha256:0c86500aa143683166abb22d5bc470f2361caf1e0575f10438de91aedbd77d9b`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 340.5 KB (340511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d492a770d995110da195e352b138927527cbc3e042129ebf9edaf709375c272e`  
		Last Modified: Thu, 05 Nov 2026 19:19:10 GMT  
		Size: 21.8 KB (21795 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:alpine`

```console
$ docker pull liquibase@sha256:36340f78092fdc76d8773c36e19d643028ada944b4a2a119635793df1b9b4a47
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:alpine` - linux; amd64

```console
$ docker pull liquibase@sha256:cfa53c9f23ae81d525015fb49c8678c6c0529f305e50e503a22e9bcd5ebf8a54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **84.1 MB (84107780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29b06649d9690f108892e3660eaf7087df2232ae15bb2cbfef15ca477174af41`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:05 GMT
ADD alpine-minirootfs-3.22.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:05 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:24:45 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 05 Nov 2026 19:24:47 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 05 Nov 2026 19:24:47 GMT
WORKDIR /liquibase
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 05 Nov 2026 19:24:49 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_VERSION=0.2.14
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 05 Nov 2026 19:24:49 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 05 Nov 2026 19:24:49 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 05 Nov 2026 19:24:50 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 05 Nov 2026 19:24:50 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 05 Nov 2026 19:24:50 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 05 Nov 2026 19:24:50 GMT
USER liquibase:liquibase
# Thu, 05 Nov 2026 19:24:50 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:24:50 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:710f3da1112f360bed5d2908205aeee86b9d04ecd471354cf7049a2f0bdb5c72`  
		Last Modified: Thu, 05 Nov 2026 18:01:11 GMT  
		Size: 3.8 MB (3794375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe7d07c8cc591afa2574154872f5b0c603cd286c1b2907c2dd93ebb254fbaa50`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6518b5d3bc0f1f93b0225d985f582e67a778f3b8e88c92803213f548d90084a`  
		Last Modified: Thu, 05 Nov 2026 19:25:05 GMT  
		Size: 67.9 MB (67941266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31c2b70acb05b5bd88e84ce90db0d02ef808e48d197f8baa793152cb3605f5a`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 8.7 MB (8687778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62fde5ca9b2e4f52ac499e6154a7c7e8d87633d51a81965df927e495ac02ff4`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 3.7 MB (3681791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:971909dd96763ee9340f07114da7a430b60b7d6c024d9213b82231a703c4dce2`  
		Last Modified: Thu, 05 Nov 2026 19:25:04 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2fc6ed24292abadd1f845f8d3781a52ce4cc5d149b0e032bbaa08ddbd0f7f4`  
		Last Modified: Thu, 05 Nov 2026 19:25:04 GMT  
		Size: 174.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:99e69849e427631bd844c195fa632b4f22da8bcccf7ab773c4aa072356bca700
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.9 KB (362922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a39720960353f5c6fd9b927b4765e62c6d8c12bc979045d8ee20ae4bb782868b`

```dockerfile
```

-	Layers:
	-	`sha256:5e29b1003167f8decef1977ff524cfccd08c66f89c1648bb16e8cd42bdc0776b`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 341.3 KB (341264 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce31fbe90358d0e47eed8000543867775538de462e68c4991620cd827f75c612`  
		Last Modified: Thu, 05 Nov 2026 19:25:03 GMT  
		Size: 21.7 KB (21658 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:alpine` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:d61acd3d63b6a75e87bdeba3b14e84b699f5214851f70fca759e8ac487a3db7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **83.1 MB (83100294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cd9b13feb1d31a22d1a34bf959a301da675a9a26763e13173daba75169fe26`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:07 GMT
ADD alpine-minirootfs-3.22.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:07 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:18:53 GMT
RUN addgroup --gid 1001 liquibase &&     adduser --disabled-password --uid 1001 --ingroup liquibase --home /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 05 Nov 2026 19:18:55 GMT
RUN apk add --no-cache openjdk21-jre-headless bash # buildkit
# Thu, 05 Nov 2026 19:18:55 GMT
WORKDIR /liquibase
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 05 Nov 2026 19:18:57 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN set -x &&     apk add --no-cache --virtual .fetch-deps wget &&     wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://github.com/liquibase/liquibase/releases/download/v${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_VERSION=0.2.14
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 05 Nov 2026 19:18:57 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image (Alpine)
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 05 Nov 2026 19:18:57 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 05 Nov 2026 19:18:58 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN mkdir /liquibase/bin &&     apk add --no-cache --virtual .fetch-deps wget unzip &&     arch="$(apk --print-arch)" &&     case "$arch" in       x86_64)   DOWNLOAD_ARCH=""  ;;       aarch64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM  ;;       *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apk del --no-network .fetch-deps &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 05 Nov 2026 19:18:58 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 05 Nov 2026 19:18:58 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 05 Nov 2026 19:18:58 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 05 Nov 2026 19:18:59 GMT
USER liquibase:liquibase
# Thu, 05 Nov 2026 19:18:59 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:18:59 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:fea5b91588ca539ff8a89d7d5df6c6d65d6ab7bd89145ba57f32c302cf02ffbe`  
		Last Modified: Thu, 05 Nov 2026 18:01:13 GMT  
		Size: 4.1 MB (4127385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:964ff38d7a736eec972f1728812e0e576b8df92b43fcf201e909ac6494610b19`  
		Last Modified: Thu, 05 Nov 2026 19:19:10 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50292ca884546d61449c370564b40db2a8e7f9a4ea1651e7d474ec6eda265c04`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 66.9 MB (66923602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6554b7d847ba3e1a4cfc56a3fd18adc2aba944983dac6029a8b5d6e446d0c042`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 8.7 MB (8687718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46fb4a070ad6d3ee31556ae89db67205689e1c090d11b82382ee8ab2edb931f7`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 3.4 MB (3359019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396fd7ff093218d0d3d52e6f9db522cf14fe7b2639ce41229ae3c61e2c42b82b`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 1.4 KB (1432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578b8822cf7d47590654c466450f1d3f4a53a4d6ae5727f927ccd69913b4fb4d`  
		Last Modified: Thu, 05 Nov 2026 19:19:12 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:alpine` - unknown; unknown

```console
$ docker pull liquibase@sha256:1c6f22cc6ec1cd7a29071d06c738a4c296ac3e20dcaa2f79ae8e6d31b4ebc399
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **362.3 KB (362306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41cc96438d4de5d71f844421ebd5d5a8572f64fdeb24efae753d1bf0b3b05e0a`

```dockerfile
```

-	Layers:
	-	`sha256:0c86500aa143683166abb22d5bc470f2361caf1e0575f10438de91aedbd77d9b`  
		Last Modified: Thu, 05 Nov 2026 19:19:11 GMT  
		Size: 340.5 KB (340511 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d492a770d995110da195e352b138927527cbc3e042129ebf9edaf709375c272e`  
		Last Modified: Thu, 05 Nov 2026 19:19:10 GMT  
		Size: 21.8 KB (21795 bytes)  
		MIME: application/vnd.in-toto+json

## `liquibase:latest`

```console
$ docker pull liquibase@sha256:f482f515fe66fb8222428d9f9a130acc7f44dd1e5b873d3d43fb99c3ea97f3b5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:latest` - linux; amd64

```console
$ docker pull liquibase@sha256:9fbbd69fdf0e51cf85b4859583283c6760623bf1908ccb15a7f5756e37c7449f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111838144 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6820693e11ec67686550066780f15031366153319524bac7e4d5933abd409ec`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:17:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:17:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:17:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:17:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:17:01 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:36 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 20 Nov 2026 04:22:36 GMT
WORKDIR /liquibase
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 20 Nov 2026 04:22:37 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LPM_VERSION=0.2.14
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 20 Nov 2026 04:22:37 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 20 Nov 2026 04:22:37 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 20 Nov 2026 04:22:42 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 20 Nov 2026 04:22:42 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 20 Nov 2026 04:22:42 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 20 Nov 2026 04:22:42 GMT
USER liquibase:liquibase
# Fri, 20 Nov 2026 04:22:42 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 04:22:42 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7313e67a02dfc38240be83cb78b6c878c3313e0ad99b4fb41362a352141ca0bc`  
		Last Modified: Fri, 20 Nov 2026 03:17:18 GMT  
		Size: 16.1 MB (16116459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860d119a42585002c16d5d3b4529c4a302845f20cade3d00040013bff16bff72`  
		Last Modified: Fri, 20 Nov 2026 03:17:19 GMT  
		Size: 53.2 MB (53212250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42dbf06c79d3ec03c72752727cfed04df87aa1a8ed90118e02d584219391af7a`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa15c5b111790b02ebff7bc152bb6bb2310a9175f88efae74d89935237f87843`  
		Last Modified: Fri, 20 Nov 2026 03:17:17 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8e5f7660a347dc4d376a5e57122490caa506e1cdf41e9d0f983278e4167b79`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b176b5b8d65baf1f1120b825798b4d0806b2ed5cdb128726a771e08222ece006`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 8.7 MB (8665796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a752063f9c8a6ce94440d55324cd2c84042a4c365fc5bd5bc367abb6e10136c4`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 3.8 MB (3765267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a398a42c4b9eb427553b2c64d60bd0d13cd933556c0bea89fe432e35b43e9d4`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 1.4 KB (1429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e500389e2b1f47fa18d4ab49a9e1d43f115c7249a35fbc67b57321c9bac0ce`  
		Last Modified: Fri, 20 Nov 2026 04:22:51 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:bf04a568336a9bb7acc16b0b7c4748a221f861cc09e8f0fc82644e8afacefd37
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83585b155344e5148d07a97e82b0ed81fa824e7dc598fe9612dc83dc247151a0`

```dockerfile
```

-	Layers:
	-	`sha256:1a57ad9223653eb825c8b577a06515564ef9de797e3b9b6cc59aec903a1b473a`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 3.9 MB (3882162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d47d8643852faf5ddf4e4d591c3de1d4294091daa496c84652029067e95e7b74`  
		Last Modified: Fri, 20 Nov 2026 04:22:50 GMT  
		Size: 24.3 KB (24323 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:latest` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:3dd1b0f94eb1904a4dbc6ec9ab174a78aac889a3ce6a7ad2b253a64aa786e3ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108559691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:07bdf82a79bdac299ab8b95278b79fe4839f34f7327b8c13bba59bdf5ba465f5`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:23 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Fri, 20 Nov 2026 03:17:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:12 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 20 Nov 2026 04:23:12 GMT
WORKDIR /liquibase
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 20 Nov 2026 04:23:14 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LPM_VERSION=0.2.14
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 20 Nov 2026 04:23:14 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 20 Nov 2026 04:23:14 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 20 Nov 2026 04:23:19 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 20 Nov 2026 04:23:19 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 20 Nov 2026 04:23:19 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 20 Nov 2026 04:23:19 GMT
USER liquibase:liquibase
# Fri, 20 Nov 2026 04:23:19 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 04:23:19 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ef94eb3366d1bc996e03224923f408c9594b4a567d291cfaecc55658180f2a`  
		Last Modified: Fri, 20 Nov 2026 03:16:49 GMT  
		Size: 16.1 MB (16051440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:719ee3b5446024b156810745facd44f350c7feb8b22927fc0a7871032af58601`  
		Last Modified: Fri, 20 Nov 2026 03:17:37 GMT  
		Size: 52.4 MB (52390572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adfe4e11e083538a3d3de416b52de5869d649515c4ab52e6d41800a04395e4ef`  
		Last Modified: Fri, 20 Nov 2026 03:17:36 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8001dc1c1d612395f99e6390456ca2622125a2171d0e3772ffe0e25799530fd8`  
		Last Modified: Fri, 20 Nov 2026 03:17:36 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:184199c392c00ffcaac201e36488861a22319a952531e3ad73bcde7ed2897f11`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a8a871420014f71bfdb0ffeb415dae00f640a01e43c63e9eadfef9e539767b`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 8.7 MB (8665794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4544e47a319ab3b2f15eb34fa03ac14a23e2991033622bf2be192d3a8abfc47`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 3.4 MB (3441925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34465db1220aa928700f820dc7380a9c478809d902cfc0f8dc897c631b2a0df7`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:327305a4c5833445fddb26f15a92523d8e0af84ec9fae6867af09c34b0479ab6`  
		Last Modified: Fri, 20 Nov 2026 04:23:29 GMT  
		Size: 171.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:d70818549b4923afdc53010e039febcdb4920235acc6208caa57036a02bb238f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8247b18d9fb9349240c0c6954370dbe6d71bb324ad8a38d1aa442fef1becf4e`

```dockerfile
```

-	Layers:
	-	`sha256:d82896ddced274a53706c1e9720ce9e75c5f6fc5a912e7c8630cc58cb68c535f`  
		Last Modified: Fri, 20 Nov 2026 04:23:28 GMT  
		Size: 3.9 MB (3881830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1aba033f26d23bc48a38c44a1dc491c281746a2460cd97de496e236ae50aa1f1`  
		Last Modified: Fri, 20 Nov 2026 04:23:27 GMT  
		Size: 24.4 KB (24445 bytes)  
		MIME: application/vnd.in-toto+json
