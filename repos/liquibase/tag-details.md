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
$ docker pull liquibase@sha256:ebbb9c2280d921895343de56d979bffa6937c0e7003441746ae1c5162e8492a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0` - linux; amd64

```console
$ docker pull liquibase@sha256:84e7a47319243cc7a704c4abfb86dbb5cabb7a7fa602ef59dc93745817f6570b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111852780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bdb476994815eb147874406013ffff47efbc5d8c86d53502221cf4ede93f1ee`
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
# Fri, 20 Nov 2026 17:43:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:43:13 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:44:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='18f44fab9065217f3ba61d0eef8a7b5f3c3713aa7293001b0d4ac10ede3850f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='7fbeba1a2ba03533657bf16655e642de7b32c1bf074a3e2eb406f7cfc0f29a14';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='bd196e3e017243173ad9a4fcf54abb5da91ebc9fca960578b1451dc6a3d6c48c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:44:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:59:19 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 20 Nov 2026 17:59:19 GMT
WORKDIR /liquibase
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 20 Nov 2026 17:59:20 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LPM_VERSION=0.2.14
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 20 Nov 2026 17:59:24 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 20 Nov 2026 17:59:24 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 20 Nov 2026 17:59:24 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 20 Nov 2026 17:59:24 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 20 Nov 2026 17:59:24 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 20 Nov 2026 17:59:24 GMT
USER liquibase:liquibase
# Fri, 20 Nov 2026 17:59:24 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 17:59:24 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e046509628737e4e4f482ba3193aa382c7c8222300f5a37f3a79bc093b6183de`  
		Last Modified: Fri, 20 Nov 2026 17:43:29 GMT  
		Size: 16.1 MB (16116471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76da8104670ad4bb06feb043459a934ca42bae39b60773ffd2090cf2e3a3148d`  
		Last Modified: Fri, 20 Nov 2026 17:44:18 GMT  
		Size: 53.2 MB (53226915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7bb79e459893d4126990fabf2a4225d7f8c608c23644ec23c8e03d5455ba2ad`  
		Last Modified: Fri, 20 Nov 2026 17:44:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d57202b6afbb22dc7bca8f2bf37c88e441f70284d4e5ac3e14d4433b17d09d1`  
		Last Modified: Fri, 20 Nov 2026 17:44:17 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fbaaf652e0e328133870b153a2f5777a88b3fac04e59333f1ff4067458995`  
		Last Modified: Fri, 20 Nov 2026 17:59:35 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4460a1748d098835d50af20ea2e168ab28daa1e623e541d2a2ca7c77d20c0c3b`  
		Last Modified: Fri, 20 Nov 2026 17:59:41 GMT  
		Size: 8.7 MB (8665788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f984944ef99325dd465f0da7122966a0bdb0dbca21d552c5f0fe37c5c756e10e`  
		Last Modified: Fri, 20 Nov 2026 17:59:39 GMT  
		Size: 3.8 MB (3765233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2f3596b107d0ce62e49aecaa36f2502466c41a17c9622cc44c51ece5202895`  
		Last Modified: Fri, 20 Nov 2026 17:59:36 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c277ba672a06dd7206ef4edcf7ada387c35a3b0f11cf882f3b65a38dcdc817d`  
		Last Modified: Fri, 20 Nov 2026 17:59:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:58101f060356c934fed90053ddb6c01fb09c732a542d18698f6d2351a2afb6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06e04f9930084fac8b646531e31423a74996f47c8e2a16c309583c059838d85`

```dockerfile
```

-	Layers:
	-	`sha256:3248951a8056d4c4e3c8f3367a0d67e5b1992d3a6488a65cd95f660c86c1e7fd`  
		Last Modified: Fri, 20 Nov 2026 17:59:40 GMT  
		Size: 3.9 MB (3882170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84cdb1736910d17512b841d508f093f8dd1da5d47d2384c9e75d49decde6ede0`  
		Last Modified: Fri, 20 Nov 2026 17:59:33 GMT  
		Size: 24.3 KB (24329 bytes)  
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
$ docker pull liquibase@sha256:ebbb9c2280d921895343de56d979bffa6937c0e7003441746ae1c5162e8492a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0.1` - linux; amd64

```console
$ docker pull liquibase@sha256:84e7a47319243cc7a704c4abfb86dbb5cabb7a7fa602ef59dc93745817f6570b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111852780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bdb476994815eb147874406013ffff47efbc5d8c86d53502221cf4ede93f1ee`
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
# Fri, 20 Nov 2026 17:43:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:43:13 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:44:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='18f44fab9065217f3ba61d0eef8a7b5f3c3713aa7293001b0d4ac10ede3850f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='7fbeba1a2ba03533657bf16655e642de7b32c1bf074a3e2eb406f7cfc0f29a14';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='bd196e3e017243173ad9a4fcf54abb5da91ebc9fca960578b1451dc6a3d6c48c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:44:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:59:19 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 20 Nov 2026 17:59:19 GMT
WORKDIR /liquibase
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 20 Nov 2026 17:59:20 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LPM_VERSION=0.2.14
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 20 Nov 2026 17:59:24 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 20 Nov 2026 17:59:24 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 20 Nov 2026 17:59:24 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 20 Nov 2026 17:59:24 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 20 Nov 2026 17:59:24 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 20 Nov 2026 17:59:24 GMT
USER liquibase:liquibase
# Fri, 20 Nov 2026 17:59:24 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 17:59:24 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e046509628737e4e4f482ba3193aa382c7c8222300f5a37f3a79bc093b6183de`  
		Last Modified: Fri, 20 Nov 2026 17:43:29 GMT  
		Size: 16.1 MB (16116471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76da8104670ad4bb06feb043459a934ca42bae39b60773ffd2090cf2e3a3148d`  
		Last Modified: Fri, 20 Nov 2026 17:44:18 GMT  
		Size: 53.2 MB (53226915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7bb79e459893d4126990fabf2a4225d7f8c608c23644ec23c8e03d5455ba2ad`  
		Last Modified: Fri, 20 Nov 2026 17:44:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d57202b6afbb22dc7bca8f2bf37c88e441f70284d4e5ac3e14d4433b17d09d1`  
		Last Modified: Fri, 20 Nov 2026 17:44:17 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fbaaf652e0e328133870b153a2f5777a88b3fac04e59333f1ff4067458995`  
		Last Modified: Fri, 20 Nov 2026 17:59:35 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4460a1748d098835d50af20ea2e168ab28daa1e623e541d2a2ca7c77d20c0c3b`  
		Last Modified: Fri, 20 Nov 2026 17:59:41 GMT  
		Size: 8.7 MB (8665788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f984944ef99325dd465f0da7122966a0bdb0dbca21d552c5f0fe37c5c756e10e`  
		Last Modified: Fri, 20 Nov 2026 17:59:39 GMT  
		Size: 3.8 MB (3765233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2f3596b107d0ce62e49aecaa36f2502466c41a17c9622cc44c51ece5202895`  
		Last Modified: Fri, 20 Nov 2026 17:59:36 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c277ba672a06dd7206ef4edcf7ada387c35a3b0f11cf882f3b65a38dcdc817d`  
		Last Modified: Fri, 20 Nov 2026 17:59:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:58101f060356c934fed90053ddb6c01fb09c732a542d18698f6d2351a2afb6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06e04f9930084fac8b646531e31423a74996f47c8e2a16c309583c059838d85`

```dockerfile
```

-	Layers:
	-	`sha256:3248951a8056d4c4e3c8f3367a0d67e5b1992d3a6488a65cd95f660c86c1e7fd`  
		Last Modified: Fri, 20 Nov 2026 17:59:40 GMT  
		Size: 3.9 MB (3882170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84cdb1736910d17512b841d508f093f8dd1da5d47d2384c9e75d49decde6ede0`  
		Last Modified: Fri, 20 Nov 2026 17:59:33 GMT  
		Size: 24.3 KB (24329 bytes)  
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
$ docker pull liquibase@sha256:ebbb9c2280d921895343de56d979bffa6937c0e7003441746ae1c5162e8492a5
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:latest` - linux; amd64

```console
$ docker pull liquibase@sha256:84e7a47319243cc7a704c4abfb86dbb5cabb7a7fa602ef59dc93745817f6570b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.9 MB (111852780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bdb476994815eb147874406013ffff47efbc5d8c86d53502221cf4ede93f1ee`
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
# Fri, 20 Nov 2026 17:43:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:43:13 GMT
ENV JAVA_VERSION=jdk-21.0.13.1+2
# Fri, 20 Nov 2026 17:44:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='18f44fab9065217f3ba61d0eef8a7b5f3c3713aa7293001b0d4ac10ede3850f0';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_x64_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        ppc64el)          ESUM='7fbeba1a2ba03533657bf16655e642de7b32c1bf074a3e2eb406f7cfc0f29a14';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        s390x)          ESUM='bd196e3e017243173ad9a4fcf54abb5da91ebc9fca960578b1451dc6a3d6c48c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13.1%2B2/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:44:05 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:44:05 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:44:05 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:59:19 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Fri, 20 Nov 2026 17:59:19 GMT
WORKDIR /liquibase
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Fri, 20 Nov 2026 17:59:20 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LPM_VERSION=0.2.14
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Fri, 20 Nov 2026 17:59:20 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.version=5.0.1
# Fri, 20 Nov 2026 17:59:20 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Fri, 20 Nov 2026 17:59:24 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Fri, 20 Nov 2026 17:59:24 GMT
ENV LIQUIBASE_HOME=/liquibase
# Fri, 20 Nov 2026 17:59:24 GMT
ENV DOCKER_LIQUIBASE=true
# Fri, 20 Nov 2026 17:59:24 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Fri, 20 Nov 2026 17:59:24 GMT
COPY liquibase.docker.properties ./ # buildkit
# Fri, 20 Nov 2026 17:59:24 GMT
USER liquibase:liquibase
# Fri, 20 Nov 2026 17:59:24 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Fri, 20 Nov 2026 17:59:24 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e046509628737e4e4f482ba3193aa382c7c8222300f5a37f3a79bc093b6183de`  
		Last Modified: Fri, 20 Nov 2026 17:43:29 GMT  
		Size: 16.1 MB (16116471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76da8104670ad4bb06feb043459a934ca42bae39b60773ffd2090cf2e3a3148d`  
		Last Modified: Fri, 20 Nov 2026 17:44:18 GMT  
		Size: 53.2 MB (53226915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7bb79e459893d4126990fabf2a4225d7f8c608c23644ec23c8e03d5455ba2ad`  
		Last Modified: Fri, 20 Nov 2026 17:44:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d57202b6afbb22dc7bca8f2bf37c88e441f70284d4e5ac3e14d4433b17d09d1`  
		Last Modified: Fri, 20 Nov 2026 17:44:17 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fbaaf652e0e328133870b153a2f5777a88b3fac04e59333f1ff4067458995`  
		Last Modified: Fri, 20 Nov 2026 17:59:35 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4460a1748d098835d50af20ea2e168ab28daa1e623e541d2a2ca7c77d20c0c3b`  
		Last Modified: Fri, 20 Nov 2026 17:59:41 GMT  
		Size: 8.7 MB (8665788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f984944ef99325dd465f0da7122966a0bdb0dbca21d552c5f0fe37c5c756e10e`  
		Last Modified: Fri, 20 Nov 2026 17:59:39 GMT  
		Size: 3.8 MB (3765233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e2f3596b107d0ce62e49aecaa36f2502466c41a17c9622cc44c51ece5202895`  
		Last Modified: Fri, 20 Nov 2026 17:59:36 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c277ba672a06dd7206ef4edcf7ada387c35a3b0f11cf882f3b65a38dcdc817d`  
		Last Modified: Fri, 20 Nov 2026 17:59:40 GMT  
		Size: 170.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:58101f060356c934fed90053ddb6c01fb09c732a542d18698f6d2351a2afb6e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f06e04f9930084fac8b646531e31423a74996f47c8e2a16c309583c059838d85`

```dockerfile
```

-	Layers:
	-	`sha256:3248951a8056d4c4e3c8f3367a0d67e5b1992d3a6488a65cd95f660c86c1e7fd`  
		Last Modified: Fri, 20 Nov 2026 17:59:40 GMT  
		Size: 3.9 MB (3882170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84cdb1736910d17512b841d508f093f8dd1da5d47d2384c9e75d49decde6ede0`  
		Last Modified: Fri, 20 Nov 2026 17:59:33 GMT  
		Size: 24.3 KB (24329 bytes)  
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
