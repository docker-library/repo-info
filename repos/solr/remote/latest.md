## `solr:latest`

```console
$ docker pull solr@sha256:384ad3fbc3a20749d192fd21ae9c854fba21165f9479a0a6c2c103a56bdaccea
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `solr:latest` - linux; amd64

```console
$ docker pull solr@sha256:f25c703d9790f0e365f3ad1ecd820cd4bc7ef7ed63f2fa73e8266524a63af4af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.5 MB (377479495 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7148f40a45c63f71f5f4d6f3a80cfa4f0caa62c201e9574b96b6841cc65d116`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:13:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:13:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:13:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:13:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:13:31 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:13:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:13:48 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:13:48 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:13:48 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 17:28:37 GMT
ARG SOLR_VERSION=10.1.0
# Tue, 27 Oct 2026 17:28:37 GMT
ARG SOLR_DIST=
# Tue, 27 Oct 2026 17:28:37 GMT
ARG SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8
# Tue, 27 Oct 2026 17:28:37 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Tue, 27 Oct 2026 17:28:37 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Tue, 27 Oct 2026 17:28:37 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Tue, 27 Oct 2026 17:28:37 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Tue, 27 Oct 2026 17:28:37 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Tue, 27 Oct 2026 17:28:37 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Tue, 27 Oct 2026 17:28:37 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Tue, 27 Oct 2026 17:28:37 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Tue, 27 Oct 2026 17:28:37 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Tue, 27 Oct 2026 17:28:37 GMT
LABEL org.opencontainers.image.version=10.1.0
# Tue, 27 Oct 2026 17:28:37 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Tue, 27 Oct 2026 17:28:37 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Tue, 27 Oct 2026 17:28:37 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Tue, 27 Oct 2026 17:28:37 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Tue, 27 Oct 2026 17:28:37 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Tue, 27 Oct 2026 17:29:32 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 27 Oct 2026 17:29:32 GMT
VOLUME [/var/solr]
# Tue, 27 Oct 2026 17:29:32 GMT
EXPOSE map[8983/tcp:{}]
# Tue, 27 Oct 2026 17:29:32 GMT
WORKDIR /opt/solr
# Tue, 27 Oct 2026 17:29:32 GMT
USER 8983
# Tue, 27 Oct 2026 17:29:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:29:32 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234eae7900203bc4ae59eecf2f4c0eb3574c073ad69c71a08c7cfdcec998bb8e`  
		Last Modified: Mon, 26 Oct 2026 23:14:02 GMT  
		Size: 11.5 MB (11455138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff062e83f7481eb68494bfd81864bdaa20a96849e3f388e105868596141c6069`  
		Last Modified: Mon, 26 Oct 2026 23:14:04 GMT  
		Size: 63.1 MB (63076385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9985696c53b4236708631a70a5e73dfee7541de68657d56b99823d1e179c65c`  
		Last Modified: Mon, 26 Oct 2026 23:14:02 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1cf99e4813f77f3ee5c3d042b11c694dd29237d05c89edeacbc07c07690ba0`  
		Last Modified: Tue, 27 Oct 2026 17:29:56 GMT  
		Size: 270.5 MB (270480520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af7712778df74b049defeb759b83dadc45143127fd33759132dd33786254184`  
		Last Modified: Tue, 27 Oct 2026 17:29:51 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f386e1442cd5c4759eaa2dfa87f9eff6d4f1be018dfe075472545baad3651c5`  
		Last Modified: Tue, 27 Oct 2026 17:29:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10e04182df51504f3761352c2e8f99f9220c737dd114fe72b4bde65864a4e6c9`  
		Last Modified: Tue, 27 Oct 2026 17:29:51 GMT  
		Size: 10.3 KB (10290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1324a5d110a464d800da91e82c9dcd72cc1502f05f8567610b4b138bf1a58800`  
		Last Modified: Tue, 27 Oct 2026 17:29:52 GMT  
		Size: 2.7 MB (2685669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:20b627b0c37f17a6e2cef54785edd2cc0bc4707435f723026bd7c8182f04878f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3702756 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8547613960617bcb8ca7ec3980b2bd122c3350fd9c26f5fc747f6c68e0bf53e`

```dockerfile
```

-	Layers:
	-	`sha256:42dc3f1a8bcbbb2128cfcb903e4ab75f64e7cfb3674d7e606b56dca122a9c9d4`  
		Last Modified: Tue, 27 Oct 2026 17:29:51 GMT  
		Size: 3.7 MB (3669129 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:be18187374fd4f0bd6bc356035c4bda98d2b47074639d56492ebc53ff7dd178e`  
		Last Modified: Tue, 27 Oct 2026 17:29:51 GMT  
		Size: 33.6 KB (33627 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:61171472403f68137265e2f34aa71874db4735f05fccc84c2d1dbeb55a1dbee1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.5 MB (375459707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c2e769007184276cbd154dbb29569e7fb6df90467c653115bac3182466d951`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:18:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:18:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:18:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:18:08 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:18:08 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:18:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:18:27 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:18:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:18:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 17:24:58 GMT
ARG SOLR_VERSION=10.1.0
# Tue, 27 Oct 2026 17:24:58 GMT
ARG SOLR_DIST=
# Tue, 27 Oct 2026 17:24:58 GMT
ARG SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8
# Tue, 27 Oct 2026 17:24:58 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Tue, 27 Oct 2026 17:24:58 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Tue, 27 Oct 2026 17:24:58 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Tue, 27 Oct 2026 17:24:58 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Tue, 27 Oct 2026 17:24:58 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Tue, 27 Oct 2026 17:24:58 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Tue, 27 Oct 2026 17:24:58 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Tue, 27 Oct 2026 17:24:58 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Tue, 27 Oct 2026 17:24:58 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Tue, 27 Oct 2026 17:24:58 GMT
LABEL org.opencontainers.image.version=10.1.0
# Tue, 27 Oct 2026 17:24:58 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Tue, 27 Oct 2026 17:24:58 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Tue, 27 Oct 2026 17:24:58 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Tue, 27 Oct 2026 17:24:58 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Tue, 27 Oct 2026 17:24:58 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Tue, 27 Oct 2026 17:25:06 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 27 Oct 2026 17:25:06 GMT
VOLUME [/var/solr]
# Tue, 27 Oct 2026 17:25:06 GMT
EXPOSE map[8983/tcp:{}]
# Tue, 27 Oct 2026 17:25:07 GMT
WORKDIR /opt/solr
# Tue, 27 Oct 2026 17:25:07 GMT
USER 8983
# Tue, 27 Oct 2026 17:25:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:25:07 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32cd4f43b1b5be4f01d0700298d8bdcb9a74dcf05e2564481b3a97dfc88f23f4`  
		Last Modified: Mon, 26 Oct 2026 23:18:41 GMT  
		Size: 11.5 MB (11453965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0fa7b9edcb09db941f0112a569c824d2a2070f697574d57e69ce100b2fb3a7a`  
		Last Modified: Mon, 26 Oct 2026 23:18:42 GMT  
		Size: 61.9 MB (61922341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d73763725a9795e9d6c3a18aea567b1451a6c4b2b812fdfb446d5e74c7f10b79`  
		Last Modified: Mon, 26 Oct 2026 23:18:40 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc7c3b27534fbb97089fa7989eb4d7ff33101f031837fe22dbe9bd9ed918581`  
		Last Modified: Tue, 27 Oct 2026 17:25:32 GMT  
		Size: 270.5 MB (270479719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ca609055580958e751b090d7db2d80b310604c8ced716556512b0030690d65a`  
		Last Modified: Tue, 27 Oct 2026 17:25:27 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e163bdceb7d42fc5a1e087c2cbfaa554ca4b26513f2bc7b923403c043b7a1e`  
		Last Modified: Tue, 27 Oct 2026 17:25:27 GMT  
		Size: 200.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581a819bf2fe36972bbc2048935cea9025a189a85a542467aaa6c7f332eb5b70`  
		Last Modified: Tue, 27 Oct 2026 17:25:27 GMT  
		Size: 10.3 KB (10291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c959e6d74839c4166649177a22c50e5486bed85b1c1484f0e615d61e81a2b8f`  
		Last Modified: Tue, 27 Oct 2026 17:25:28 GMT  
		Size: 2.6 MB (2649382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:5418e92cdf2f6db31288b2eebeca610d2fd19691eda24be61e485626c78efdf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3703386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f7ca013c2295a0fe4c6f955647c5a093b8c525c629672f1cc61e1612a3d6ed4`

```dockerfile
```

-	Layers:
	-	`sha256:5127b3cfa0d9723ee40115cb8f1b9792908a4700efee96ea8b0cd243f33a82cd`  
		Last Modified: Tue, 27 Oct 2026 17:25:27 GMT  
		Size: 3.7 MB (3669595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35fa0edf08f1c350c4f43ef8d7fbc171ba0ff87bb8dafe171c610f1a2c89a006`  
		Last Modified: Tue, 27 Oct 2026 17:25:27 GMT  
		Size: 33.8 KB (33791 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; ppc64le

```console
$ docker pull solr@sha256:5e70493f3408fe1e0cbc38c262bcfa7472841cfdd3fd3442ed1688deef68790d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **382.3 MB (382251734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f060d52ebbb7c0983cb2e96bb11053a601569afba2c41e083272ef270ae9805`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Tue, 27 Oct 2026 05:17:55 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 05:17:55 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 05:17:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 05:17:55 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 05:17:55 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 27 Oct 2026 05:18:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 27 Oct 2026 05:18:30 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 27 Oct 2026 05:18:31 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 27 Oct 2026 05:18:31 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 20:47:01 GMT
ARG SOLR_VERSION=10.1.0
# Tue, 27 Oct 2026 20:47:01 GMT
ARG SOLR_DIST=
# Tue, 27 Oct 2026 20:47:01 GMT
ARG SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8
# Tue, 27 Oct 2026 20:47:01 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Tue, 27 Oct 2026 20:47:01 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Tue, 27 Oct 2026 20:47:01 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Tue, 27 Oct 2026 20:47:01 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Tue, 27 Oct 2026 20:47:01 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Tue, 27 Oct 2026 20:47:01 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Tue, 27 Oct 2026 20:47:01 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Tue, 27 Oct 2026 20:47:01 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Tue, 27 Oct 2026 20:47:01 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Tue, 27 Oct 2026 20:47:01 GMT
LABEL org.opencontainers.image.version=10.1.0
# Tue, 27 Oct 2026 20:47:01 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Tue, 27 Oct 2026 20:47:01 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Tue, 27 Oct 2026 20:47:02 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Tue, 27 Oct 2026 20:47:03 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Tue, 27 Oct 2026 20:47:05 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Tue, 27 Oct 2026 20:47:23 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 27 Oct 2026 20:47:23 GMT
VOLUME [/var/solr]
# Tue, 27 Oct 2026 20:47:23 GMT
EXPOSE map[8983/tcp:{}]
# Tue, 27 Oct 2026 20:47:24 GMT
WORKDIR /opt/solr
# Tue, 27 Oct 2026 20:47:24 GMT
USER 8983
# Tue, 27 Oct 2026 20:47:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 20:47:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da5f6359a55f31a36f5f8a7b2ff634ab068b997989455945ab50922c28bfedc9`  
		Last Modified: Tue, 27 Oct 2026 05:19:01 GMT  
		Size: 12.0 MB (12023727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83975efb3cd79a763e3a43ad56208df939332696a238c1601fef80b945256c2d`  
		Last Modified: Tue, 27 Oct 2026 05:19:03 GMT  
		Size: 62.0 MB (62018224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f9c540f6df05130e37813624b4a5a88119c71e277a0d733ded8e3246edf02b`  
		Last Modified: Tue, 27 Oct 2026 05:19:01 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4326cd01a00d796cca1d0888dd9023f3131133fb672b1e4a21e304ecfe58e963`  
		Last Modified: Tue, 27 Oct 2026 20:48:10 GMT  
		Size: 270.5 MB (270545065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccc4e25a0371c56ec8786a29589b68bf5205776603b02dfb7748ce9d2ba3982f`  
		Last Modified: Tue, 27 Oct 2026 20:48:04 GMT  
		Size: 1.2 KB (1152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbc709c72dd1d4eb188a0afd9d9f90a9e15f35cbf7b1ac3d781a60bfda42340`  
		Last Modified: Tue, 27 Oct 2026 20:48:04 GMT  
		Size: 201.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63bf3f6e33cce32766935af86b98c732656f28a6282e320180333e78b3e1a0bb`  
		Last Modified: Tue, 27 Oct 2026 20:48:05 GMT  
		Size: 10.3 KB (10295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8c2a7d193d0c610752c3839fd9ed2471f01d7ae883d02ebc891b7700e7a1553`  
		Last Modified: Tue, 27 Oct 2026 20:48:06 GMT  
		Size: 3.3 MB (3272233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:97e9c508c753f1c22af7bef27d42ea18225394d1e4948f3908a82f848b409360
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3706241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:904cbab7fa413ffb925a487b94fb938332d9c370bcd46bac856b9933ff6db066`

```dockerfile
```

-	Layers:
	-	`sha256:174b60539c31330ce7200df80575288e750055e088b684d0939c265e8a9cc085`  
		Last Modified: Tue, 27 Oct 2026 20:48:05 GMT  
		Size: 3.7 MB (3672562 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:209d96143476be65c4de3dd8f6a402a14fe16289a20a6f4078c950650e9966ab`  
		Last Modified: Tue, 27 Oct 2026 20:48:04 GMT  
		Size: 33.7 KB (33679 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; riscv64

```console
$ docker pull solr@sha256:657fc5108fac4e43dcaafe38f50241790010dcd97ae128e47dd8cd7ca0be1a68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.3 MB (468268734 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22629ad3112c3782994d71f97528903d5441956b03fe82b5ef4f0bc221d575b5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 02 Oct 2026 08:25:26 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:25:27 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:25:27 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:26:13 GMT
ADD file:902c2a17706a401d4186db6f76d930ee8d9bfdf11a18905ad7b4475895533666 in / 
# Fri, 02 Oct 2026 08:26:17 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 16:07:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 16:07:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 16:07:34 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 16:07:34 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 16:07:34 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Sat, 17 Oct 2026 16:09:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 16:09:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 16:09:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 16:09:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 20:33:55 GMT
ARG SOLR_VERSION=10.0.0
# Sat, 17 Oct 2026 20:33:55 GMT
ARG SOLR_DIST=
# Sat, 17 Oct 2026 20:33:55 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Sat, 17 Oct 2026 20:33:55 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Sat, 17 Oct 2026 20:33:55 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Sat, 17 Oct 2026 20:33:55 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Sat, 17 Oct 2026 20:33:55 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Sat, 17 Oct 2026 20:33:55 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Sat, 17 Oct 2026 20:33:55 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Sat, 17 Oct 2026 20:33:55 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Sat, 17 Oct 2026 20:33:55 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Sat, 17 Oct 2026 20:33:55 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Sat, 17 Oct 2026 20:33:55 GMT
LABEL org.opencontainers.image.version=10.0.0
# Sat, 17 Oct 2026 20:33:55 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Sat, 17 Oct 2026 20:33:55 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Sat, 17 Oct 2026 20:33:56 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Sat, 17 Oct 2026 20:33:56 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Sat, 17 Oct 2026 20:33:57 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Sat, 17 Oct 2026 20:34:50 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 17 Oct 2026 20:34:50 GMT
VOLUME [/var/solr]
# Sat, 17 Oct 2026 20:34:50 GMT
EXPOSE map[8983/tcp:{}]
# Sat, 17 Oct 2026 20:34:50 GMT
WORKDIR /opt/solr
# Sat, 17 Oct 2026 20:34:50 GMT
USER 8983
# Sat, 17 Oct 2026 20:34:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 20:34:50 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:6ac3b4459b1cfc53476c9bca2bcbbd91ffee22c902b3d5791e258f4a99455cf0`  
		Last Modified: Fri, 02 Oct 2026 08:36:44 GMT  
		Size: 31.1 MB (31052636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f62f0d3bcf28dc5ac8da5816e9644df67af9b5cbd86f722fca904b7ee29608e`  
		Last Modified: Sat, 17 Oct 2026 16:12:26 GMT  
		Size: 11.5 MB (11543668 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27c012ae0909a5b05453cd965e42cb4b4d4addc2a5180ddabf478c92a338d9b7`  
		Last Modified: Sat, 17 Oct 2026 16:12:34 GMT  
		Size: 61.7 MB (61682554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d8f695131f6df82d93baa2d8eccc634f577e3b795b9dafba31aea5d7ef752dd`  
		Last Modified: Sat, 17 Oct 2026 16:12:23 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8a62e86609202f5d6c83e1e11c97a0abddf4f39c0673eac6f031e1f0707db5`  
		Last Modified: Sat, 17 Oct 2026 20:42:05 GMT  
		Size: 360.2 MB (360215459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c916157ae4f5b7c90e08c7c882969db3c7f9b45887c86cf63d9e9c7741e3ee6`  
		Last Modified: Sat, 17 Oct 2026 20:41:11 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9342f908c7e02a89b37a96e127f5c4c1c0d9835e00c93155f2e7badd2872809`  
		Last Modified: Sat, 17 Oct 2026 20:41:11 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32747d1cceb0a706127a4d6db3e921cc34f97e27e0c721d6c21f030f454db1bf`  
		Last Modified: Sat, 17 Oct 2026 20:41:11 GMT  
		Size: 10.3 KB (10302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aec3c4e4d0742de2af92d5cb78a49c067e0041a0392a3a87082d3f1c5f15636`  
		Last Modified: Sat, 17 Oct 2026 20:41:14 GMT  
		Size: 3.8 MB (3760225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:138bd12f584b35ab156a6fbe8ccfa0d537cfb3b869ebc812caafb54dcb4bb500
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3755181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e861f0af90bddd89cbe7ab6f878480b1de57a7b66cad9fe0ecadbc8533fc75e`

```dockerfile
```

-	Layers:
	-	`sha256:ab9de71ae3dab4c5217bb4c91c64b7049c12daf0cbe31c98169b1b96c18c67e6`  
		Last Modified: Sat, 17 Oct 2026 20:41:12 GMT  
		Size: 3.7 MB (3721489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0801c1ceec884b6e21ec8ac5b389391afc7d5a86e758c64d1df9bbc7943b383`  
		Last Modified: Sat, 17 Oct 2026 20:41:11 GMT  
		Size: 33.7 KB (33692 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; s390x

```console
$ docker pull solr@sha256:53676ecb858e05af20765cc4f63430713b54e29fd0b8c86c6b4f8bdb564265bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.5 MB (375490910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae969ce91ecb84e89aab07e1faa1b21f2b6c69eefee2133b3d63cba85922f426`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:42:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Mon, 26 Oct 2026 23:42:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:42:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:42:48 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:42:48 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Mon, 26 Oct 2026 23:43:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Mon, 26 Oct 2026 23:43:14 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Mon, 26 Oct 2026 23:43:14 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Mon, 26 Oct 2026 23:43:14 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Tue, 27 Oct 2026 17:27:23 GMT
ARG SOLR_VERSION=10.1.0
# Tue, 27 Oct 2026 17:27:23 GMT
ARG SOLR_DIST=
# Tue, 27 Oct 2026 17:27:23 GMT
ARG SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8
# Tue, 27 Oct 2026 17:27:23 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Tue, 27 Oct 2026 17:27:23 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Tue, 27 Oct 2026 17:27:23 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Tue, 27 Oct 2026 17:27:23 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Tue, 27 Oct 2026 17:27:23 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Tue, 27 Oct 2026 17:27:23 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Tue, 27 Oct 2026 17:27:23 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Tue, 27 Oct 2026 17:27:23 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Tue, 27 Oct 2026 17:27:23 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Tue, 27 Oct 2026 17:27:23 GMT
LABEL org.opencontainers.image.version=10.1.0
# Tue, 27 Oct 2026 17:27:23 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Tue, 27 Oct 2026 17:27:23 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Tue, 27 Oct 2026 17:27:24 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Tue, 27 Oct 2026 17:27:25 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Tue, 27 Oct 2026 17:27:26 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Tue, 27 Oct 2026 17:27:52 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 27 Oct 2026 17:27:52 GMT
VOLUME [/var/solr]
# Tue, 27 Oct 2026 17:27:52 GMT
EXPOSE map[8983/tcp:{}]
# Tue, 27 Oct 2026 17:27:54 GMT
WORKDIR /opt/solr
# Tue, 27 Oct 2026 17:27:54 GMT
USER 8983
# Tue, 27 Oct 2026 17:27:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 17:27:54 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b628403190b81076c2b7354f5d653e41191b72a7d1bf6e7f5b24782bdb38a537`  
		Last Modified: Mon, 26 Oct 2026 23:43:39 GMT  
		Size: 11.7 MB (11731042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c37ec6d0f0ff48ff8af972239f82cd22c8530246473478e0097edb042418a8e`  
		Last Modified: Mon, 26 Oct 2026 23:43:40 GMT  
		Size: 60.5 MB (60530419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:486367ce60ebf57cd63c21851020391881887ab0f25bbb505508c89331ebcce0`  
		Last Modified: Mon, 26 Oct 2026 23:43:38 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ef3731cb2a57a992d68a4863375fd12289fa8ec26e29302d21024c29f3a864`  
		Last Modified: Tue, 27 Oct 2026 17:29:10 GMT  
		Size: 270.5 MB (270502049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bdbb0eb09c08c97b0229ff61634d1562824af84791c0f92255ac6c7fa700010`  
		Last Modified: Tue, 27 Oct 2026 17:29:01 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b35f9e7006a8f5b575db5740d4f81b100d1147692f7a209a170fecabd66829fa`  
		Last Modified: Tue, 27 Oct 2026 17:29:01 GMT  
		Size: 200.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eb94f6a99c42cd7718207b1c32d710e132177112f6fbbca1c6838a4904902a`  
		Last Modified: Tue, 27 Oct 2026 17:29:00 GMT  
		Size: 10.3 KB (10298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97befb8a323ef89485a4c7122e8fe4bf3181cc526fdad64809033312c1072bab`  
		Last Modified: Tue, 27 Oct 2026 17:29:03 GMT  
		Size: 2.8 MB (2766166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:cddcd63ac5dd1c897f9ea8b89da8c887f485618758446cca378da677df88aa33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3704337 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c25d82ebb26747541abaab09327e54ff986c3d494d4481f503ce2f5dd6b2ccc`

```dockerfile
```

-	Layers:
	-	`sha256:4ff682e033a7718c6565d19bbb2fe0274ea8f1b60777de7a7a1ed74f41601232`  
		Last Modified: Tue, 27 Oct 2026 17:29:01 GMT  
		Size: 3.7 MB (3670710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3fd16ce33d4a1ea524026efe00168579d005b82ce1fb78dd3a0d4aa3bd32c7a`  
		Last Modified: Tue, 27 Oct 2026 17:29:00 GMT  
		Size: 33.6 KB (33627 bytes)  
		MIME: application/vnd.in-toto+json
