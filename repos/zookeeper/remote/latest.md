## `zookeeper:latest`

```console
$ docker pull zookeeper@sha256:cab8944a33a1f1c39926b9016f5285ead7fa5e81d1e4ee3e3c9017bd4ca6e3bb
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `zookeeper:latest` - linux; amd64

```console
$ docker pull zookeeper@sha256:d02b707bf41f27dfc9520fe4370e4d9f700719895e91fb9e7a41b0e8fe86d52c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.4 MB (117373938 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad24f2b3f06487dc87da6b3a69991b50757300d97637c325ee0d94e92fce507a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

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
# Wed, 09 Sep 2026 02:19:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 02:19:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 02:19:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 02:19:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:19:22 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 02:20:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 02:20:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 02:20:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 02:20:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 03:43:41 GMT
ENV ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=true ZOO_ADMINSERVER_ENABLED=true
# Wed, 09 Sep 2026 03:43:41 GMT
RUN set -eux;     groupadd -r zookeeper --gid=1000;     useradd -r -g zookeeper --uid=1000 zookeeper;     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown zookeeper:zookeeper "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR" # buildkit
# Wed, 09 Sep 2026 03:43:49 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         dirmngr         gosu         gnupg         netcat         wget;     rm -rf /var/lib/apt/lists/*;     gosu nobody true # buildkit
# Wed, 09 Sep 2026 03:43:49 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 09 Sep 2026 03:43:49 GMT
ARG SHORT_DISTRO_NAME=zookeeper-3.9.5
# Wed, 09 Sep 2026 03:43:49 GMT
ARG DISTRO_NAME=apache-zookeeper-3.9.5-bin
# Wed, 09 Sep 2026 03:43:53 GMT
# ARGS: GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA SHORT_DISTRO_NAME=zookeeper-3.9.5 DISTRO_NAME=apache-zookeeper-3.9.5-bin
RUN set -eux;     ddist() {         local f="$1"; shift;         local distFile="$1"; shift;         local success=;         local distUrl=;         for distUrl in             'https://www.apache.org/dyn/closer.cgi?action=download&filename='             https://www-us.apache.org/dist/             https://www.apache.org/dist/             https://archive.apache.org/dist/         ; do             if wget -q -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then                 success=1;                 break;             fi;         done;         [ -n "$success" ];     };     ddist "$DISTRO_NAME.tar.gz" "zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz";     ddist "$DISTRO_NAME.tar.gz.asc" "zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver hkps://keyserver.pgp.com --recv-key "$GPG_KEY" ||     gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY" ||     gpg --keyserver hkps://pgp.mit.edu --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     chown -R zookeeper:zookeeper "/$DISTRO_NAME" # buildkit
# Wed, 09 Sep 2026 03:43:53 GMT
WORKDIR /apache-zookeeper-3.9.5-bin
# Wed, 09 Sep 2026 03:43:53 GMT
VOLUME [/data /datalog /logs]
# Wed, 09 Sep 2026 03:43:53 GMT
EXPOSE map[2181/tcp:{} 2888/tcp:{} 3888/tcp:{} 8080/tcp:{}]
# Wed, 09 Sep 2026 03:43:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/apache-zookeeper-3.9.5-bin/bin ZOOCFGDIR=/conf
# Wed, 09 Sep 2026 03:43:53 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 03:43:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 03:43:53 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c1d6a61d094697e666f04528996193033c36c1814aea101259a81e534170db`  
		Last Modified: Wed, 09 Sep 2026 02:19:37 GMT  
		Size: 16.1 MB (16112098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55090376df5aa7c8b8c491e09b78740ca39a7f86a3332b4d19f7c37545c0014`  
		Last Modified: Wed, 09 Sep 2026 02:20:21 GMT  
		Size: 47.5 MB (47519565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f25832de09f1fb94ee88f411243c8ca3f668eefd47ef0fe2b07040acecf29ec`  
		Last Modified: Wed, 09 Sep 2026 02:20:20 GMT  
		Size: 155.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd5a59f4a7675c2e6556d69d41cc0749f9b46d5860744b77301e197baf0751a`  
		Last Modified: Wed, 09 Sep 2026 02:20:20 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027c6c53eef62e1d1532778d5079d2804a6ba32921691bcb804d9a7d45c9fc97`  
		Last Modified: Wed, 09 Sep 2026 03:44:02 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:547c73b02fb9d97b0f4ef020ca828cbaa388797d1183c95995b6aa3374cfb646`  
		Last Modified: Wed, 09 Sep 2026 03:44:02 GMT  
		Size: 1.1 MB (1145216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce2fef0369d111513885ff9ca8383eae8295d8d7ee31082cd5371d0d8469abf`  
		Last Modified: Wed, 09 Sep 2026 03:44:02 GMT  
		Size: 22.8 MB (22841588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb712b98e747a652d4547b8eedeb996f4e1f4ce04670bc32794bed359e48c882`  
		Last Modified: Wed, 09 Sep 2026 03:44:02 GMT  
		Size: 776.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `zookeeper:latest` - unknown; unknown

```console
$ docker pull zookeeper@sha256:b68037b7a6122283e5929ecf3d2a40e65d44130434cec9664e0c2b40313a4d9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3996103 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8fd4fa4448b2987c0d941536ec4cc0cac937aaa9f19775ad694134c9aebfc5f`

```dockerfile
```

-	Layers:
	-	`sha256:5688f836b203e1e2d088e319fa9224a63e0d0bc9819763b8418623958f995b43`  
		Last Modified: Wed, 09 Sep 2026 03:44:02 GMT  
		Size: 4.0 MB (3971526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0c3dc125560dffa47fcd60fcfea5f3900726a40ebfbd0058196c5d6629aa3c5`  
		Last Modified: Wed, 09 Sep 2026 03:44:01 GMT  
		Size: 24.6 KB (24577 bytes)  
		MIME: application/vnd.in-toto+json

### `zookeeper:latest` - linux; arm64 variant v8

```console
$ docker pull zookeeper@sha256:fd9d264b1665eeecaf09df7b97a080985f8ed43f66c444eebf2903928a28f468
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.6 MB (114642502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:989fef78effc268f6c4eff7e9cb690a1104c8dd5c3ac0cfc5fac6b16a8f35aae`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

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
# Wed, 09 Sep 2026 01:31:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:31:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:31:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:31:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:31:07 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 01:31:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 01:31:12 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:31:12 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:31:12 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 02:44:15 GMT
ENV ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=true ZOO_ADMINSERVER_ENABLED=true
# Wed, 09 Sep 2026 02:44:15 GMT
RUN set -eux;     groupadd -r zookeeper --gid=1000;     useradd -r -g zookeeper --uid=1000 zookeeper;     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown zookeeper:zookeeper "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR" # buildkit
# Wed, 09 Sep 2026 02:44:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         dirmngr         gosu         gnupg         netcat         wget;     rm -rf /var/lib/apt/lists/*;     gosu nobody true # buildkit
# Wed, 09 Sep 2026 02:44:24 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 09 Sep 2026 02:44:24 GMT
ARG SHORT_DISTRO_NAME=zookeeper-3.9.5
# Wed, 09 Sep 2026 02:44:24 GMT
ARG DISTRO_NAME=apache-zookeeper-3.9.5-bin
# Wed, 09 Sep 2026 02:44:29 GMT
# ARGS: GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA SHORT_DISTRO_NAME=zookeeper-3.9.5 DISTRO_NAME=apache-zookeeper-3.9.5-bin
RUN set -eux;     ddist() {         local f="$1"; shift;         local distFile="$1"; shift;         local success=;         local distUrl=;         for distUrl in             'https://www.apache.org/dyn/closer.cgi?action=download&filename='             https://www-us.apache.org/dist/             https://www.apache.org/dist/             https://archive.apache.org/dist/         ; do             if wget -q -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then                 success=1;                 break;             fi;         done;         [ -n "$success" ];     };     ddist "$DISTRO_NAME.tar.gz" "zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz";     ddist "$DISTRO_NAME.tar.gz.asc" "zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver hkps://keyserver.pgp.com --recv-key "$GPG_KEY" ||     gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY" ||     gpg --keyserver hkps://pgp.mit.edu --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     chown -R zookeeper:zookeeper "/$DISTRO_NAME" # buildkit
# Wed, 09 Sep 2026 02:44:29 GMT
WORKDIR /apache-zookeeper-3.9.5-bin
# Wed, 09 Sep 2026 02:44:29 GMT
VOLUME [/data /datalog /logs]
# Wed, 09 Sep 2026 02:44:29 GMT
EXPOSE map[2181/tcp:{} 2888/tcp:{} 3888/tcp:{} 8080/tcp:{}]
# Wed, 09 Sep 2026 02:44:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/apache-zookeeper-3.9.5-bin/bin ZOOCFGDIR=/conf
# Wed, 09 Sep 2026 02:44:29 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 02:44:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 02:44:29 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49a96af9a6872e4f346f3d398223fdf7722e97135fa4fccef768fcca9d82fa3`  
		Last Modified: Wed, 09 Sep 2026 01:32:08 GMT  
		Size: 16.0 MB (16036426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9728e1a32eb2661e79ec79cbba4fcb40b68c366a3eab702a08bced9343ed0f3`  
		Last Modified: Wed, 09 Sep 2026 01:32:09 GMT  
		Size: 47.0 MB (47002276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe3f8325a326f7e5ffe07ba6ac0d71dc534d94abdecc494932b05972f7c6a217`  
		Last Modified: Wed, 09 Sep 2026 01:32:07 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b04bde8ce339e505f1c4168e831df3a11c22fb37c78dea0b3d746eb5e432e18`  
		Last Modified: Wed, 09 Sep 2026 01:32:07 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691feab99c3d007f940e0ddde9a258b094459a9ed631effd900203c7f9c7af7e`  
		Last Modified: Wed, 09 Sep 2026 02:44:39 GMT  
		Size: 1.8 KB (1797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:137f29e9301a688e45e247c001efa49c2fc7676da5c4d60f6b50876a9910b57d`  
		Last Modified: Wed, 09 Sep 2026 02:44:39 GMT  
		Size: 1.1 MB (1074243 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4f75114a9efe6d160c84a9e4fe1cd5c4e00987fb215806316e55e199ee7f0b7`  
		Last Modified: Wed, 09 Sep 2026 02:44:39 GMT  
		Size: 22.8 MB (22841582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d49917c2833b6be28be6470903ad0262dbd5c475b0c85ba4533549b46f6ee48`  
		Last Modified: Wed, 09 Sep 2026 02:44:39 GMT  
		Size: 776.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `zookeeper:latest` - unknown; unknown

```console
$ docker pull zookeeper@sha256:1009157bdfc97736a214f3fef7359f5b9704e7b89d7d89d878a484ed06b31219
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3995943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda4b09b2fab50437fbebd87cb242faf6279ae00027429d566476bd4ee3d0a1c`

```dockerfile
```

-	Layers:
	-	`sha256:3e358a0be0bcc3cfd4b2c394c487a6a3e68056d12092de5fe709d933873bb822`  
		Last Modified: Wed, 09 Sep 2026 02:44:39 GMT  
		Size: 4.0 MB (3971220 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd6e99740df6108501cf9548366474c97db104f176cded73136108da90abef93`  
		Last Modified: Wed, 09 Sep 2026 02:44:39 GMT  
		Size: 24.7 KB (24723 bytes)  
		MIME: application/vnd.in-toto+json

### `zookeeper:latest` - linux; ppc64le

```console
$ docker pull zookeeper@sha256:9e4803468977979dad2a66d3bb0a0211253f0e8ba411f2c925d56d3992ea7c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.7 MB (123650406 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8d61490715347b6806d291f27b1f2dc220935395d61f4a2ea4db0297e84dd08`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 01:40:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 09 Sep 2026 01:40:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 09 Sep 2026 01:40:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 09 Sep 2026 01:40:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 01:40:23 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Wed, 09 Sep 2026 01:48:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 09 Sep 2026 01:48:47 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 09 Sep 2026 01:48:47 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 09 Sep 2026 01:48:47 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 09 Sep 2026 07:41:44 GMT
ENV ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=true ZOO_ADMINSERVER_ENABLED=true
# Wed, 09 Sep 2026 07:41:44 GMT
RUN set -eux;     groupadd -r zookeeper --gid=1000;     useradd -r -g zookeeper --uid=1000 zookeeper;     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown zookeeper:zookeeper "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR" # buildkit
# Wed, 09 Sep 2026 07:41:53 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         dirmngr         gosu         gnupg         netcat         wget;     rm -rf /var/lib/apt/lists/*;     gosu nobody true # buildkit
# Wed, 09 Sep 2026 07:41:53 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Wed, 09 Sep 2026 07:41:53 GMT
ARG SHORT_DISTRO_NAME=zookeeper-3.9.5
# Wed, 09 Sep 2026 07:41:53 GMT
ARG DISTRO_NAME=apache-zookeeper-3.9.5-bin
# Wed, 09 Sep 2026 07:42:41 GMT
# ARGS: GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA SHORT_DISTRO_NAME=zookeeper-3.9.5 DISTRO_NAME=apache-zookeeper-3.9.5-bin
RUN set -eux;     ddist() {         local f="$1"; shift;         local distFile="$1"; shift;         local success=;         local distUrl=;         for distUrl in             'https://www.apache.org/dyn/closer.cgi?action=download&filename='             https://www-us.apache.org/dist/             https://www.apache.org/dist/             https://archive.apache.org/dist/         ; do             if wget -q -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then                 success=1;                 break;             fi;         done;         [ -n "$success" ];     };     ddist "$DISTRO_NAME.tar.gz" "zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz";     ddist "$DISTRO_NAME.tar.gz.asc" "zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver hkps://keyserver.pgp.com --recv-key "$GPG_KEY" ||     gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY" ||     gpg --keyserver hkps://pgp.mit.edu --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     chown -R zookeeper:zookeeper "/$DISTRO_NAME" # buildkit
# Wed, 09 Sep 2026 07:42:42 GMT
WORKDIR /apache-zookeeper-3.9.5-bin
# Wed, 09 Sep 2026 07:42:42 GMT
VOLUME [/data /datalog /logs]
# Wed, 09 Sep 2026 07:42:42 GMT
EXPOSE map[2181/tcp:{} 2888/tcp:{} 3888/tcp:{} 8080/tcp:{}]
# Wed, 09 Sep 2026 07:42:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/apache-zookeeper-3.9.5-bin/bin ZOOCFGDIR=/conf
# Wed, 09 Sep 2026 07:42:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Wed, 09 Sep 2026 07:42:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 09 Sep 2026 07:42:42 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06953810da290342e65fe66b92b4b60b2418772162a6703338733f254fafcb3`  
		Last Modified: Wed, 09 Sep 2026 01:42:21 GMT  
		Size: 17.6 MB (17582288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a560afe764193dc1945eb46f7731a955a009deff020847da24fb0284dc3887`  
		Last Modified: Wed, 09 Sep 2026 01:49:37 GMT  
		Size: 47.4 MB (47428178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f1842a3c80d19d3d6cd26e43b1c321af4c1bdb4b8470c9444c394e522713c29`  
		Last Modified: Wed, 09 Sep 2026 01:49:35 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff016ab45877f82964ae27387060cb095dfcba51f86700b8c392cedc2f194195`  
		Last Modified: Wed, 09 Sep 2026 01:49:35 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb75dceaa998a71c19b643f524310d529ac90216cbe053bb20b06c8cb3aef7a0`  
		Last Modified: Wed, 09 Sep 2026 07:42:20 GMT  
		Size: 1.8 KB (1793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcee2717876da0308f8c381b9710e274b5c42aa8f01267f006874345954cb267`  
		Last Modified: Wed, 09 Sep 2026 07:42:20 GMT  
		Size: 1.1 MB (1090446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5614ab6a1a2f1c94088a20ff616d1a40a890733454dbdddc65279a1e0a52b041`  
		Last Modified: Wed, 09 Sep 2026 07:43:04 GMT  
		Size: 22.8 MB (22841594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990c0c05667cb613e9e4727d87f6044dfacc5f7de2517e75c1c8aa4c09f84812`  
		Last Modified: Wed, 09 Sep 2026 07:43:04 GMT  
		Size: 776.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `zookeeper:latest` - unknown; unknown

```console
$ docker pull zookeeper@sha256:c58b4952bbfd33509416fb91c7d43799fca3d576aa314b9b913bed1a5184fbd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (4000266 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:848e5b76ec7ee6d5fb55cd4a3240e96efc2a34b072c8aaf0abf0102f6d39affb`

```dockerfile
```

-	Layers:
	-	`sha256:d5612f200b91902335c492985fa683be050f491f68c6cb5fd566973b9ba17051`  
		Last Modified: Wed, 09 Sep 2026 07:43:04 GMT  
		Size: 4.0 MB (3975635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dff93ca27795f4f93b1389f5a1e1aeb0292f8aeca1e45660066b577e143d46bf`  
		Last Modified: Wed, 09 Sep 2026 07:43:03 GMT  
		Size: 24.6 KB (24631 bytes)  
		MIME: application/vnd.in-toto+json

### `zookeeper:latest` - linux; s390x

```console
$ docker pull zookeeper@sha256:a37d25cd45c71c0f453a9689cba537c3d8f5201c248dbb38218d804d63bda60c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.8 MB (112782594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46e9fdb8f28dbeb4f2d0236df439c9225c50ea65ccd64e571a8e38b28f79a5cf`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["zkServer.sh","start-foreground"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:17 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:29:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:29:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:50:12 GMT
ENV ZOO_CONF_DIR=/conf ZOO_DATA_DIR=/data ZOO_DATA_LOG_DIR=/datalog ZOO_LOG_DIR=/logs ZOO_TICK_TIME=2000 ZOO_INIT_LIMIT=5 ZOO_SYNC_LIMIT=2 ZOO_AUTOPURGE_PURGEINTERVAL=0 ZOO_AUTOPURGE_SNAPRETAINCOUNT=3 ZOO_MAX_CLIENT_CNXNS=60 ZOO_STANDALONE_ENABLED=true ZOO_ADMINSERVER_ENABLED=true
# Fri, 21 Aug 2026 18:50:12 GMT
RUN set -eux;     groupadd -r zookeeper --gid=1000;     useradd -r -g zookeeper --uid=1000 zookeeper;     mkdir -p "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR";     chown zookeeper:zookeeper "$ZOO_DATA_LOG_DIR" "$ZOO_DATA_DIR" "$ZOO_CONF_DIR" "$ZOO_LOG_DIR" # buildkit
# Fri, 21 Aug 2026 18:50:15 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive     apt-get install -y --no-install-recommends         ca-certificates         dirmngr         gosu         gnupg         netcat         wget;     rm -rf /var/lib/apt/lists/*;     gosu nobody true # buildkit
# Fri, 21 Aug 2026 18:50:15 GMT
ARG GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA
# Fri, 21 Aug 2026 18:50:15 GMT
ARG SHORT_DISTRO_NAME=zookeeper-3.9.5
# Fri, 21 Aug 2026 18:50:15 GMT
ARG DISTRO_NAME=apache-zookeeper-3.9.5-bin
# Fri, 21 Aug 2026 18:50:18 GMT
# ARGS: GPG_KEY=3F7A1D16FA4217B1DC75E1C9FFE35B7F15DFA1BA SHORT_DISTRO_NAME=zookeeper-3.9.5 DISTRO_NAME=apache-zookeeper-3.9.5-bin
RUN set -eux;     ddist() {         local f="$1"; shift;         local distFile="$1"; shift;         local success=;         local distUrl=;         for distUrl in             'https://www.apache.org/dyn/closer.cgi?action=download&filename='             https://www-us.apache.org/dist/             https://www.apache.org/dist/             https://archive.apache.org/dist/         ; do             if wget -q -O "$f" "$distUrl$distFile" && [ -s "$f" ]; then                 success=1;                 break;             fi;         done;         [ -n "$success" ];     };     ddist "$DISTRO_NAME.tar.gz" "zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz";     ddist "$DISTRO_NAME.tar.gz.asc" "zookeeper/$SHORT_DISTRO_NAME/$DISTRO_NAME.tar.gz.asc";     export GNUPGHOME="$(mktemp -d)";     gpg --keyserver hkps://keyserver.pgp.com --recv-key "$GPG_KEY" ||     gpg --keyserver hkps://keyserver.ubuntu.com --recv-keys "$GPG_KEY" ||     gpg --keyserver hkps://pgp.mit.edu --recv-keys "$GPG_KEY";     gpg --batch --verify "$DISTRO_NAME.tar.gz.asc" "$DISTRO_NAME.tar.gz";     tar -zxf "$DISTRO_NAME.tar.gz";     mv "$DISTRO_NAME/conf/"* "$ZOO_CONF_DIR";     rm -rf "$GNUPGHOME" "$DISTRO_NAME.tar.gz" "$DISTRO_NAME.tar.gz.asc";     chown -R zookeeper:zookeeper "/$DISTRO_NAME" # buildkit
# Fri, 21 Aug 2026 18:50:18 GMT
WORKDIR /apache-zookeeper-3.9.5-bin
# Fri, 21 Aug 2026 18:50:18 GMT
VOLUME [/data /datalog /logs]
# Fri, 21 Aug 2026 18:50:18 GMT
EXPOSE map[2181/tcp:{} 2888/tcp:{} 3888/tcp:{} 8080/tcp:{}]
# Fri, 21 Aug 2026 18:50:18 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/apache-zookeeper-3.9.5-bin/bin ZOOCFGDIR=/conf
# Fri, 21 Aug 2026 18:50:19 GMT
COPY docker-entrypoint.sh / # buildkit
# Fri, 21 Aug 2026 18:50:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:50:19 GMT
CMD ["zkServer.sh" "start-foreground"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b23d28370dc53545b16fabc24326384a47b51246433af58dbd6125e09b8b56`  
		Last Modified: Fri, 21 Aug 2026 18:26:45 GMT  
		Size: 16.1 MB (16103464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cb15275ed9e145838f680bc829ff6e084e1d84aeadfcb0bad54ac55e98212b`  
		Last Modified: Fri, 21 Aug 2026 18:29:28 GMT  
		Size: 44.5 MB (44514097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b7e69b86c6740e8db3322e2ef9a07185cc694ac42b1d141fb3060ed08ecef3`  
		Last Modified: Fri, 21 Aug 2026 18:29:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c134e05132b49ad3c122d7875fa8c19232740eea85ae943a76b6b2628d3d308`  
		Last Modified: Fri, 21 Aug 2026 18:29:27 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab731ac7024dd08c0077096f652069b8efa8c744a925a1d3dee238c5918de674`  
		Last Modified: Fri, 21 Aug 2026 18:50:36 GMT  
		Size: 1.8 KB (1792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8ff44738140e9196b48c2c765d272f321dffbb75d4fea33d2c9b9519600669a`  
		Last Modified: Fri, 21 Aug 2026 18:50:36 GMT  
		Size: 1.1 MB (1107324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35929ae8be0d19d8a9e0b05ab7caf32ee1bb8f04841999fedf9ee6c3e002ba3c`  
		Last Modified: Fri, 21 Aug 2026 18:50:36 GMT  
		Size: 22.8 MB (22841582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f415d80a470ead7c807f381035bc0a7f7318afe83a7016036e1aebc1472825aa`  
		Last Modified: Fri, 21 Aug 2026 18:50:36 GMT  
		Size: 776.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `zookeeper:latest` - unknown; unknown

```console
$ docker pull zookeeper@sha256:1836fba6c9f38803456127fa281509ede63ab6f01059ea8c2473560c8074933b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3996039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b238099c12f9b115410abe09d21a95b73608403bce8db97da76d5fa710dce12`

```dockerfile
```

-	Layers:
	-	`sha256:e717b4b8b1fe8f0f4a318c27f03a0c5dc460173d682556a1991809f26717f3ea`  
		Last Modified: Fri, 21 Aug 2026 18:50:36 GMT  
		Size: 4.0 MB (3971464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70954c84b48004f13796411edd1fc619eee6cc4c58b5afac15dcd4ac3fb03dc1`  
		Last Modified: Fri, 21 Aug 2026 18:50:36 GMT  
		Size: 24.6 KB (24575 bytes)  
		MIME: application/vnd.in-toto+json
