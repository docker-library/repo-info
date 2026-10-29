## `solr:latest`

```console
$ docker pull solr@sha256:e0d7878bc8cbc8060c31f102d6a0add169d390b0a5b87cca554a7c8b3ae0f298
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
$ docker pull solr@sha256:a985382cead3711ba19ab42e63217119c7b4daa128d439eca970da9e6adcf156
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **377.5 MB (377499984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07671f702c7fb052d1d014ab9565ea922d7cdf7a271eda16ad53d8a3ed3eedc`
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
# Thu, 29 Oct 2026 19:16:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:16:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:16:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:16:54 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:16:54 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:17:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='224c72d235b0b9ae49e642ae75ade8d8ed69ff693b9ae2fa7cef8e0e48760289';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:17:10 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:17:10 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:17:10 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:54:34 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 29 Oct 2026 19:54:34 GMT
ARG SOLR_DIST=
# Thu, 29 Oct 2026 19:54:34 GMT
ARG SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8
# Thu, 29 Oct 2026 19:54:34 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 29 Oct 2026 19:54:34 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 29 Oct 2026 19:54:34 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 29 Oct 2026 19:54:34 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 29 Oct 2026 19:54:34 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 29 Oct 2026 19:54:34 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 29 Oct 2026 19:54:34 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 29 Oct 2026 19:54:34 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 29 Oct 2026 19:54:34 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 29 Oct 2026 19:54:34 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 29 Oct 2026 19:54:34 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 29 Oct 2026 19:54:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 29 Oct 2026 19:54:34 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 29 Oct 2026 19:54:34 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 29 Oct 2026 19:54:34 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 29 Oct 2026 19:54:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 29 Oct 2026 19:54:41 GMT
VOLUME [/var/solr]
# Thu, 29 Oct 2026 19:54:41 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 29 Oct 2026 19:54:41 GMT
WORKDIR /opt/solr
# Thu, 29 Oct 2026 19:54:41 GMT
USER 8983
# Thu, 29 Oct 2026 19:54:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:54:41 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0a13467ca2984f233300265c6a4a992f032ed3ac196b4bd448d2715b1a78f72`  
		Last Modified: Thu, 29 Oct 2026 19:17:24 GMT  
		Size: 11.5 MB (11455128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b66beed9de898af8acc45c290898c836ccedf44b1c0c3e904a3af468b6ac2bd`  
		Last Modified: Thu, 29 Oct 2026 19:17:25 GMT  
		Size: 63.1 MB (63096904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6275d18c9cfc77e725305b39b89287625a7b9f02ba7727c105b2a93ebe111ef6`  
		Last Modified: Thu, 29 Oct 2026 19:17:23 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a49033745030883e7de1400fd483ef9cddda1d93c968dadb19a1438ea9e0cef`  
		Last Modified: Thu, 29 Oct 2026 19:55:05 GMT  
		Size: 270.5 MB (270480483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc85dda623f772d837bea10e4078d6f9669a8ecc9de7b461ce3ce95e4115c051`  
		Last Modified: Thu, 29 Oct 2026 19:54:59 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3978c99a61e6ddc5d65a2974edf785ba985fe238bd63f9c7fac56d345869c96`  
		Last Modified: Thu, 29 Oct 2026 19:54:59 GMT  
		Size: 201.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac4fc93a4f8134da0afcaa1c30426a872200861dacc302e3ec58fe51a70ef743`  
		Last Modified: Thu, 29 Oct 2026 19:54:59 GMT  
		Size: 10.3 KB (10292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b37830d43907af9cd9eaa331605e8a7df5cd05783c8ecb6a52968ec175074deb`  
		Last Modified: Thu, 29 Oct 2026 19:55:00 GMT  
		Size: 2.7 MB (2685679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:54c5ee769f3eae3d54efffaccce82dd590edeae8894e45c7b7c66b24af9b9470
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3702736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:487aa15bbf9b311bd5ae710e47adc12f0dd1be50a9e89a0806a22f64a52a9677`

```dockerfile
```

-	Layers:
	-	`sha256:3148cca73b81c108cd6e49b89ec09142d94d61ccef38d8bc4c2f206d9dd90504`  
		Last Modified: Thu, 29 Oct 2026 19:54:59 GMT  
		Size: 3.7 MB (3669121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e79d1ef21c167faffe8e11834ea641f046b028ed91ca505e239f603f1898dae9`  
		Last Modified: Thu, 29 Oct 2026 19:54:59 GMT  
		Size: 33.6 KB (33615 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:eb0d35e76ea34eb64332b89860ce3e8e306aeccc249c9f1e3e5bfabcaf39eb08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.5 MB (375507991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbdfa8b61964b6b4e79455ca3d5d1f9a0afeaa5ac14b2e869dd3c62f355f94fb`
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
# Thu, 29 Oct 2026 19:10:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:10:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:10:24 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:10:24 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:10:24 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:10:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='224c72d235b0b9ae49e642ae75ade8d8ed69ff693b9ae2fa7cef8e0e48760289';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:10:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:10:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:10:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:41 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 29 Oct 2026 19:55:41 GMT
ARG SOLR_DIST=
# Thu, 29 Oct 2026 19:55:41 GMT
ARG SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8
# Thu, 29 Oct 2026 19:55:41 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 29 Oct 2026 19:55:41 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 29 Oct 2026 19:55:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 29 Oct 2026 19:55:41 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 29 Oct 2026 19:55:41 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 29 Oct 2026 19:55:41 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 29 Oct 2026 19:55:41 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 29 Oct 2026 19:55:41 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 29 Oct 2026 19:55:41 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 29 Oct 2026 19:55:41 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 29 Oct 2026 19:55:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 29 Oct 2026 19:55:41 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 29 Oct 2026 19:55:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 29 Oct 2026 19:55:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 29 Oct 2026 19:55:42 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 29 Oct 2026 19:55:51 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 29 Oct 2026 19:55:51 GMT
VOLUME [/var/solr]
# Thu, 29 Oct 2026 19:55:51 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 29 Oct 2026 19:55:51 GMT
WORKDIR /opt/solr
# Thu, 29 Oct 2026 19:55:51 GMT
USER 8983
# Thu, 29 Oct 2026 19:55:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:51 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1359735bbb6932be600f454c1bbdb879940fda4119f0f0100755ed768c261b`  
		Last Modified: Thu, 29 Oct 2026 19:10:57 GMT  
		Size: 11.5 MB (11453872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a76370d015058126f34db87213f42adb90645e3c3ac143b7b3c2a8dceee18b9`  
		Last Modified: Thu, 29 Oct 2026 19:10:58 GMT  
		Size: 62.0 MB (61970742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7084105cfe13545f4a64e74452e2f706fabb0942fa56d2aacd1109a3d127a7a6`  
		Last Modified: Thu, 29 Oct 2026 19:10:56 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6848ea358e16f0fc4ce4297c36f82364c8101caea6ccf2300b32d5af16d75b9`  
		Last Modified: Thu, 29 Oct 2026 19:56:15 GMT  
		Size: 270.5 MB (270479706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d54243e23501aea05999cba265546ad97b532246502c38a44293302d32424b`  
		Last Modified: Thu, 29 Oct 2026 19:56:10 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ee1e1369cc95901d7c56ba04b8e5b3056861aa14da222cb5f96f20ef1b89b3`  
		Last Modified: Thu, 29 Oct 2026 19:56:10 GMT  
		Size: 201.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29d31d09adbe979245c286b336508680786de986b6e17b717b7cbeb499e3e0f`  
		Last Modified: Thu, 29 Oct 2026 19:56:10 GMT  
		Size: 10.3 KB (10295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab953560576086337fd20db68dda27b436468b2e5401249b688c64203f9de2d`  
		Last Modified: Thu, 29 Oct 2026 19:56:11 GMT  
		Size: 2.6 MB (2649368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:4286264b6c7ac989f5484e14c2bc455915c3a3792b6bca56bff6a2514ac39c92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3703368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d1518083068c2ed4c5e7222b802ed4e79d553291048382579cbb85773cb854`

```dockerfile
```

-	Layers:
	-	`sha256:e35ccab54dcafb8ae764e0372a105a73862dc1791a5d278e3acd58e35d1a79c5`  
		Last Modified: Thu, 29 Oct 2026 19:56:10 GMT  
		Size: 3.7 MB (3669587 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8039d33cf240193fee19cb0c2b4be03a87e5df50a2dd1972e89c0b70315f1df2`  
		Last Modified: Thu, 29 Oct 2026 19:56:10 GMT  
		Size: 33.8 KB (33781 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; ppc64le

```console
$ docker pull solr@sha256:965dc7712e0520d489413342d63877694e60f7f12b3c7ca2ee8ab9294582faa8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **381.1 MB (381118780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:93ada11fcc0cf004a18fc2688a2680211e552e64c28cce1fc4ecddc3598d1041`
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
# Thu, 29 Oct 2026 19:14:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:14:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:14:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:14:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:14:22 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:14:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='224c72d235b0b9ae49e642ae75ade8d8ed69ff693b9ae2fa7cef8e0e48760289';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:14:49 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:14:49 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:14:49 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 20:03:43 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 29 Oct 2026 20:03:43 GMT
ARG SOLR_DIST=
# Thu, 29 Oct 2026 20:03:43 GMT
ARG SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8
# Thu, 29 Oct 2026 20:03:43 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 29 Oct 2026 20:03:43 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 29 Oct 2026 20:03:43 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 29 Oct 2026 20:03:43 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 29 Oct 2026 20:03:43 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 29 Oct 2026 20:03:43 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 29 Oct 2026 20:03:43 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 29 Oct 2026 20:03:43 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 29 Oct 2026 20:03:43 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 29 Oct 2026 20:03:43 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 29 Oct 2026 20:03:43 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 29 Oct 2026 20:03:43 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 29 Oct 2026 20:03:45 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 29 Oct 2026 20:03:46 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 29 Oct 2026 20:03:47 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 29 Oct 2026 20:04:03 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 29 Oct 2026 20:04:03 GMT
VOLUME [/var/solr]
# Thu, 29 Oct 2026 20:04:03 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 29 Oct 2026 20:04:03 GMT
WORKDIR /opt/solr
# Thu, 29 Oct 2026 20:04:03 GMT
USER 8983
# Thu, 29 Oct 2026 20:04:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 20:04:03 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b084705635eb4bc31d353d77e0f4eadaf9b4b14bb42b7e130ce19016b2e42262`  
		Last Modified: Thu, 29 Oct 2026 19:15:25 GMT  
		Size: 12.0 MB (12023683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e93b839e39c46cef952da80f7fd0f03aeaff38d75738199d36a258385c8f5ed8`  
		Last Modified: Thu, 29 Oct 2026 19:15:26 GMT  
		Size: 60.9 MB (60885541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3547c50f59127b0f97265fc7f51c1f6bb46ec002cc227ddab5cba2af4fd2f6`  
		Last Modified: Thu, 29 Oct 2026 19:15:24 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f3e820d6711878e3bb1ee59299919fb333c3957ed6f5d54af488fb8a40f614`  
		Last Modified: Thu, 29 Oct 2026 20:05:04 GMT  
		Size: 270.5 MB (270544941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f583ece96eb732f9479b34f030446622b7f4709a865dc23d7a39b78638358396`  
		Last Modified: Thu, 29 Oct 2026 20:04:57 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2788d8b038b92c956fb9445ce8b371fc56157824d22e1e4b1dad7d34b3a517e`  
		Last Modified: Thu, 29 Oct 2026 20:04:57 GMT  
		Size: 200.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e8ae432ac9939dfdfe9515ea7c1b6b73d76b72f9b4fd434d02f3bae80c2b532`  
		Last Modified: Thu, 29 Oct 2026 20:04:57 GMT  
		Size: 10.3 KB (10294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9eb37e9b0ebf0c2091a17f81d25717c057e2cb2646a2c8fc2d49df39fd944ea`  
		Last Modified: Thu, 29 Oct 2026 20:04:59 GMT  
		Size: 3.3 MB (3272131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:6829edbf9f0a0bacd4074c602a11362b1f58e3326f3994d5ad9a2efd4fa8e76c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3704977 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dd6e31e99ae4fa452137f0c01f3f8213f1e88696c67eb3c6503a430e73a055a`

```dockerfile
```

-	Layers:
	-	`sha256:5cf6814bb838986a480a8a6d2f97255e3b260bdd3a7d4f0f553834f5b146df8b`  
		Last Modified: Thu, 29 Oct 2026 20:04:57 GMT  
		Size: 3.7 MB (3671308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d577479d89847a704b20b6c027def6494f85504ab767fee930451cf7eaaf2c6e`  
		Last Modified: Thu, 29 Oct 2026 20:04:57 GMT  
		Size: 33.7 KB (33669 bytes)  
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
$ docker pull solr@sha256:0bc3f3ab78253087a97fa735c8f7e22102857b5415ac246ae429ac0f1c2b3d55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **375.1 MB (375147116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ee56c64466066b563c0a7aac3705f3cf6472ba6d3c89136818f98cbc119bde4`
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
# Thu, 29 Oct 2026 19:03:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 29 Oct 2026 19:03:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 29 Oct 2026 19:03:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 29 Oct 2026 19:03:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 29 Oct 2026 19:03:36 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Thu, 29 Oct 2026 19:03:58 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='224c72d235b0b9ae49e642ae75ade8d8ed69ff693b9ae2fa7cef8e0e48760289';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 29 Oct 2026 19:03:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 29 Oct 2026 19:03:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 29 Oct 2026 19:03:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 29 Oct 2026 19:15:39 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 29 Oct 2026 19:15:39 GMT
ARG SOLR_DIST=
# Thu, 29 Oct 2026 19:15:39 GMT
ARG SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8
# Thu, 29 Oct 2026 19:15:39 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 29 Oct 2026 19:15:39 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 29 Oct 2026 19:15:39 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 29 Oct 2026 19:15:39 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 29 Oct 2026 19:15:39 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 29 Oct 2026 19:15:39 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 29 Oct 2026 19:15:39 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 29 Oct 2026 19:15:39 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 29 Oct 2026 19:15:39 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 29 Oct 2026 19:15:39 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 29 Oct 2026 19:15:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 29 Oct 2026 19:15:39 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 29 Oct 2026 19:15:40 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 29 Oct 2026 19:15:40 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 29 Oct 2026 19:15:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 29 Oct 2026 19:15:55 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST= SOLR_SHA512=1e0cac2a3f5d415fbf67fdb5efe62944fbf88f009aaa41113862e63dc1e9264d3ad5bdf532eb185b18687ca93becc807600ceec957c5a890c3026c0ba8d951d8 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 29 Oct 2026 19:15:55 GMT
VOLUME [/var/solr]
# Thu, 29 Oct 2026 19:15:55 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 29 Oct 2026 19:15:55 GMT
WORKDIR /opt/solr
# Thu, 29 Oct 2026 19:15:55 GMT
USER 8983
# Thu, 29 Oct 2026 19:15:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:15:55 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4564d529f59b2f9f5cc85ecba31687555c3bebcb0dac74461b8e6aa3420a3c18`  
		Last Modified: Thu, 29 Oct 2026 19:04:21 GMT  
		Size: 11.7 MB (11731076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82d375d6a5081b38f7cac827aa6df46eae6531cdb9fd6eded633e8ba8c3e405b`  
		Last Modified: Thu, 29 Oct 2026 19:04:22 GMT  
		Size: 60.2 MB (60187279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f734c58976c3c9882cf4c0c0005512cbaf4f6392b8e3f65f5335c367df793a8f`  
		Last Modified: Thu, 29 Oct 2026 19:04:21 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45984722c4fef8f856e20fda19c23ed3889f37fea092021a310035e8562fbb89`  
		Last Modified: Thu, 29 Oct 2026 19:16:35 GMT  
		Size: 270.5 MB (270501746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1eb312436b38084079b175b86a9a3bab661a66db29d9fe917640bba37870988`  
		Last Modified: Thu, 29 Oct 2026 19:16:30 GMT  
		Size: 1.2 KB (1153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14cec3eb5c6f192f2b4853cd3ba6d7737f75a1519a585be32d116dfe51042a3c`  
		Last Modified: Thu, 29 Oct 2026 19:16:30 GMT  
		Size: 200.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69f2e419ceaedfa562dab7a19fd21d2a4ecd720966977968fd10091887ca9beb`  
		Last Modified: Thu, 29 Oct 2026 19:16:30 GMT  
		Size: 10.3 KB (10295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa919ca9e649aa2ba7bb16333c10650dc15b527da4daa80c1474fdef654bae00`  
		Last Modified: Thu, 29 Oct 2026 19:16:32 GMT  
		Size: 2.8 MB (2765789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:e522b9e9403bb01d966cc12f24b4de1656b65119c41c5fd93fdb75384250abb2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.7 MB (3703073 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09a9a13e3deb8baee93faac5e5ce6f1c96864df78122bfecc41a280ccfad0e3f`

```dockerfile
```

-	Layers:
	-	`sha256:1ebd376234156141625cdd8ddb2bb2e058b34aea3b4bb441e4512c78eb8e0e65`  
		Last Modified: Thu, 29 Oct 2026 19:16:30 GMT  
		Size: 3.7 MB (3669456 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b4bc11fc26f18fc60f49b0527e112604676564f610fa73549ca3f69fffecd920`  
		Last Modified: Thu, 29 Oct 2026 19:16:30 GMT  
		Size: 33.6 KB (33617 bytes)  
		MIME: application/vnd.in-toto+json
