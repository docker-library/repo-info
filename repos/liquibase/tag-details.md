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
$ docker pull liquibase@sha256:f1d6952cb4addfdfb3f066831b278e0e0030ae1d8739a25a0593a20c2b648254
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0` - linux; amd64

```console
$ docker pull liquibase@sha256:cf2462724030528b3e8b775c62f1c53c6983cbfbe1c98206275e7c20eb087f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111837010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056fc7fb4f8faadd2f5db7eaa6367e0798fc3fbefd8c376004be807bf4235a2e`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:18:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:18:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:18:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:18:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:18:23 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:18:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:25:18 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 12 Nov 2026 00:25:18 GMT
WORKDIR /liquibase
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 12 Nov 2026 00:25:21 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LPM_VERSION=0.2.14
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 12 Nov 2026 00:25:27 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 12 Nov 2026 00:25:27 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 12 Nov 2026 00:25:27 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 12 Nov 2026 00:25:27 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 12 Nov 2026 00:25:27 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 12 Nov 2026 00:25:27 GMT
USER liquibase:liquibase
# Thu, 12 Nov 2026 00:25:27 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:25:27 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c669fcec3e030edf6d2c12142164764d763f5ab9b4bf374598bc70d4f5ea6a`  
		Last Modified: Wed, 11 Nov 2026 23:18:42 GMT  
		Size: 16.1 MB (16115788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67f4804db649285e2894079cc70663ad503ced9ccf52dd7a6cd756e54eb14d9`  
		Last Modified: Wed, 11 Nov 2026 23:18:44 GMT  
		Size: 53.2 MB (53212236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f258e5941cb21baf92f8436ef2b3297324c4d121261f0984db53b857a104dfce`  
		Last Modified: Wed, 11 Nov 2026 23:18:41 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6792de25975b4075fe4065cfaa458b54391deeb904dcd73ca17668e4fd078e51`  
		Last Modified: Wed, 11 Nov 2026 23:18:42 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b7239d8b8d65af57b8527ae51b6610e2c107f5a5351b4ba2b841df4bc13b60`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc9fe09630f5dcf89b870403e5b7a4b8403b35d81c736d6d70f1645c86177ca`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 8.7 MB (8665794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be09c6dd198978272c9176447db1c9064e2bd7b7f3210d8f777aa16bc2dd2ce`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 3.8 MB (3765100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de510a33dc8c30a994b4263bd1565c25aec26d979f59c00f397fa7e5121ca533`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f0be85a4c534301df867cfa5c730048da776c67dc7ec9a2a6c4a66d06f8b5d`  
		Last Modified: Thu, 12 Nov 2026 00:25:35 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:6e79d43c8cd1b4f3f70442b875c02122464b61f48213d3689b1be067bd3ced17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f64c5bd8667ae08c2e0d1c5ec260c9639f184a1e62cac9f4bdb7352c2efabe7`

```dockerfile
```

-	Layers:
	-	`sha256:003535527c3fc7a70893a8d38eded25707c61d106a64f6ef7bc018ddb21521ad`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 3.9 MB (3882162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e707762286a315cee61097997f239754da1c414d3d15c48c169c2e5e7152796`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 24.3 KB (24323 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:eec9623de46a4eb31f0ffc70f67f9ca882aee71f8d4557896e8e39960ced71b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108558993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee38417923e89754f798470cf5d63f2dcbd6a04e950007adb71fa305d7164c14`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:20:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:18 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:22:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:40:25 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 12 Nov 2026 00:40:25 GMT
WORKDIR /liquibase
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 12 Nov 2026 00:40:27 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LPM_VERSION=0.2.14
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 12 Nov 2026 00:40:33 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 12 Nov 2026 00:40:33 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 12 Nov 2026 00:40:33 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 12 Nov 2026 00:40:33 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 12 Nov 2026 00:40:33 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 12 Nov 2026 00:40:33 GMT
USER liquibase:liquibase
# Thu, 12 Nov 2026 00:40:33 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:40:33 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3373f3943b479ab1fd2784447296f07e79b3fd791bd55e47c7acc7ed291614ab`  
		Last Modified: Wed, 11 Nov 2026 23:20:35 GMT  
		Size: 16.1 MB (16050675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bfa6047bb36087be2428c3ab7804a08e34761045f00a9ef6f82631a4ffd917`  
		Last Modified: Wed, 11 Nov 2026 23:22:28 GMT  
		Size: 52.4 MB (52390627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40adfa1a82207795c78a88681acd4451872bdcea1eb1900d7e6ceb54e874d95`  
		Last Modified: Wed, 11 Nov 2026 23:22:26 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0db4a80bade5dba1d9124d28aa7337b4cf9ba3ef0ec4ce75c4b8818997234ff`  
		Last Modified: Wed, 11 Nov 2026 23:22:26 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e10e781d5b5c515926ad994218f55608f0e48691a4d168f482849432935aea7`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07defeb2e52fba1902df4f16bb24ae2de73865de40d89490a4144a580242b4cb`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 8.7 MB (8665799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f057ecab3b0fdce21954b45952b9a93d09917e7343344af71c1461b203737e`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 3.4 MB (3441913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ea451ed8efc71d33d8dd1b4a45f8f4bfdbe672623028d099b058204cf317a5`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52205d61d2dd32d0a8d244ec94ccc71b68b2fdf06af690966e8f2df55b74f5ea`  
		Last Modified: Thu, 12 Nov 2026 00:40:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:b021f4de0c558c45d56de712db8c6289266f25b21fdc74c966146c4e58d5e8e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eea392348a535fe682a1c80208c6932e18658e8bba60f16979d4e395cb2995a`

```dockerfile
```

-	Layers:
	-	`sha256:0a0dea92ae3eb0a5cd1183f191d72dc4d94f405c196785a2faac689e8a1ddea3`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 3.9 MB (3881830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91c88afe909eee7a6b1bc17dee122299f160c74180cba6e6d1d288c6b12daec5`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
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
$ docker pull liquibase@sha256:f1d6952cb4addfdfb3f066831b278e0e0030ae1d8739a25a0593a20c2b648254
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0.1` - linux; amd64

```console
$ docker pull liquibase@sha256:cf2462724030528b3e8b775c62f1c53c6983cbfbe1c98206275e7c20eb087f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111837010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056fc7fb4f8faadd2f5db7eaa6367e0798fc3fbefd8c376004be807bf4235a2e`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:18:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:18:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:18:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:18:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:18:23 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:18:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:25:18 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 12 Nov 2026 00:25:18 GMT
WORKDIR /liquibase
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 12 Nov 2026 00:25:21 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LPM_VERSION=0.2.14
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 12 Nov 2026 00:25:27 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 12 Nov 2026 00:25:27 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 12 Nov 2026 00:25:27 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 12 Nov 2026 00:25:27 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 12 Nov 2026 00:25:27 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 12 Nov 2026 00:25:27 GMT
USER liquibase:liquibase
# Thu, 12 Nov 2026 00:25:27 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:25:27 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c669fcec3e030edf6d2c12142164764d763f5ab9b4bf374598bc70d4f5ea6a`  
		Last Modified: Wed, 11 Nov 2026 23:18:42 GMT  
		Size: 16.1 MB (16115788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67f4804db649285e2894079cc70663ad503ced9ccf52dd7a6cd756e54eb14d9`  
		Last Modified: Wed, 11 Nov 2026 23:18:44 GMT  
		Size: 53.2 MB (53212236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f258e5941cb21baf92f8436ef2b3297324c4d121261f0984db53b857a104dfce`  
		Last Modified: Wed, 11 Nov 2026 23:18:41 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6792de25975b4075fe4065cfaa458b54391deeb904dcd73ca17668e4fd078e51`  
		Last Modified: Wed, 11 Nov 2026 23:18:42 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b7239d8b8d65af57b8527ae51b6610e2c107f5a5351b4ba2b841df4bc13b60`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc9fe09630f5dcf89b870403e5b7a4b8403b35d81c736d6d70f1645c86177ca`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 8.7 MB (8665794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be09c6dd198978272c9176447db1c9064e2bd7b7f3210d8f777aa16bc2dd2ce`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 3.8 MB (3765100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de510a33dc8c30a994b4263bd1565c25aec26d979f59c00f397fa7e5121ca533`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f0be85a4c534301df867cfa5c730048da776c67dc7ec9a2a6c4a66d06f8b5d`  
		Last Modified: Thu, 12 Nov 2026 00:25:35 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:6e79d43c8cd1b4f3f70442b875c02122464b61f48213d3689b1be067bd3ced17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f64c5bd8667ae08c2e0d1c5ec260c9639f184a1e62cac9f4bdb7352c2efabe7`

```dockerfile
```

-	Layers:
	-	`sha256:003535527c3fc7a70893a8d38eded25707c61d106a64f6ef7bc018ddb21521ad`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 3.9 MB (3882162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e707762286a315cee61097997f239754da1c414d3d15c48c169c2e5e7152796`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 24.3 KB (24323 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0.1` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:eec9623de46a4eb31f0ffc70f67f9ca882aee71f8d4557896e8e39960ced71b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108558993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee38417923e89754f798470cf5d63f2dcbd6a04e950007adb71fa305d7164c14`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:20:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:18 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:22:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:40:25 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 12 Nov 2026 00:40:25 GMT
WORKDIR /liquibase
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 12 Nov 2026 00:40:27 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LPM_VERSION=0.2.14
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 12 Nov 2026 00:40:33 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 12 Nov 2026 00:40:33 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 12 Nov 2026 00:40:33 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 12 Nov 2026 00:40:33 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 12 Nov 2026 00:40:33 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 12 Nov 2026 00:40:33 GMT
USER liquibase:liquibase
# Thu, 12 Nov 2026 00:40:33 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:40:33 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3373f3943b479ab1fd2784447296f07e79b3fd791bd55e47c7acc7ed291614ab`  
		Last Modified: Wed, 11 Nov 2026 23:20:35 GMT  
		Size: 16.1 MB (16050675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bfa6047bb36087be2428c3ab7804a08e34761045f00a9ef6f82631a4ffd917`  
		Last Modified: Wed, 11 Nov 2026 23:22:28 GMT  
		Size: 52.4 MB (52390627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40adfa1a82207795c78a88681acd4451872bdcea1eb1900d7e6ceb54e874d95`  
		Last Modified: Wed, 11 Nov 2026 23:22:26 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0db4a80bade5dba1d9124d28aa7337b4cf9ba3ef0ec4ce75c4b8818997234ff`  
		Last Modified: Wed, 11 Nov 2026 23:22:26 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e10e781d5b5c515926ad994218f55608f0e48691a4d168f482849432935aea7`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07defeb2e52fba1902df4f16bb24ae2de73865de40d89490a4144a580242b4cb`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 8.7 MB (8665799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f057ecab3b0fdce21954b45952b9a93d09917e7343344af71c1461b203737e`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 3.4 MB (3441913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ea451ed8efc71d33d8dd1b4a45f8f4bfdbe672623028d099b058204cf317a5`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52205d61d2dd32d0a8d244ec94ccc71b68b2fdf06af690966e8f2df55b74f5ea`  
		Last Modified: Thu, 12 Nov 2026 00:40:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:b021f4de0c558c45d56de712db8c6289266f25b21fdc74c966146c4e58d5e8e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eea392348a535fe682a1c80208c6932e18658e8bba60f16979d4e395cb2995a`

```dockerfile
```

-	Layers:
	-	`sha256:0a0dea92ae3eb0a5cd1183f191d72dc4d94f405c196785a2faac689e8a1ddea3`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 3.9 MB (3881830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91c88afe909eee7a6b1bc17dee122299f160c74180cba6e6d1d288c6b12daec5`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
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
$ docker pull liquibase@sha256:f1d6952cb4addfdfb3f066831b278e0e0030ae1d8739a25a0593a20c2b648254
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:latest` - linux; amd64

```console
$ docker pull liquibase@sha256:cf2462724030528b3e8b775c62f1c53c6983cbfbe1c98206275e7c20eb087f6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.8 MB (111837010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:056fc7fb4f8faadd2f5db7eaa6367e0798fc3fbefd8c376004be807bf4235a2e`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:18:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:18:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:18:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:18:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:18:23 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:18:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:18:28 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:25:18 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 12 Nov 2026 00:25:18 GMT
WORKDIR /liquibase
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 12 Nov 2026 00:25:21 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LPM_VERSION=0.2.14
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 12 Nov 2026 00:25:21 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 12 Nov 2026 00:25:21 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 12 Nov 2026 00:25:27 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 12 Nov 2026 00:25:27 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 12 Nov 2026 00:25:27 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 12 Nov 2026 00:25:27 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 12 Nov 2026 00:25:27 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 12 Nov 2026 00:25:27 GMT
USER liquibase:liquibase
# Thu, 12 Nov 2026 00:25:27 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:25:27 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c669fcec3e030edf6d2c12142164764d763f5ab9b4bf374598bc70d4f5ea6a`  
		Last Modified: Wed, 11 Nov 2026 23:18:42 GMT  
		Size: 16.1 MB (16115788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e67f4804db649285e2894079cc70663ad503ced9ccf52dd7a6cd756e54eb14d9`  
		Last Modified: Wed, 11 Nov 2026 23:18:44 GMT  
		Size: 53.2 MB (53212236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f258e5941cb21baf92f8436ef2b3297324c4d121261f0984db53b857a104dfce`  
		Last Modified: Wed, 11 Nov 2026 23:18:41 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6792de25975b4075fe4065cfaa458b54391deeb904dcd73ca17668e4fd078e51`  
		Last Modified: Wed, 11 Nov 2026 23:18:42 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b7239d8b8d65af57b8527ae51b6610e2c107f5a5351b4ba2b841df4bc13b60`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 4.3 KB (4303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dc9fe09630f5dcf89b870403e5b7a4b8403b35d81c736d6d70f1645c86177ca`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 8.7 MB (8665794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be09c6dd198978272c9176447db1c9064e2bd7b7f3210d8f777aa16bc2dd2ce`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 3.8 MB (3765100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de510a33dc8c30a994b4263bd1565c25aec26d979f59c00f397fa7e5121ca533`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93f0be85a4c534301df867cfa5c730048da776c67dc7ec9a2a6c4a66d06f8b5d`  
		Last Modified: Thu, 12 Nov 2026 00:25:35 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:6e79d43c8cd1b4f3f70442b875c02122464b61f48213d3689b1be067bd3ced17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f64c5bd8667ae08c2e0d1c5ec260c9639f184a1e62cac9f4bdb7352c2efabe7`

```dockerfile
```

-	Layers:
	-	`sha256:003535527c3fc7a70893a8d38eded25707c61d106a64f6ef7bc018ddb21521ad`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 3.9 MB (3882162 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e707762286a315cee61097997f239754da1c414d3d15c48c169c2e5e7152796`  
		Last Modified: Thu, 12 Nov 2026 00:25:34 GMT  
		Size: 24.3 KB (24323 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:latest` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:eec9623de46a4eb31f0ffc70f67f9ca882aee71f8d4557896e8e39960ced71b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.6 MB (108558993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee38417923e89754f798470cf5d63f2dcbd6a04e950007adb71fa305d7164c14`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Tue, 10 Nov 2026 08:11:28 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:11:28 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:11:28 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:11:31 GMT
ADD file:ad99bb929f300d831dd983ba7aa0be62ef1a417e019f842bbe90de4a105e60d4 in / 
# Tue, 10 Nov 2026 08:11:31 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:20:18 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:20:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:20:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:20:18 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:20:18 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Wed, 11 Nov 2026 23:22:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:22:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:40:25 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 12 Nov 2026 00:40:25 GMT
WORKDIR /liquibase
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 12 Nov 2026 00:40:27 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LPM_VERSION=0.2.14
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 12 Nov 2026 00:40:27 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 12 Nov 2026 00:40:27 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 12 Nov 2026 00:40:33 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 12 Nov 2026 00:40:33 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 12 Nov 2026 00:40:33 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 12 Nov 2026 00:40:33 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 12 Nov 2026 00:40:33 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 12 Nov 2026 00:40:33 GMT
USER liquibase:liquibase
# Thu, 12 Nov 2026 00:40:33 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:40:33 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:fe6484161c0f933bb0c4e15c47277d5b80f98c8abd3661858e8cb1891f359634`  
		Last Modified: Tue, 10 Nov 2026 08:54:54 GMT  
		Size: 28.0 MB (28001412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3373f3943b479ab1fd2784447296f07e79b3fd791bd55e47c7acc7ed291614ab`  
		Last Modified: Wed, 11 Nov 2026 23:20:35 GMT  
		Size: 16.1 MB (16050675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1bfa6047bb36087be2428c3ab7804a08e34761045f00a9ef6f82631a4ffd917`  
		Last Modified: Wed, 11 Nov 2026 23:22:28 GMT  
		Size: 52.4 MB (52390627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d40adfa1a82207795c78a88681acd4451872bdcea1eb1900d7e6ceb54e874d95`  
		Last Modified: Wed, 11 Nov 2026 23:22:26 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0db4a80bade5dba1d9124d28aa7337b4cf9ba3ef0ec4ce75c4b8818997234ff`  
		Last Modified: Wed, 11 Nov 2026 23:22:26 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e10e781d5b5c515926ad994218f55608f0e48691a4d168f482849432935aea7`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 4.3 KB (4309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07defeb2e52fba1902df4f16bb24ae2de73865de40d89490a4144a580242b4cb`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 8.7 MB (8665799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7f057ecab3b0fdce21954b45952b9a93d09917e7343344af71c1461b203737e`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 3.4 MB (3441913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ea451ed8efc71d33d8dd1b4a45f8f4bfdbe672623028d099b058204cf317a5`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52205d61d2dd32d0a8d244ec94ccc71b68b2fdf06af690966e8f2df55b74f5ea`  
		Last Modified: Thu, 12 Nov 2026 00:40:42 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:b021f4de0c558c45d56de712db8c6289266f25b21fdc74c966146c4e58d5e8e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8eea392348a535fe682a1c80208c6932e18658e8bba60f16979d4e395cb2995a`

```dockerfile
```

-	Layers:
	-	`sha256:0a0dea92ae3eb0a5cd1183f191d72dc4d94f405c196785a2faac689e8a1ddea3`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 3.9 MB (3881830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:91c88afe909eee7a6b1bc17dee122299f160c74180cba6e6d1d288c6b12daec5`  
		Last Modified: Thu, 12 Nov 2026 00:40:41 GMT  
		Size: 24.4 KB (24445 bytes)  
		MIME: application/vnd.in-toto+json
