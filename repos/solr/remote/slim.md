## `solr:slim`

```console
$ docker pull solr@sha256:96c9e81fdf30a54a83f96eb65bccd0b0df8ca4198af81c2d3df4d61c3f78052f
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

### `solr:slim` - linux; amd64

```console
$ docker pull solr@sha256:0586be344eeb1eb5682e0bd1260001e004219ed3bd788d6e0d3620502c057f1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.7 MB (190733447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86975efef3b366376a29ad27083bcf34e34104a4b376fb009d2735184f75e060`
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
# Thu, 29 Oct 2026 19:54:26 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 29 Oct 2026 19:54:26 GMT
ARG SOLR_DIST=-slim
# Thu, 29 Oct 2026 19:54:26 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Thu, 29 Oct 2026 19:54:26 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 29 Oct 2026 19:54:26 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 29 Oct 2026 19:54:26 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 29 Oct 2026 19:54:26 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 29 Oct 2026 19:54:26 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 29 Oct 2026 19:54:26 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 29 Oct 2026 19:54:26 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 29 Oct 2026 19:54:26 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 29 Oct 2026 19:54:26 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 29 Oct 2026 19:54:26 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 29 Oct 2026 19:54:26 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 29 Oct 2026 19:54:26 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 29 Oct 2026 19:54:26 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 29 Oct 2026 19:54:26 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 29 Oct 2026 19:54:26 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 29 Oct 2026 19:54:33 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 29 Oct 2026 19:54:33 GMT
VOLUME [/var/solr]
# Thu, 29 Oct 2026 19:54:33 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 29 Oct 2026 19:54:33 GMT
WORKDIR /opt/solr
# Thu, 29 Oct 2026 19:54:33 GMT
USER 8983
# Thu, 29 Oct 2026 19:54:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:54:33 GMT
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
	-	`sha256:f008541b8807a072ce4fb600af36a57b4b1fcee405d951a35ca731e862451fce`  
		Last Modified: Thu, 29 Oct 2026 19:54:46 GMT  
		Size: 83.7 MB (83713935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc62a1b68ea75bb90084b620c84eda1c11fa94b1c81e687940956d7281640261`  
		Last Modified: Thu, 29 Oct 2026 19:54:43 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e397dab1d9bb96285499c552cc632b26de7e06d08eecb26390694604c723673`  
		Last Modified: Thu, 29 Oct 2026 19:54:43 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbb7fc778faa2537017b99c8facbe10f78f42bb6b54bf7ff804f94b8596e96e4`  
		Last Modified: Thu, 29 Oct 2026 19:54:44 GMT  
		Size: 10.3 KB (10295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e20004267a3c40173b8afac1cc0a5610215b5348714c5e71c83b31980f58eaf`  
		Last Modified: Thu, 29 Oct 2026 19:54:45 GMT  
		Size: 2.7 MB (2685682 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:slim` - unknown; unknown

```console
$ docker pull solr@sha256:b569db9c0eb515ff3e37f5bf4ff5ac349b3a392b3a17477fce2fbc418d537cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3462096 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f92ad779b305333a0c7d6e1056fabeb0f1fa66da455d2e836091c202629778b7`

```dockerfile
```

-	Layers:
	-	`sha256:95c8f73791bed30d8e790e2a423718f8f7a5bfa889d5a1f6254b7b6aec2424f0`  
		Last Modified: Thu, 29 Oct 2026 19:54:43 GMT  
		Size: 3.4 MB (3428417 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adf125c3784640b39ac7f5224b12344542ca9401befbdad07c7416dc307344be`  
		Last Modified: Thu, 29 Oct 2026 19:54:43 GMT  
		Size: 33.7 KB (33679 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:350cd8b1703cf131a25bddaec611bb47c3750029e7eb0032838b44dc65e32182
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.7 MB (188741327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e566d1a13f3cb855fa092855ded4d9ce918d8ffdfd63185357169065a20716ac`
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
# Thu, 29 Oct 2026 19:55:34 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 29 Oct 2026 19:55:34 GMT
ARG SOLR_DIST=-slim
# Thu, 29 Oct 2026 19:55:34 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Thu, 29 Oct 2026 19:55:34 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 29 Oct 2026 19:55:34 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 29 Oct 2026 19:55:34 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 29 Oct 2026 19:55:34 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 29 Oct 2026 19:55:34 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 29 Oct 2026 19:55:34 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 29 Oct 2026 19:55:34 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 29 Oct 2026 19:55:34 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 29 Oct 2026 19:55:34 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 29 Oct 2026 19:55:34 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 29 Oct 2026 19:55:34 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 29 Oct 2026 19:55:34 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 29 Oct 2026 19:55:34 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 29 Oct 2026 19:55:34 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 29 Oct 2026 19:55:34 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 29 Oct 2026 19:55:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 29 Oct 2026 19:55:41 GMT
VOLUME [/var/solr]
# Thu, 29 Oct 2026 19:55:41 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 29 Oct 2026 19:55:41 GMT
WORKDIR /opt/solr
# Thu, 29 Oct 2026 19:55:41 GMT
USER 8983
# Thu, 29 Oct 2026 19:55:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:55:41 GMT
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
	-	`sha256:9528acb28a6c584b31928b63e23aea6ce869df100757d32aad0b662333b5a519`  
		Last Modified: Thu, 29 Oct 2026 19:55:54 GMT  
		Size: 83.7 MB (83713010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd5c0c30a0324e0a812da96c42cf993401a0ff3bf2f41904bf38ea2e1a130df`  
		Last Modified: Thu, 29 Oct 2026 19:55:52 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28170b7a7306b9e585e8ca26ba632300e039200f895ddf6912928a7004a0e4c2`  
		Last Modified: Thu, 29 Oct 2026 19:55:52 GMT  
		Size: 206.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbd49717feaa17c3c362b09b6ba653a69a6e3d188a0db5c15976d49b6cdb79c`  
		Last Modified: Thu, 29 Oct 2026 19:55:52 GMT  
		Size: 10.3 KB (10294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0132b01761c7ff1786857dfec3de042c2056fef31aec63030e01f7fed27565bc`  
		Last Modified: Thu, 29 Oct 2026 19:55:54 GMT  
		Size: 2.6 MB (2649395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:slim` - unknown; unknown

```console
$ docker pull solr@sha256:279e7fe520f9c58b70c561f693667fc8197b17fba0191803c697de67a536da8d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3462727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:826eb99cf27b2ab84d845105b25dc49778b26675d0ec557598aae8ed95d87afc`

```dockerfile
```

-	Layers:
	-	`sha256:9bc1aa5788d544a6dbcf18640019563f2a3ce57fd1ee3304774514e6b79d65e7`  
		Last Modified: Thu, 29 Oct 2026 19:55:52 GMT  
		Size: 3.4 MB (3428883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53027b2264afb620d9014f3800f164bd6687f67640b5837945c544fae347079b`  
		Last Modified: Thu, 29 Oct 2026 19:55:52 GMT  
		Size: 33.8 KB (33844 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:slim` - linux; ppc64le

```console
$ docker pull solr@sha256:975a5c5147ed0726cc764fe1b2e2973317ee5412c475b76b6ffcfed026b713d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.4 MB (194352177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:510a5f31e8f31fd9b6bbb0fb2fe2395d10a17509447c686b21595b2cffd312b5`
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
# Thu, 29 Oct 2026 20:03:25 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 29 Oct 2026 20:03:25 GMT
ARG SOLR_DIST=-slim
# Thu, 29 Oct 2026 20:03:25 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Thu, 29 Oct 2026 20:03:25 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 29 Oct 2026 20:03:25 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 29 Oct 2026 20:03:25 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 29 Oct 2026 20:03:25 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 29 Oct 2026 20:03:25 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 29 Oct 2026 20:03:25 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 29 Oct 2026 20:03:25 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 29 Oct 2026 20:03:25 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 29 Oct 2026 20:03:25 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 29 Oct 2026 20:03:25 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 29 Oct 2026 20:03:25 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 29 Oct 2026 20:03:25 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 29 Oct 2026 20:03:27 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 29 Oct 2026 20:03:28 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 29 Oct 2026 20:03:32 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 29 Oct 2026 20:03:53 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 29 Oct 2026 20:03:53 GMT
VOLUME [/var/solr]
# Thu, 29 Oct 2026 20:03:53 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 29 Oct 2026 20:03:54 GMT
WORKDIR /opt/solr
# Thu, 29 Oct 2026 20:03:54 GMT
USER 8983
# Thu, 29 Oct 2026 20:03:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 20:03:54 GMT
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
	-	`sha256:c3266e4106bfc7f901da4d0415e4b787142a79b8a77a9b1264507275fe86a1bd`  
		Last Modified: Thu, 29 Oct 2026 20:04:23 GMT  
		Size: 83.8 MB (83778375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:422159d3bdcd9dfbcf5b7ba605f254c30c0805bdf15f100dc0802a79d375946f`  
		Last Modified: Thu, 29 Oct 2026 20:04:20 GMT  
		Size: 1.2 KB (1158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df41316588bae9ab3289ddf0cd1ae9448f8fa78388312c899fd7abe6f07cc5c9`  
		Last Modified: Thu, 29 Oct 2026 20:04:21 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a970c6a0a4131e0f59ce159866cd9f54f5cf1f5a0e4f0e5a6b999bd909f2e2f0`  
		Last Modified: Thu, 29 Oct 2026 20:04:21 GMT  
		Size: 10.3 KB (10306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090f4f4d598e4915fb85ed904630e87d4d608038807101343def260bf8605261`  
		Last Modified: Thu, 29 Oct 2026 20:04:22 GMT  
		Size: 3.3 MB (3272071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:slim` - unknown; unknown

```console
$ docker pull solr@sha256:049ec6caa510012d608e1b268f430bcbe936ef9b189565ef99f61fe09d7f12bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3464336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af17ce087fd69478c18419e1e241ab13157f3c501b40c74186e3cb9dc2e25c28`

```dockerfile
```

-	Layers:
	-	`sha256:9d5cfc942c791ca3c2828e906df27458fb958387a4d46c1692801f4147a68c83`  
		Last Modified: Thu, 29 Oct 2026 20:04:21 GMT  
		Size: 3.4 MB (3430604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e76912f07d81b26b02644c600a59f4e2e71cd4b32d77afbd056186da35c3e795`  
		Last Modified: Thu, 29 Oct 2026 20:04:20 GMT  
		Size: 33.7 KB (33732 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:slim` - linux; riscv64

```console
$ docker pull solr@sha256:7c680f4c696b1c06de4f38272aa669d60c298f9817d6a477583788dfaa63e80e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187114131 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abcac9dc7a922dae4b3507e8c17e0a4746be0db2e6b610dbc5b6a076e9b15051`
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
# Sat, 17 Oct 2026 20:44:22 GMT
ARG SOLR_VERSION=10.0.0
# Sat, 17 Oct 2026 20:44:22 GMT
ARG SOLR_DIST=-slim
# Sat, 17 Oct 2026 20:44:22 GMT
ARG SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1
# Sat, 17 Oct 2026 20:44:22 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Sat, 17 Oct 2026 20:44:22 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Sat, 17 Oct 2026 20:44:22 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Sat, 17 Oct 2026 20:44:22 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Sat, 17 Oct 2026 20:44:22 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Sat, 17 Oct 2026 20:44:22 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Sat, 17 Oct 2026 20:44:22 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Sat, 17 Oct 2026 20:44:22 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Sat, 17 Oct 2026 20:44:22 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Sat, 17 Oct 2026 20:44:22 GMT
LABEL org.opencontainers.image.version=10.0.0
# Sat, 17 Oct 2026 20:44:22 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Sat, 17 Oct 2026 20:44:22 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Sat, 17 Oct 2026 20:44:23 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Sat, 17 Oct 2026 20:44:24 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Sat, 17 Oct 2026 20:44:24 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Sat, 17 Oct 2026 20:45:16 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 17 Oct 2026 20:45:16 GMT
VOLUME [/var/solr]
# Sat, 17 Oct 2026 20:45:16 GMT
EXPOSE map[8983/tcp:{}]
# Sat, 17 Oct 2026 20:45:16 GMT
WORKDIR /opt/solr
# Sat, 17 Oct 2026 20:45:16 GMT
USER 8983
# Sat, 17 Oct 2026 20:45:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 20:45:16 GMT
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
	-	`sha256:e7775db5a16547d84e842d2c1f1aa6a3743fd9c6e86dbc576d47f26718938a94`  
		Last Modified: Sat, 17 Oct 2026 20:48:33 GMT  
		Size: 79.1 MB (79060819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30ae9107971be4e653cb6a26a4fe5f3f1c1525f9b584c809d50f7ab487e2d69`  
		Last Modified: Sat, 17 Oct 2026 20:48:20 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bd15bf91790ca0cff88b462c22e52ef17f33983e867fdad21df877d18ce7638`  
		Last Modified: Sat, 17 Oct 2026 20:48:20 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b1fca4992557d9b0c7ef0045c91379371a3684182e2d80ddff2030450bcf430`  
		Last Modified: Sat, 17 Oct 2026 20:48:20 GMT  
		Size: 10.3 KB (10310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbffbc20e3704fe9cbada894d4cadd87b83c6d45a5a5722696f4c59651d99a5`  
		Last Modified: Sat, 17 Oct 2026 20:48:23 GMT  
		Size: 3.8 MB (3760246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:slim` - unknown; unknown

```console
$ docker pull solr@sha256:0d65e17ff36c3311a61af507e3353df606b21243326d27108039fabba78919f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3457533 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1c8854eb40f9c8cd2d808871ee153c9a901422748c9e392824629734805bfa0`

```dockerfile
```

-	Layers:
	-	`sha256:8675fa951e32a65927cff8371a65024b8d5011c1e19c71bcf717166ef3b568c4`  
		Last Modified: Sat, 17 Oct 2026 20:48:21 GMT  
		Size: 3.4 MB (3423782 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d36f3f7deb9bfc520076cf80197b453587b097f8a0b6b01cf83e5848424f0364`  
		Last Modified: Sat, 17 Oct 2026 20:48:20 GMT  
		Size: 33.8 KB (33751 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:slim` - linux; s390x

```console
$ docker pull solr@sha256:425f129f877222a05eecefed32648f0f6524d0f1985e9b82a5cb3edd334b30f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188380648 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0921412fdb59eabc7aaf04abbe1a8db7249deda339e3f0691ad37f4cdcbad00d`
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
# Thu, 29 Oct 2026 19:15:51 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 29 Oct 2026 19:15:51 GMT
ARG SOLR_DIST=-slim
# Thu, 29 Oct 2026 19:15:51 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Thu, 29 Oct 2026 19:15:51 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 29 Oct 2026 19:15:51 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 29 Oct 2026 19:15:51 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 29 Oct 2026 19:15:51 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 29 Oct 2026 19:15:51 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 29 Oct 2026 19:15:51 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 29 Oct 2026 19:15:51 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 29 Oct 2026 19:15:51 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 29 Oct 2026 19:15:51 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 29 Oct 2026 19:15:51 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 29 Oct 2026 19:15:51 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 29 Oct 2026 19:15:51 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 29 Oct 2026 19:15:52 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 29 Oct 2026 19:15:52 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 29 Oct 2026 19:15:52 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 29 Oct 2026 19:16:08 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 29 Oct 2026 19:16:08 GMT
VOLUME [/var/solr]
# Thu, 29 Oct 2026 19:16:08 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 29 Oct 2026 19:16:08 GMT
WORKDIR /opt/solr
# Thu, 29 Oct 2026 19:16:08 GMT
USER 8983
# Thu, 29 Oct 2026 19:16:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 19:16:08 GMT
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
	-	`sha256:deb0efc977a7b72d558539de23647a51c768e8642689d93862c5eb537bc1ae1b`  
		Last Modified: Thu, 29 Oct 2026 19:16:40 GMT  
		Size: 83.7 MB (83735183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae6f56798fd7ddbdcdf14fc69c58be3c284daa4ae7c084fa6425d2c26cefdfa`  
		Last Modified: Thu, 29 Oct 2026 19:16:32 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94294ccec529a6b862f51c7bf3c1cba338a2be75e662ceaa2f755986f739e66a`  
		Last Modified: Thu, 29 Oct 2026 19:16:32 GMT  
		Size: 205.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8df98c04165593fcd76ad36b3a0607801c45f73d0a53dcb69f9e8fd5ad06e6`  
		Last Modified: Thu, 29 Oct 2026 19:16:32 GMT  
		Size: 10.3 KB (10297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e4c0cc3eeda698bb9e91f7f797e2cb1b844a71ce002e698d9dc1c5c940006d`  
		Last Modified: Thu, 29 Oct 2026 19:16:35 GMT  
		Size: 2.8 MB (2765875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:slim` - unknown; unknown

```console
$ docker pull solr@sha256:6d669ccdf27217cc3f775c674d01087fce88ac3d6ac74ab41dad3e3777f4b81b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3462432 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c112c5ee8563575bc9c07f65dff49d8dfcb7754c89eaf3e456bb2492512d3d62`

```dockerfile
```

-	Layers:
	-	`sha256:dfcf63f2d4ea32dc88221eb6519e0181567f4d5deefc31b6dd6b253b3a27d01a`  
		Last Modified: Thu, 29 Oct 2026 19:16:32 GMT  
		Size: 3.4 MB (3428752 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf8409f2169a4e2d668f187b9046d00064c502f824da5649558f9bcd9f88f937`  
		Last Modified: Thu, 29 Oct 2026 19:16:32 GMT  
		Size: 33.7 KB (33680 bytes)  
		MIME: application/vnd.in-toto+json
