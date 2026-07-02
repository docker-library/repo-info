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
$ docker pull liquibase@sha256:c5bf7a096cc645522b9efa1ba4c1998ab49e4f10ead62f439804b7e0166e80ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0` - linux; amd64

```console
$ docker pull liquibase@sha256:995289cf5f3bc500ec96e5fe1ee8e3db0cafd72c2a4152062a08411eb4f8582e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111410644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe0bd6de5d6a3923ffcd5d1ca80767f31a44fae906108c21564be6808e02806`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:20:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:38 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:22:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:22:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:22:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:01 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 02 Jul 2026 05:27:01 GMT
WORKDIR /liquibase
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 02 Jul 2026 05:27:02 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LPM_VERSION=0.2.14
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 02 Jul 2026 05:27:07 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 02 Jul 2026 05:27:07 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 02 Jul 2026 05:27:07 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 02 Jul 2026 05:27:07 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 02 Jul 2026 05:27:07 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 02 Jul 2026 05:27:07 GMT
USER liquibase:liquibase
# Thu, 02 Jul 2026 05:27:07 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:07 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e506ec396e165cc004363134ece7110907f8090022df57ecb9f3e0dbf24c72`  
		Last Modified: Thu, 02 Jul 2026 02:21:04 GMT  
		Size: 16.1 MB (16110061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd382eea9ba8bda9e6f71f822991a4effbec4dd663e2358a56fbca0169ce99de`  
		Last Modified: Thu, 02 Jul 2026 02:23:06 GMT  
		Size: 53.1 MB (53122821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec83a7e6f59b2cba730c94a4f1699321b701a55092a8f3e82638609b123dc341`  
		Last Modified: Thu, 02 Jul 2026 02:23:04 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e626ceb0c0ed7c31015ab115e6f787c697f886eef66f047adaa2605ebe14660`  
		Last Modified: Thu, 02 Jul 2026 02:23:04 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb1b75584631a7a251287e5f3038872b82406e13ff009935dc548909c441907`  
		Last Modified: Thu, 02 Jul 2026 05:27:16 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06964615ddfd63cddf0fc20958fad95c740fd22a674d96b4be7287cbcb0e9142`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 8.7 MB (8665798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a001a17848ba9868f23540a1f68cccb127a84266d4897f6ac3b3815267955f6`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 3.8 MB (3764700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2758a7891b4f2530510a11cbf3c9421e2a840034192b8db80b7f57e457e6140`  
		Last Modified: Thu, 02 Jul 2026 05:27:16 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6814e6bc0fee43f6aad816b7bef15a31d3a0c4eb895b974bfd482b2c9547e3d`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:f9ffad6426f41ce5d1488ff9d154b0280d190ee09897f03223c3669e8102aff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9775ff08da9e4d72769abe6ab94f04dba379b3bc50a101510026cf7f1f1f7e1c`

```dockerfile
```

-	Layers:
	-	`sha256:d80a753d02b4b333ccc2a36e8f9a7abfe2a10c2242dd2710f5d686cd9a526ccf`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 3.9 MB (3882114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3d03bfe2fc6fa440ab015951ee7c10d23a65b069639befb8c5d75cbbbb34150`  
		Last Modified: Thu, 02 Jul 2026 05:27:16 GMT  
		Size: 24.3 KB (24326 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:c3dcb21b4beea59fd0c030fc5e14d5eb01fc29f5d8ce13947ba1b9590862f19f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108083746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c2841eaf1c90e63c740d3237ef7365521bffa483f145e11b9afafdcaa73d34`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:20:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:42 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:20:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:20:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:31 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 02 Jul 2026 05:27:31 GMT
WORKDIR /liquibase
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 02 Jul 2026 05:27:32 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LPM_VERSION=0.2.14
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 02 Jul 2026 05:27:38 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 02 Jul 2026 05:27:38 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 02 Jul 2026 05:27:38 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
USER liquibase:liquibase
# Thu, 02 Jul 2026 05:27:38 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:38 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31867ee83a3b942e512051bf333cd1457d52488d4301a87a7fc711a25074052b`  
		Last Modified: Thu, 02 Jul 2026 02:21:00 GMT  
		Size: 16.0 MB (16040042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901b4e7088d9158a1260b12e04fea578f84ddf02cfcce587e92be2514654439b`  
		Last Modified: Thu, 02 Jul 2026 02:21:01 GMT  
		Size: 52.3 MB (52314939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9560472410617d6e83393c3ff79d0a6ebd27f5a4ccc4dfc6285baa0c6acf2beb`  
		Last Modified: Thu, 02 Jul 2026 02:20:59 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dcb4f3ef419d02c0d1fc3d2de3acdf8982ed2c10ba070c24d4df9ca8db40fa8`  
		Last Modified: Thu, 02 Jul 2026 02:20:56 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751bea6a09b569c94d56c5301c0dc0a6af753bbb2075a7d75a0a2251b6a66eee`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0927267d9a767b9e060b37456c34afe2c2ab89a9498bd10fa80a31bc1efdaf59`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 8.7 MB (8665797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff371d3cd7d37b8f8c5bc67b5a7a923adff676d2f2673774db58e185d5e0b2f`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 3.4 MB (3441400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a146904a9a0e4858b7c533dd52eab3cc73644a1cab796e873be0a679b42c71`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6062c3928b4c85d0c361e3624e180bea5c6bfb12efe31eb998da8a4954afff1`  
		Last Modified: Thu, 02 Jul 2026 05:27:48 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:8d15cfca08334af281f09eda460e2f07bb9ab63c6dcc0bef11e0e3448a975c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b80e8babd04ffb321973ef8168e3c34703fe050ed5439a6ccbc3b81b9774e5`

```dockerfile
```

-	Layers:
	-	`sha256:f48b829243cc5b8ee95de985f5b89ea5db16156bb00aeb4dee76f2c9eaff159b`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 3.9 MB (3881782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e739e28c0e7222fc06c95d6a509588d0ea7753e1e5340741fede2c0d25da1ed2`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 24.4 KB (24448 bytes)  
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
$ docker pull liquibase@sha256:c5bf7a096cc645522b9efa1ba4c1998ab49e4f10ead62f439804b7e0166e80ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0.1` - linux; amd64

```console
$ docker pull liquibase@sha256:995289cf5f3bc500ec96e5fe1ee8e3db0cafd72c2a4152062a08411eb4f8582e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111410644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe0bd6de5d6a3923ffcd5d1ca80767f31a44fae906108c21564be6808e02806`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:20:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:38 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:22:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:22:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:22:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:01 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 02 Jul 2026 05:27:01 GMT
WORKDIR /liquibase
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 02 Jul 2026 05:27:02 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LPM_VERSION=0.2.14
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 02 Jul 2026 05:27:07 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 02 Jul 2026 05:27:07 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 02 Jul 2026 05:27:07 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 02 Jul 2026 05:27:07 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 02 Jul 2026 05:27:07 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 02 Jul 2026 05:27:07 GMT
USER liquibase:liquibase
# Thu, 02 Jul 2026 05:27:07 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:07 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e506ec396e165cc004363134ece7110907f8090022df57ecb9f3e0dbf24c72`  
		Last Modified: Thu, 02 Jul 2026 02:21:04 GMT  
		Size: 16.1 MB (16110061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd382eea9ba8bda9e6f71f822991a4effbec4dd663e2358a56fbca0169ce99de`  
		Last Modified: Thu, 02 Jul 2026 02:23:06 GMT  
		Size: 53.1 MB (53122821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec83a7e6f59b2cba730c94a4f1699321b701a55092a8f3e82638609b123dc341`  
		Last Modified: Thu, 02 Jul 2026 02:23:04 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e626ceb0c0ed7c31015ab115e6f787c697f886eef66f047adaa2605ebe14660`  
		Last Modified: Thu, 02 Jul 2026 02:23:04 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb1b75584631a7a251287e5f3038872b82406e13ff009935dc548909c441907`  
		Last Modified: Thu, 02 Jul 2026 05:27:16 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06964615ddfd63cddf0fc20958fad95c740fd22a674d96b4be7287cbcb0e9142`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 8.7 MB (8665798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a001a17848ba9868f23540a1f68cccb127a84266d4897f6ac3b3815267955f6`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 3.8 MB (3764700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2758a7891b4f2530510a11cbf3c9421e2a840034192b8db80b7f57e457e6140`  
		Last Modified: Thu, 02 Jul 2026 05:27:16 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6814e6bc0fee43f6aad816b7bef15a31d3a0c4eb895b974bfd482b2c9547e3d`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:f9ffad6426f41ce5d1488ff9d154b0280d190ee09897f03223c3669e8102aff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9775ff08da9e4d72769abe6ab94f04dba379b3bc50a101510026cf7f1f1f7e1c`

```dockerfile
```

-	Layers:
	-	`sha256:d80a753d02b4b333ccc2a36e8f9a7abfe2a10c2242dd2710f5d686cd9a526ccf`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 3.9 MB (3882114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3d03bfe2fc6fa440ab015951ee7c10d23a65b069639befb8c5d75cbbbb34150`  
		Last Modified: Thu, 02 Jul 2026 05:27:16 GMT  
		Size: 24.3 KB (24326 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0.1` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:c3dcb21b4beea59fd0c030fc5e14d5eb01fc29f5d8ce13947ba1b9590862f19f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108083746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c2841eaf1c90e63c740d3237ef7365521bffa483f145e11b9afafdcaa73d34`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:20:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:42 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:20:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:20:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:31 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 02 Jul 2026 05:27:31 GMT
WORKDIR /liquibase
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 02 Jul 2026 05:27:32 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LPM_VERSION=0.2.14
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 02 Jul 2026 05:27:38 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 02 Jul 2026 05:27:38 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 02 Jul 2026 05:27:38 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
USER liquibase:liquibase
# Thu, 02 Jul 2026 05:27:38 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:38 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31867ee83a3b942e512051bf333cd1457d52488d4301a87a7fc711a25074052b`  
		Last Modified: Thu, 02 Jul 2026 02:21:00 GMT  
		Size: 16.0 MB (16040042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901b4e7088d9158a1260b12e04fea578f84ddf02cfcce587e92be2514654439b`  
		Last Modified: Thu, 02 Jul 2026 02:21:01 GMT  
		Size: 52.3 MB (52314939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9560472410617d6e83393c3ff79d0a6ebd27f5a4ccc4dfc6285baa0c6acf2beb`  
		Last Modified: Thu, 02 Jul 2026 02:20:59 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dcb4f3ef419d02c0d1fc3d2de3acdf8982ed2c10ba070c24d4df9ca8db40fa8`  
		Last Modified: Thu, 02 Jul 2026 02:20:56 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751bea6a09b569c94d56c5301c0dc0a6af753bbb2075a7d75a0a2251b6a66eee`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0927267d9a767b9e060b37456c34afe2c2ab89a9498bd10fa80a31bc1efdaf59`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 8.7 MB (8665797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff371d3cd7d37b8f8c5bc67b5a7a923adff676d2f2673774db58e185d5e0b2f`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 3.4 MB (3441400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a146904a9a0e4858b7c533dd52eab3cc73644a1cab796e873be0a679b42c71`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6062c3928b4c85d0c361e3624e180bea5c6bfb12efe31eb998da8a4954afff1`  
		Last Modified: Thu, 02 Jul 2026 05:27:48 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:8d15cfca08334af281f09eda460e2f07bb9ab63c6dcc0bef11e0e3448a975c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b80e8babd04ffb321973ef8168e3c34703fe050ed5439a6ccbc3b81b9774e5`

```dockerfile
```

-	Layers:
	-	`sha256:f48b829243cc5b8ee95de985f5b89ea5db16156bb00aeb4dee76f2c9eaff159b`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 3.9 MB (3881782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e739e28c0e7222fc06c95d6a509588d0ea7753e1e5340741fede2c0d25da1ed2`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 24.4 KB (24448 bytes)  
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
$ docker pull liquibase@sha256:c5bf7a096cc645522b9efa1ba4c1998ab49e4f10ead62f439804b7e0166e80ca
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:latest` - linux; amd64

```console
$ docker pull liquibase@sha256:995289cf5f3bc500ec96e5fe1ee8e3db0cafd72c2a4152062a08411eb4f8582e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.4 MB (111410644 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fe0bd6de5d6a3923ffcd5d1ca80767f31a44fae906108c21564be6808e02806`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:20:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:38 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:22:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:22:52 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:22:52 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:52 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:01 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 02 Jul 2026 05:27:01 GMT
WORKDIR /liquibase
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 02 Jul 2026 05:27:02 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LPM_VERSION=0.2.14
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 02 Jul 2026 05:27:02 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 02 Jul 2026 05:27:02 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 02 Jul 2026 05:27:07 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 02 Jul 2026 05:27:07 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 02 Jul 2026 05:27:07 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 02 Jul 2026 05:27:07 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 02 Jul 2026 05:27:07 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 02 Jul 2026 05:27:07 GMT
USER liquibase:liquibase
# Thu, 02 Jul 2026 05:27:07 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:07 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e506ec396e165cc004363134ece7110907f8090022df57ecb9f3e0dbf24c72`  
		Last Modified: Thu, 02 Jul 2026 02:21:04 GMT  
		Size: 16.1 MB (16110061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd382eea9ba8bda9e6f71f822991a4effbec4dd663e2358a56fbca0169ce99de`  
		Last Modified: Thu, 02 Jul 2026 02:23:06 GMT  
		Size: 53.1 MB (53122821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec83a7e6f59b2cba730c94a4f1699321b701a55092a8f3e82638609b123dc341`  
		Last Modified: Thu, 02 Jul 2026 02:23:04 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e626ceb0c0ed7c31015ab115e6f787c697f886eef66f047adaa2605ebe14660`  
		Last Modified: Thu, 02 Jul 2026 02:23:04 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdb1b75584631a7a251287e5f3038872b82406e13ff009935dc548909c441907`  
		Last Modified: Thu, 02 Jul 2026 05:27:16 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06964615ddfd63cddf0fc20958fad95c740fd22a674d96b4be7287cbcb0e9142`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 8.7 MB (8665798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a001a17848ba9868f23540a1f68cccb127a84266d4897f6ac3b3815267955f6`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 3.8 MB (3764700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2758a7891b4f2530510a11cbf3c9421e2a840034192b8db80b7f57e457e6140`  
		Last Modified: Thu, 02 Jul 2026 05:27:16 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6814e6bc0fee43f6aad816b7bef15a31d3a0c4eb895b974bfd482b2c9547e3d`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 173.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:f9ffad6426f41ce5d1488ff9d154b0280d190ee09897f03223c3669e8102aff0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9775ff08da9e4d72769abe6ab94f04dba379b3bc50a101510026cf7f1f1f7e1c`

```dockerfile
```

-	Layers:
	-	`sha256:d80a753d02b4b333ccc2a36e8f9a7abfe2a10c2242dd2710f5d686cd9a526ccf`  
		Last Modified: Thu, 02 Jul 2026 05:27:17 GMT  
		Size: 3.9 MB (3882114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3d03bfe2fc6fa440ab015951ee7c10d23a65b069639befb8c5d75cbbbb34150`  
		Last Modified: Thu, 02 Jul 2026 05:27:16 GMT  
		Size: 24.3 KB (24326 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:latest` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:c3dcb21b4beea59fd0c030fc5e14d5eb01fc29f5d8ce13947ba1b9590862f19f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.1 MB (108083746 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5c2841eaf1c90e63c740d3237ef7365521bffa483f145e11b9afafdcaa73d34`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Mon, 29 Jun 2026 10:38:39 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:38:39 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:38:39 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:38:42 GMT
ADD file:a517741c956f6a7e4b7cb0efd9bc418ce3cc54eb49b5314080ff606a7430ac2a in / 
# Mon, 29 Jun 2026 10:38:42 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:20:42 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:20:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:20:42 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:20:42 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:20:42 GMT
ENV JAVA_VERSION=jdk-21.0.11+10
# Thu, 02 Jul 2026 02:20:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='e5038aae3ca9ff670bc696496b0728dbd23d280026bad30291cb919221ecfdcb';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_x64_linux_hotspot_21.0.11_10.tar.gz';          ;;        arm64)          ESUM='fa23d9d9945053e67bcc7638410eabf1e17a7672c7c95a24f70cd08b8407d36e';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.11_10.tar.gz';          ;;        ppc64el)          ESUM='fefb53c4bd687e7a91a9a9809ec80e0862e829cd20513839ad1a9988ddc89482';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.11_10.tar.gz';          ;;        s390x)          ESUM='45736e9e14d52619133900a077b4f72d1ebee0fd0bb053da0bca9dce9fc4d916';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.11%2B10/OpenJDK21U-jre_s390x_linux_hotspot_21.0.11_10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:20:46 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:20:46 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:20:46 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:31 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 02 Jul 2026 05:27:31 GMT
WORKDIR /liquibase
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 02 Jul 2026 05:27:32 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LPM_VERSION=0.2.14
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 02 Jul 2026 05:27:32 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 02 Jul 2026 05:27:32 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 02 Jul 2026 05:27:38 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 02 Jul 2026 05:27:38 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 02 Jul 2026 05:27:38 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 02 Jul 2026 05:27:38 GMT
USER liquibase:liquibase
# Thu, 02 Jul 2026 05:27:38 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:27:38 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:119d19e001bafa21919289095e1dbfac64f1e16d2469dd14c2d2a520039d26d9`  
		Last Modified: Mon, 29 Jun 2026 11:25:25 GMT  
		Size: 27.6 MB (27613184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31867ee83a3b942e512051bf333cd1457d52488d4301a87a7fc711a25074052b`  
		Last Modified: Thu, 02 Jul 2026 02:21:00 GMT  
		Size: 16.0 MB (16040042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:901b4e7088d9158a1260b12e04fea578f84ddf02cfcce587e92be2514654439b`  
		Last Modified: Thu, 02 Jul 2026 02:21:01 GMT  
		Size: 52.3 MB (52314939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9560472410617d6e83393c3ff79d0a6ebd27f5a4ccc4dfc6285baa0c6acf2beb`  
		Last Modified: Thu, 02 Jul 2026 02:20:59 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dcb4f3ef419d02c0d1fc3d2de3acdf8982ed2c10ba070c24d4df9ca8db40fa8`  
		Last Modified: Thu, 02 Jul 2026 02:20:56 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751bea6a09b569c94d56c5301c0dc0a6af753bbb2075a7d75a0a2251b6a66eee`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0927267d9a767b9e060b37456c34afe2c2ab89a9498bd10fa80a31bc1efdaf59`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 8.7 MB (8665797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff371d3cd7d37b8f8c5bc67b5a7a923adff676d2f2673774db58e185d5e0b2f`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 3.4 MB (3441400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5a146904a9a0e4858b7c533dd52eab3cc73644a1cab796e873be0a679b42c71`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 1.4 KB (1428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6062c3928b4c85d0c361e3624e180bea5c6bfb12efe31eb998da8a4954afff1`  
		Last Modified: Thu, 02 Jul 2026 05:27:48 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:8d15cfca08334af281f09eda460e2f07bb9ab63c6dcc0bef11e0e3448a975c3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3906230 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11b80e8babd04ffb321973ef8168e3c34703fe050ed5439a6ccbc3b81b9774e5`

```dockerfile
```

-	Layers:
	-	`sha256:f48b829243cc5b8ee95de985f5b89ea5db16156bb00aeb4dee76f2c9eaff159b`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 3.9 MB (3881782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e739e28c0e7222fc06c95d6a509588d0ea7753e1e5340741fede2c0d25da1ed2`  
		Last Modified: Thu, 02 Jul 2026 05:27:47 GMT  
		Size: 24.4 KB (24448 bytes)  
		MIME: application/vnd.in-toto+json
