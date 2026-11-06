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
$ docker pull liquibase@sha256:a4dfe837fa2b42ac60a25a68b81bc62c03a0df67a605c60bac46c43f8f67009b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0` - linux; amd64

```console
$ docker pull liquibase@sha256:5a53ad9b732a2a4370127b5f8cea2fffa54711eb4ed5afe74c84abc54e26acaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111520119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80fefb36a7730a3e7ec162ad70b7de6486e4ad5622ba1830fdd441ebb983751`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 19:14:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:14:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:14:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:14:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:14:28 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:14:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:14:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:14:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:14:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:53:53 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 29 Oct 2026 19:53:53 GMT
WORKDIR /liquibase
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 29 Oct 2026 19:53:54 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LPM_VERSION=0.2.14
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 29 Oct 2026 19:54:02 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 29 Oct 2026 19:54:02 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 29 Oct 2026 19:54:02 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 29 Oct 2026 19:54:02 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 29 Oct 2026 19:54:02 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 29 Oct 2026 19:54:02 GMT
USER liquibase:liquibase
# Thu, 29 Oct 2026 19:54:02 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:54:02 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771b03f5a03d15a4c09cdfb981be98e49564668df166db41e80cfd69978a10cb`  
		Last Modified: Thu, 29 Oct 2026 19:14:45 GMT  
		Size: 16.1 MB (16115787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8d2409cb048f7e8d48d10f38422c2eb7a1f649e9d6f8a151d33d7b3523a70b`  
		Last Modified: Thu, 29 Oct 2026 19:14:46 GMT  
		Size: 53.2 MB (53212255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc306c5cceb31c1345d0b394aa8a875f6ebdfefa04d50fce410795fbca43b64`  
		Last Modified: Thu, 29 Oct 2026 19:14:44 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5374b04227882e9d1dbd8a25deb97d396cd09f3098d0e93c5d47900f6e09c706`  
		Last Modified: Thu, 29 Oct 2026 19:14:44 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c94d060da29d554e573408293841567433e503009d688efefeb62fdcd57e18`  
		Last Modified: Thu, 29 Oct 2026 19:54:10 GMT  
		Size: 4.3 KB (4308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e883efd515fb7a7907c62f4e8409bb35154fe505d5853ddbb2f14b003963fd64`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 8.7 MB (8665798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87154afe9e824b0d4d8f9777731914ce72772cffb55661213991226606dfe1c`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 3.8 MB (3765228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc709877eea65ddc3e2aeb85580d0c0dcd40ae1f9951bf4fef3dbcc8f921edf`  
		Last Modified: Thu, 29 Oct 2026 19:54:10 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3147237c537617a410c00a32294aca09e5d70389fdf6c18b7e0e8035bdc8e74e`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:f8f35c6a5aa19bfc576d120805016a2843e3f8ef51bd5e61cd3b94f379d77359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3905876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83186100d8c15b507c4acf649cf442e8b4064fdcab188b86a9ee86671f541c73`

```dockerfile
```

-	Layers:
	-	`sha256:5fe144ad440eee2ed5f5f2f014f6660106c2db5b35bafa8e5b9c4490fc08dcec`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 3.9 MB (3881554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d9ea45ad50e481099252288a62603bff7386f3cc0bc40a729cef97cd8ddec86`  
		Last Modified: Thu, 29 Oct 2026 19:54:10 GMT  
		Size: 24.3 KB (24322 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:7b1739b3f0c0ba7e4c91079553ba1143e5bfae4b2e50d7ab6c577cca72777cb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108241536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd7a668109f5315b0295bf96cb11e341bc5c6a8cbc3ade9810cebe884a2b1e2`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 19:08:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:08:30 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:08:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:08:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:08:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:08:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:04 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 29 Oct 2026 19:55:04 GMT
WORKDIR /liquibase
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 29 Oct 2026 19:55:05 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LPM_VERSION=0.2.14
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 29 Oct 2026 19:55:15 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 29 Oct 2026 19:55:15 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 29 Oct 2026 19:55:15 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 29 Oct 2026 19:55:15 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 29 Oct 2026 19:55:15 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 29 Oct 2026 19:55:15 GMT
USER liquibase:liquibase
# Thu, 29 Oct 2026 19:55:15 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:15 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4800dda2906a9019f00e4ce4e4ace9dc1c3a5f8c2ecea65a86a172c5193d30ed`  
		Last Modified: Thu, 29 Oct 2026 19:08:47 GMT  
		Size: 16.1 MB (16050205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d630f8991f7fd4bb5958b5944804cce8b6281fa80b9bb2a0ed22678526498e6`  
		Last Modified: Thu, 29 Oct 2026 19:08:48 GMT  
		Size: 52.4 MB (52390622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52afaf2de27001bf62413136d4ac4b7e0b6d64e098ac07432f12b51dbb6bc3de`  
		Last Modified: Thu, 29 Oct 2026 19:08:46 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136a42ae397cf22a79b3a835ffdd6a3a62683685bb35d514cadec361c6a35487`  
		Last Modified: Thu, 29 Oct 2026 19:08:47 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb31e84d94223d638e774a0c41ec8d1bb425cac8325ab836d247df60d1c691b`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
		Size: 4.3 KB (4310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:216e65667a9cea8154aabead4d8bb9010a2a63e81d10f14778e675570bfcc1e6`  
		Last Modified: Thu, 29 Oct 2026 19:55:24 GMT  
		Size: 8.7 MB (8665801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e63ed0ac68870402be3fb5987c4990b519b3dbe62dd46dbbb027a4cf2dd9ddd`  
		Last Modified: Thu, 29 Oct 2026 19:55:24 GMT  
		Size: 3.4 MB (3441735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e5f8c7f7f293add746b66ccdc606649fbeabecbb261bafbb9e789823332fa`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18561393ed74c6db4788683a91797ba4d1d0dd7de5efc7d78628a5707bff04f0`  
		Last Modified: Thu, 29 Oct 2026 19:55:24 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0` - unknown; unknown

```console
$ docker pull liquibase@sha256:84416af2c680ce071fd698fa09a18a40821b9cb3ea8da341527871534778dd84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3905667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5f9ba5767704d71a02f64cefe465e90650af84bc7201c22f1e1887cb5cc7a5`

```dockerfile
```

-	Layers:
	-	`sha256:e5112341847be58890124bb38ecb4cfbc6f7e94476f95d8734d84e8ce0be93f2`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
		Size: 3.9 MB (3881222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b10de852e34fe1d5d47f703e7b565b045a34dc3f251fd4cffe3e003dce473b3b`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
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
$ docker pull liquibase@sha256:a4dfe837fa2b42ac60a25a68b81bc62c03a0df67a605c60bac46c43f8f67009b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:5.0.1` - linux; amd64

```console
$ docker pull liquibase@sha256:5a53ad9b732a2a4370127b5f8cea2fffa54711eb4ed5afe74c84abc54e26acaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111520119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80fefb36a7730a3e7ec162ad70b7de6486e4ad5622ba1830fdd441ebb983751`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 19:14:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:14:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:14:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:14:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:14:28 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:14:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:14:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:14:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:14:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:53:53 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 29 Oct 2026 19:53:53 GMT
WORKDIR /liquibase
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 29 Oct 2026 19:53:54 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LPM_VERSION=0.2.14
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 29 Oct 2026 19:54:02 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 29 Oct 2026 19:54:02 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 29 Oct 2026 19:54:02 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 29 Oct 2026 19:54:02 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 29 Oct 2026 19:54:02 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 29 Oct 2026 19:54:02 GMT
USER liquibase:liquibase
# Thu, 29 Oct 2026 19:54:02 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:54:02 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771b03f5a03d15a4c09cdfb981be98e49564668df166db41e80cfd69978a10cb`  
		Last Modified: Thu, 29 Oct 2026 19:14:45 GMT  
		Size: 16.1 MB (16115787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8d2409cb048f7e8d48d10f38422c2eb7a1f649e9d6f8a151d33d7b3523a70b`  
		Last Modified: Thu, 29 Oct 2026 19:14:46 GMT  
		Size: 53.2 MB (53212255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc306c5cceb31c1345d0b394aa8a875f6ebdfefa04d50fce410795fbca43b64`  
		Last Modified: Thu, 29 Oct 2026 19:14:44 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5374b04227882e9d1dbd8a25deb97d396cd09f3098d0e93c5d47900f6e09c706`  
		Last Modified: Thu, 29 Oct 2026 19:14:44 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c94d060da29d554e573408293841567433e503009d688efefeb62fdcd57e18`  
		Last Modified: Thu, 29 Oct 2026 19:54:10 GMT  
		Size: 4.3 KB (4308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e883efd515fb7a7907c62f4e8409bb35154fe505d5853ddbb2f14b003963fd64`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 8.7 MB (8665798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87154afe9e824b0d4d8f9777731914ce72772cffb55661213991226606dfe1c`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 3.8 MB (3765228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc709877eea65ddc3e2aeb85580d0c0dcd40ae1f9951bf4fef3dbcc8f921edf`  
		Last Modified: Thu, 29 Oct 2026 19:54:10 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3147237c537617a410c00a32294aca09e5d70389fdf6c18b7e0e8035bdc8e74e`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:f8f35c6a5aa19bfc576d120805016a2843e3f8ef51bd5e61cd3b94f379d77359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3905876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83186100d8c15b507c4acf649cf442e8b4064fdcab188b86a9ee86671f541c73`

```dockerfile
```

-	Layers:
	-	`sha256:5fe144ad440eee2ed5f5f2f014f6660106c2db5b35bafa8e5b9c4490fc08dcec`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 3.9 MB (3881554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d9ea45ad50e481099252288a62603bff7386f3cc0bc40a729cef97cd8ddec86`  
		Last Modified: Thu, 29 Oct 2026 19:54:10 GMT  
		Size: 24.3 KB (24322 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:5.0.1` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:7b1739b3f0c0ba7e4c91079553ba1143e5bfae4b2e50d7ab6c577cca72777cb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108241536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd7a668109f5315b0295bf96cb11e341bc5c6a8cbc3ade9810cebe884a2b1e2`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 19:08:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:08:30 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:08:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:08:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:08:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:08:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:04 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 29 Oct 2026 19:55:04 GMT
WORKDIR /liquibase
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 29 Oct 2026 19:55:05 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LPM_VERSION=0.2.14
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 29 Oct 2026 19:55:15 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 29 Oct 2026 19:55:15 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 29 Oct 2026 19:55:15 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 29 Oct 2026 19:55:15 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 29 Oct 2026 19:55:15 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 29 Oct 2026 19:55:15 GMT
USER liquibase:liquibase
# Thu, 29 Oct 2026 19:55:15 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:15 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4800dda2906a9019f00e4ce4e4ace9dc1c3a5f8c2ecea65a86a172c5193d30ed`  
		Last Modified: Thu, 29 Oct 2026 19:08:47 GMT  
		Size: 16.1 MB (16050205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d630f8991f7fd4bb5958b5944804cce8b6281fa80b9bb2a0ed22678526498e6`  
		Last Modified: Thu, 29 Oct 2026 19:08:48 GMT  
		Size: 52.4 MB (52390622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52afaf2de27001bf62413136d4ac4b7e0b6d64e098ac07432f12b51dbb6bc3de`  
		Last Modified: Thu, 29 Oct 2026 19:08:46 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136a42ae397cf22a79b3a835ffdd6a3a62683685bb35d514cadec361c6a35487`  
		Last Modified: Thu, 29 Oct 2026 19:08:47 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb31e84d94223d638e774a0c41ec8d1bb425cac8325ab836d247df60d1c691b`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
		Size: 4.3 KB (4310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:216e65667a9cea8154aabead4d8bb9010a2a63e81d10f14778e675570bfcc1e6`  
		Last Modified: Thu, 29 Oct 2026 19:55:24 GMT  
		Size: 8.7 MB (8665801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e63ed0ac68870402be3fb5987c4990b519b3dbe62dd46dbbb027a4cf2dd9ddd`  
		Last Modified: Thu, 29 Oct 2026 19:55:24 GMT  
		Size: 3.4 MB (3441735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e5f8c7f7f293add746b66ccdc606649fbeabecbb261bafbb9e789823332fa`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18561393ed74c6db4788683a91797ba4d1d0dd7de5efc7d78628a5707bff04f0`  
		Last Modified: Thu, 29 Oct 2026 19:55:24 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:5.0.1` - unknown; unknown

```console
$ docker pull liquibase@sha256:84416af2c680ce071fd698fa09a18a40821b9cb3ea8da341527871534778dd84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3905667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5f9ba5767704d71a02f64cefe465e90650af84bc7201c22f1e1887cb5cc7a5`

```dockerfile
```

-	Layers:
	-	`sha256:e5112341847be58890124bb38ecb4cfbc6f7e94476f95d8734d84e8ce0be93f2`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
		Size: 3.9 MB (3881222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b10de852e34fe1d5d47f703e7b565b045a34dc3f251fd4cffe3e003dce473b3b`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
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
$ docker pull liquibase@sha256:a4dfe837fa2b42ac60a25a68b81bc62c03a0df67a605c60bac46c43f8f67009b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `liquibase:latest` - linux; amd64

```console
$ docker pull liquibase@sha256:5a53ad9b732a2a4370127b5f8cea2fffa54711eb4ed5afe74c84abc54e26acaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.5 MB (111520119 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80fefb36a7730a3e7ec162ad70b7de6486e4ad5622ba1830fdd441ebb983751`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 19:14:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:14:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:14:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:14:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:14:28 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:14:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:14:31 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:14:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:14:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:53:53 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 29 Oct 2026 19:53:53 GMT
WORKDIR /liquibase
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 29 Oct 2026 19:53:54 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LPM_VERSION=0.2.14
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 29 Oct 2026 19:53:54 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 29 Oct 2026 19:53:54 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 29 Oct 2026 19:54:02 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 29 Oct 2026 19:54:02 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 29 Oct 2026 19:54:02 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 29 Oct 2026 19:54:02 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 29 Oct 2026 19:54:02 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 29 Oct 2026 19:54:02 GMT
USER liquibase:liquibase
# Thu, 29 Oct 2026 19:54:02 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:54:02 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:771b03f5a03d15a4c09cdfb981be98e49564668df166db41e80cfd69978a10cb`  
		Last Modified: Thu, 29 Oct 2026 19:14:45 GMT  
		Size: 16.1 MB (16115787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c8d2409cb048f7e8d48d10f38422c2eb7a1f649e9d6f8a151d33d7b3523a70b`  
		Last Modified: Thu, 29 Oct 2026 19:14:46 GMT  
		Size: 53.2 MB (53212255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc306c5cceb31c1345d0b394aa8a875f6ebdfefa04d50fce410795fbca43b64`  
		Last Modified: Thu, 29 Oct 2026 19:14:44 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5374b04227882e9d1dbd8a25deb97d396cd09f3098d0e93c5d47900f6e09c706`  
		Last Modified: Thu, 29 Oct 2026 19:14:44 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c94d060da29d554e573408293841567433e503009d688efefeb62fdcd57e18`  
		Last Modified: Thu, 29 Oct 2026 19:54:10 GMT  
		Size: 4.3 KB (4308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e883efd515fb7a7907c62f4e8409bb35154fe505d5853ddbb2f14b003963fd64`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 8.7 MB (8665798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c87154afe9e824b0d4d8f9777731914ce72772cffb55661213991226606dfe1c`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 3.8 MB (3765228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc709877eea65ddc3e2aeb85580d0c0dcd40ae1f9951bf4fef3dbcc8f921edf`  
		Last Modified: Thu, 29 Oct 2026 19:54:10 GMT  
		Size: 1.4 KB (1430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3147237c537617a410c00a32294aca09e5d70389fdf6c18b7e0e8035bdc8e74e`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:f8f35c6a5aa19bfc576d120805016a2843e3f8ef51bd5e61cd3b94f379d77359
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3905876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83186100d8c15b507c4acf649cf442e8b4064fdcab188b86a9ee86671f541c73`

```dockerfile
```

-	Layers:
	-	`sha256:5fe144ad440eee2ed5f5f2f014f6660106c2db5b35bafa8e5b9c4490fc08dcec`  
		Last Modified: Thu, 29 Oct 2026 19:54:11 GMT  
		Size: 3.9 MB (3881554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d9ea45ad50e481099252288a62603bff7386f3cc0bc40a729cef97cd8ddec86`  
		Last Modified: Thu, 29 Oct 2026 19:54:10 GMT  
		Size: 24.3 KB (24322 bytes)  
		MIME: application/vnd.in-toto+json

### `liquibase:latest` - linux; arm64 variant v8

```console
$ docker pull liquibase@sha256:7b1739b3f0c0ba7e4c91079553ba1143e5bfae4b2e50d7ab6c577cca72777cb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108241536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fd7a668109f5315b0295bf96cb11e341bc5c6a8cbc3ade9810cebe884a2b1e2`
-	Entrypoint: `["\/liquibase\/docker-entrypoint.sh"]`
-	Default Command: `["--help"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:50 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:50 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:52 GMT
ADD file:6efa877f019ce1c165e045c546c059568465dad040d65f7797e1bbbf530bed3e in / 
# Sun, 25 Oct 2026 20:10:53 GMT
CMD ["/bin/bash"]
# Thu, 29 Oct 2026 19:08:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:08:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:08:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:08:30 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:08:30 GMT
ENV JAVA_VERSION=jdk-21.0.13+9
# Thu, 29 Oct 2026 19:08:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='a535a1df9c6284d9618872984e026ae0352d1f7e9e0605425c0e6114f47351dd';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_x64_linux_hotspot_21.0.13_9.tar.gz';          ;;        arm64)          ESUM='b1734db7ade49c3f6acc6ae06233b8c2dd90e3e2f00f67000ae1c972aaa64d8c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_aarch64_linux_hotspot_21.0.13_9.tar.gz';          ;;        ppc64el)          ESUM='4994d5bf70a58b683c86158dc1c19c973551cc225956893f91008c6180469c6c';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_ppc64le_linux_hotspot_21.0.13_9.tar.gz';          ;;        s390x)          ESUM='f4722f400e7fce6e6d80c86d5ef68d0007694670a0a2b0bb569ad0e83dd5f996';          BINARY_URL='https://github.com/adoptium/temurin21-binaries/releases/download/jdk-21.0.13%2B9/OpenJDK21U-jre_s390x_linux_hotspot_21.0.13_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:08:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:08:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:08:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:04 GMT
RUN groupadd --gid 1001 liquibase &&     useradd --uid 1001 --gid liquibase --create-home --home-dir /liquibase liquibase &&     chown liquibase /liquibase # buildkit
# Thu, 29 Oct 2026 19:55:04 GMT
WORKDIR /liquibase
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LIQUIBASE_VERSION=5.0.1
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
# Thu, 29 Oct 2026 19:55:05 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449
RUN wget -q -O liquibase-${LIQUIBASE_VERSION}.tar.gz "https://package.liquibase.com/downloads/dockerhub/official/liquibase-${LIQUIBASE_VERSION}.tar.gz" &&     echo "$LB_SHA256 *liquibase-${LIQUIBASE_VERSION}.tar.gz" | sha256sum -c - &&     tar -xzf liquibase-${LIQUIBASE_VERSION}.tar.gz &&     rm liquibase-${LIQUIBASE_VERSION}.tar.gz &&     ln -s /liquibase/liquibase /usr/local/bin/liquibase &&     ln -s /liquibase/docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh &&     liquibase --version # buildkit
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LPM_VERSION=0.2.14
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e
# Thu, 29 Oct 2026 19:55:05 GMT
ARG LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.description=Liquibase Container Image
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.licenses=FSL-1.1-ALv2
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.vendor=Liquibase
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.version=5.0.1
# Thu, 29 Oct 2026 19:55:05 GMT
LABEL org.opencontainers.image.documentation=https://docs.liquibase.com
# Thu, 29 Oct 2026 19:55:15 GMT
# ARGS: LIQUIBASE_VERSION=5.0.1 LB_SHA256=3ae11ccdcd4c080e421e5fd043bdbd624d56fcfc9b294d5d9d898cb8b074e449 LPM_VERSION=0.2.14 LPM_SHA256=28750d84bf76d32ba3a2d51674a1b4e14205523c87e4655b2cd8de68b916758e LPM_SHA256_ARM=541a220aa3c3227cc0fb40b15976b11011568a06a6499af090258bf604f45cc0
RUN apt-get update &&     apt-get -yqq install unzip --no-install-recommends &&     rm -rf /var/lib/apt/lists/* &&     mkdir /liquibase/bin &&     arch="$(dpkg --print-architecture)" &&     case "$arch" in     amd64)  DOWNLOAD_ARCH=""  ;;     arm64)  DOWNLOAD_ARCH="-arm64" && LPM_SHA256=$LPM_SHA256_ARM ;;     *) echo >&2 "error: unsupported architecture '$arch'" && exit 1 ;;     esac && wget -q -O lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip "https://github.com/liquibase/liquibase-package-manager/releases/download/v${LPM_VERSION}/lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" &&     echo "$LPM_SHA256 *lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip" | sha256sum -c - &&     unzip lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip -d bin/ &&     rm lpm-${LPM_VERSION}-linux${DOWNLOAD_ARCH}.zip &&     apt-get purge -y --auto-remove unzip &&     ln -s /liquibase/bin/lpm /usr/local/bin/lpm &&     lpm --version # buildkit
# Thu, 29 Oct 2026 19:55:15 GMT
ENV LIQUIBASE_HOME=/liquibase
# Thu, 29 Oct 2026 19:55:15 GMT
ENV DOCKER_LIQUIBASE=true
# Thu, 29 Oct 2026 19:55:15 GMT
COPY docker-entrypoint.sh ./ # buildkit
# Thu, 29 Oct 2026 19:55:15 GMT
COPY liquibase.docker.properties ./ # buildkit
# Thu, 29 Oct 2026 19:55:15 GMT
USER liquibase:liquibase
# Thu, 29 Oct 2026 19:55:15 GMT
ENTRYPOINT ["/liquibase/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:15 GMT
CMD ["--help"]
```

-	Layers:
	-	`sha256:771eed73ee82c7916df197c0fd7ef3ac4eedcb9a6318b10d2652948c6c4ca08f`  
		Last Modified: Sun, 25 Oct 2026 20:45:27 GMT  
		Size: 27.7 MB (27684607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4800dda2906a9019f00e4ce4e4ace9dc1c3a5f8c2ecea65a86a172c5193d30ed`  
		Last Modified: Thu, 29 Oct 2026 19:08:47 GMT  
		Size: 16.1 MB (16050205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d630f8991f7fd4bb5958b5944804cce8b6281fa80b9bb2a0ed22678526498e6`  
		Last Modified: Thu, 29 Oct 2026 19:08:48 GMT  
		Size: 52.4 MB (52390622 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52afaf2de27001bf62413136d4ac4b7e0b6d64e098ac07432f12b51dbb6bc3de`  
		Last Modified: Thu, 29 Oct 2026 19:08:46 GMT  
		Size: 157.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:136a42ae397cf22a79b3a835ffdd6a3a62683685bb35d514cadec361c6a35487`  
		Last Modified: Thu, 29 Oct 2026 19:08:47 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb31e84d94223d638e774a0c41ec8d1bb425cac8325ab836d247df60d1c691b`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
		Size: 4.3 KB (4310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:216e65667a9cea8154aabead4d8bb9010a2a63e81d10f14778e675570bfcc1e6`  
		Last Modified: Thu, 29 Oct 2026 19:55:24 GMT  
		Size: 8.7 MB (8665801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e63ed0ac68870402be3fb5987c4990b519b3dbe62dd46dbbb027a4cf2dd9ddd`  
		Last Modified: Thu, 29 Oct 2026 19:55:24 GMT  
		Size: 3.4 MB (3441735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9e5f8c7f7f293add746b66ccdc606649fbeabecbb261bafbb9e789823332fa`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
		Size: 1.4 KB (1431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18561393ed74c6db4788683a91797ba4d1d0dd7de5efc7d78628a5707bff04f0`  
		Last Modified: Thu, 29 Oct 2026 19:55:24 GMT  
		Size: 172.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `liquibase:latest` - unknown; unknown

```console
$ docker pull liquibase@sha256:84416af2c680ce071fd698fa09a18a40821b9cb3ea8da341527871534778dd84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.9 MB (3905667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea5f9ba5767704d71a02f64cefe465e90650af84bc7201c22f1e1887cb5cc7a5`

```dockerfile
```

-	Layers:
	-	`sha256:e5112341847be58890124bb38ecb4cfbc6f7e94476f95d8734d84e8ce0be93f2`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
		Size: 3.9 MB (3881222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b10de852e34fe1d5d47f703e7b565b045a34dc3f251fd4cffe3e003dce473b3b`  
		Last Modified: Thu, 29 Oct 2026 19:55:23 GMT  
		Size: 24.4 KB (24445 bytes)  
		MIME: application/vnd.in-toto+json
