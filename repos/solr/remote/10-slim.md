## `solr:10-slim`

```console
$ docker pull solr@sha256:2f641690c065401c9082cbf4f935471eebfd79574385bf6ddfa7a5c70b73731a
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

### `solr:10-slim` - linux; amd64

```console
$ docker pull solr@sha256:dab81750b288cb2332e4bc575cb0626865a9dd0a315e2f797f7c4457d2778175
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.8 MB (190759763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d40beb38d924731808209e5471b1a73d13f8006394bfb4a0a8d5741a97c380b0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 10 Nov 2026 08:36:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:36:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:36:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:36:34 GMT
ADD file:3c41cdb0a333e30d2a3c4a90a152da473ef44ae84245fd34a49167a6b8f26cc6 in / 
# Tue, 10 Nov 2026 08:36:35 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:18:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:18:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:18:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:18:26 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:18:26 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 23:18:39 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='224c72d235b0b9ae49e642ae75ade8d8ed69ff693b9ae2fa7cef8e0e48760289';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:18:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:18:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:18:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:29:52 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 12 Nov 2026 00:29:52 GMT
ARG SOLR_DIST=-slim
# Thu, 12 Nov 2026 00:29:52 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Thu, 12 Nov 2026 00:29:52 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 12 Nov 2026 00:29:52 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 12 Nov 2026 00:29:52 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 12 Nov 2026 00:29:52 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 12 Nov 2026 00:29:52 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 12 Nov 2026 00:29:52 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 12 Nov 2026 00:29:52 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 12 Nov 2026 00:29:52 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 12 Nov 2026 00:29:52 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 12 Nov 2026 00:29:52 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 12 Nov 2026 00:29:52 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 12 Nov 2026 00:29:52 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 12 Nov 2026 00:29:52 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 12 Nov 2026 00:29:52 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 12 Nov 2026 00:29:52 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 12 Nov 2026 00:30:00 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 12 Nov 2026 00:30:00 GMT
VOLUME [/var/solr]
# Thu, 12 Nov 2026 00:30:00 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 12 Nov 2026 00:30:00 GMT
WORKDIR /opt/solr
# Thu, 12 Nov 2026 00:30:00 GMT
USER 8983
# Thu, 12 Nov 2026 00:30:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:30:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dff7d6c079028fe4f93a1df7d4a577f2041f9fbeee57b937cd9c5601dcc12f2`  
		Last Modified: Wed, 11 Nov 2026 23:18:54 GMT  
		Size: 11.5 MB (11456010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70477373646f838ce5f81566d24713ad00cf8fc907b5ba2f944754bf360f1e1e`  
		Last Modified: Wed, 11 Nov 2026 23:18:55 GMT  
		Size: 63.1 MB (63096788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f21cfbd148ba7bebd8ff9872badd6a9b9651a3abf52e7b70d6db9e8a737b2c`  
		Last Modified: Wed, 11 Nov 2026 23:18:53 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab265ba68a8127a17230824efe05ea840d5201e5d724522b515993bb7e72cd71`  
		Last Modified: Thu, 12 Nov 2026 00:30:14 GMT  
		Size: 83.7 MB (83713885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bed2fe7e8058cabe911c8201ddd4d7e2e36f76d8bc4e77a0f4808737d6d1a3cc`  
		Last Modified: Thu, 12 Nov 2026 00:30:12 GMT  
		Size: 1.2 KB (1151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0595d148107b7bdf57c0ed4a128147bdc84ab11f4efc55aa7271353449baf4ac`  
		Last Modified: Thu, 12 Nov 2026 00:30:12 GMT  
		Size: 205.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473cf1391bd3528823166897825f55f36672a0903b9764f00d4ab5d34cdc81a5`  
		Last Modified: Thu, 12 Nov 2026 00:30:12 GMT  
		Size: 10.3 KB (10293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cfca41d45afa2fc9ac44e92c8219141cccbed18700dce922315a0ec0b4a4b6`  
		Last Modified: Thu, 12 Nov 2026 00:30:13 GMT  
		Size: 2.7 MB (2685681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:10-slim` - unknown; unknown

```console
$ docker pull solr@sha256:c656e3547d4af3a09fc73e506defbfc3982f6b687713e8b1396c72e2798ed253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3462701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:859fd76b50bdca457dc53a83cee71ec21a22714c0a9fb37d64831f981c1227d6`

```dockerfile
```

-	Layers:
	-	`sha256:453f5a0473ce8962d99ef263acdf33eb7f81d0d357f4feaee83295e78dd06ccc`  
		Last Modified: Thu, 12 Nov 2026 00:30:12 GMT  
		Size: 3.4 MB (3429021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df6e970ddefe16b2174d002e9e3233dfa7c6dded486be055f4320b83b4ac68c1`  
		Last Modified: Thu, 12 Nov 2026 00:30:11 GMT  
		Size: 33.7 KB (33680 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:10-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:c992369fd0299ca05e4442dc1c216b65c5a0d3ca98ac1a9061b43ca2a68e99a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.8 MB (188768024 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:453fdaaa102df3074c8008e7f1d6bf400f9b9b818b606d52184d49e56c4907ac`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 10 Nov 2026 08:33:24 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:33:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:33:24 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:26 GMT
ADD file:aeac09a5d64b4f3ea9f6270bab8e042832a855d9ab77269736eef18fda7dc7bb in / 
# Tue, 10 Nov 2026 08:33:26 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:22:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:22:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:22:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:22:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:22:43 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 23:22:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='224c72d235b0b9ae49e642ae75ade8d8ed69ff693b9ae2fa7cef8e0e48760289';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:22:59 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:22:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:22:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 00:45:21 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 12 Nov 2026 00:45:21 GMT
ARG SOLR_DIST=-slim
# Thu, 12 Nov 2026 00:45:21 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Thu, 12 Nov 2026 00:45:21 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 12 Nov 2026 00:45:21 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 12 Nov 2026 00:45:21 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 12 Nov 2026 00:45:21 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 12 Nov 2026 00:45:21 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 12 Nov 2026 00:45:21 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 12 Nov 2026 00:45:21 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 12 Nov 2026 00:45:21 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 12 Nov 2026 00:45:21 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 12 Nov 2026 00:45:21 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 12 Nov 2026 00:45:21 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 12 Nov 2026 00:45:21 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 12 Nov 2026 00:45:22 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 12 Nov 2026 00:45:22 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 12 Nov 2026 00:45:22 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 12 Nov 2026 00:45:34 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 12 Nov 2026 00:45:34 GMT
VOLUME [/var/solr]
# Thu, 12 Nov 2026 00:45:34 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 12 Nov 2026 00:45:34 GMT
WORKDIR /opt/solr
# Thu, 12 Nov 2026 00:45:34 GMT
USER 8983
# Thu, 12 Nov 2026 00:45:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 00:45:34 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fc2077997ea8a6640a33fd7ab601a9864abe1fdfcce28d47ef31a7b45804d59`  
		Last Modified: Wed, 11 Nov 2026 23:23:14 GMT  
		Size: 11.5 MB (11454923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7cd502fe344f3feb4fecca3a0461a0c01d9da9649cb0eafced49d6807845c95`  
		Last Modified: Wed, 11 Nov 2026 23:23:15 GMT  
		Size: 62.0 MB (61970857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138ceef1ef5d75663e4f86306ffe3977e9051c47fdd11575ed40ab3acf8bc88d`  
		Last Modified: Wed, 11 Nov 2026 23:23:13 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a53438702bcd15f1c3b349e43c9f45c66a510dffb7682c1026a4232dccb185e3`  
		Last Modified: Thu, 12 Nov 2026 00:45:49 GMT  
		Size: 83.7 MB (83713187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83fcfa3d6a593254881994af752f9ae1700ca9d3dcadb69b2e480d611b4a64fb`  
		Last Modified: Thu, 12 Nov 2026 00:45:46 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3264275e9f81055e84b2e6b5f9beb58e6008d70f875eb140cfd18ed7ae49e43`  
		Last Modified: Thu, 12 Nov 2026 00:45:46 GMT  
		Size: 206.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9dda9c7ddf48a964e0b97874264c9e5fe7838a2ab63a62ad4093a09237eadd4`  
		Last Modified: Thu, 12 Nov 2026 00:45:47 GMT  
		Size: 10.3 KB (10297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2684498825b5c1264a36b0fe42642da67f7907f5d184327ca2fcdedd6365c7`  
		Last Modified: Thu, 12 Nov 2026 00:45:48 GMT  
		Size: 2.6 MB (2649613 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:10-slim` - unknown; unknown

```console
$ docker pull solr@sha256:dae7da5f889d2555c9ec70c346bb82866a794318845dcde73b1f2083fa56f66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3463331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26cc56dd28b88c866b1060244b3af76a512552013b56bef9b2f41da0dc49a467`

```dockerfile
```

-	Layers:
	-	`sha256:352703e5b4528834ff018cbb3847f43fded2df20b795ab0540be1fc491d2d8a1`  
		Last Modified: Thu, 12 Nov 2026 00:45:46 GMT  
		Size: 3.4 MB (3429487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b074d402674e0ea35f70b590908a34678a88eb488ae7ee969ffa98b6dcfee6c5`  
		Last Modified: Thu, 12 Nov 2026 00:45:46 GMT  
		Size: 33.8 KB (33844 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:10-slim` - linux; ppc64le

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

### `solr:10-slim` - unknown; unknown

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

### `solr:10-slim` - linux; riscv64

```console
$ docker pull solr@sha256:bc23676c5753fb40d0b013f4490034e3431460ecbe9a63805183d62246a8e3e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **190.8 MB (190822522 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ec7420694ef7a43c210e818450fe3b585aec56f2fc093eb3f22898a854ffe39`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Sun, 25 Oct 2026 14:40:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:41:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:41:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:41:55 GMT
ADD file:bd60d80275224295b295318dc71399dbd358b15bea499dc5c524ae8260970dd4 in / 
# Sun, 25 Oct 2026 14:42:00 GMT
CMD ["/bin/bash"]
# Sun, 01 Nov 2026 12:21:19 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sun, 01 Nov 2026 12:21:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sun, 01 Nov 2026 12:21:19 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sun, 01 Nov 2026 12:21:19 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sun, 01 Nov 2026 12:21:19 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Sun, 01 Nov 2026 12:23:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='224c72d235b0b9ae49e642ae75ade8d8ed69ff693b9ae2fa7cef8e0e48760289';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sun, 01 Nov 2026 12:23:26 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sun, 01 Nov 2026 12:23:27 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sun, 01 Nov 2026 12:23:27 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 04 Nov 2026 00:48:24 GMT
ARG SOLR_VERSION=10.1.0
# Wed, 04 Nov 2026 00:48:24 GMT
ARG SOLR_DIST=-slim
# Wed, 04 Nov 2026 00:48:24 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Wed, 04 Nov 2026 00:48:24 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Wed, 04 Nov 2026 00:48:24 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Wed, 04 Nov 2026 00:48:24 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Wed, 04 Nov 2026 00:48:24 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Wed, 04 Nov 2026 00:48:24 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Wed, 04 Nov 2026 00:48:24 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Wed, 04 Nov 2026 00:48:24 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Wed, 04 Nov 2026 00:48:24 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Wed, 04 Nov 2026 00:48:24 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Wed, 04 Nov 2026 00:48:24 GMT
LABEL org.opencontainers.image.version=10.1.0
# Wed, 04 Nov 2026 00:48:24 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 04 Nov 2026 00:48:24 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Wed, 04 Nov 2026 00:48:24 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Wed, 04 Nov 2026 00:48:25 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Wed, 04 Nov 2026 00:48:25 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Wed, 04 Nov 2026 00:49:17 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 04 Nov 2026 00:49:17 GMT
VOLUME [/var/solr]
# Wed, 04 Nov 2026 00:49:17 GMT
EXPOSE map[8983/tcp:{}]
# Wed, 04 Nov 2026 00:49:17 GMT
WORKDIR /opt/solr
# Wed, 04 Nov 2026 00:49:17 GMT
USER 8983
# Wed, 04 Nov 2026 00:49:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 00:49:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9c292ed508c8980046daab8996841e49bec6ec20e645ab48bb63b8228da83d11`  
		Last Modified: Sun, 25 Oct 2026 14:50:32 GMT  
		Size: 31.1 MB (31054629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e79e9d655af5997a255c5298d0eb426d35c77270f09bfee99d82c2a392c848`  
		Last Modified: Sun, 01 Nov 2026 12:26:13 GMT  
		Size: 11.5 MB (11542246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909716e780df891548e282a4a39129902b220ba3ae5cff8b28a402b917300b5a`  
		Last Modified: Sun, 01 Nov 2026 12:26:21 GMT  
		Size: 61.7 MB (61726072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d079b092067316df99d6e95ea7c14a5bdae97ae839e501fa476b45fa4d9b9b`  
		Last Modified: Sun, 01 Nov 2026 12:26:09 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd710a394da63f57e77cedf7c7da00c26bae85055c4e87dc82b3a01b8db82aed`  
		Last Modified: Wed, 04 Nov 2026 00:52:26 GMT  
		Size: 83.7 MB (83729663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a4d9d2f54990c656251ac9d60156ebfa1df16c50639fb713d151de676606e3`  
		Last Modified: Wed, 04 Nov 2026 00:52:12 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12d40fe3f1e935f228ddf2ca3e2dea2140862430d3d5e8fd435b03e17edcd0a`  
		Last Modified: Wed, 04 Nov 2026 00:52:12 GMT  
		Size: 205.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07bca5f1f669a2dccc5e3770f2df3caba56fb12393ed6acb9449b69476907151`  
		Last Modified: Wed, 04 Nov 2026 00:52:12 GMT  
		Size: 10.3 KB (10298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d10dfa85bf2136b65a33fb39e0ad227feaa604d20b7ea43065105c78b5ffd7a`  
		Last Modified: Wed, 04 Nov 2026 00:52:14 GMT  
		Size: 2.8 MB (2755725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:10-slim` - unknown; unknown

```console
$ docker pull solr@sha256:345e752093c21948939e54e582ef33c97a743f65fda35f60061a375007e283f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3454214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:233f00b20bf3aaa6853497d08d5dcc7baf48e4d49d888e7456b67de6e8ae0095`

```dockerfile
```

-	Layers:
	-	`sha256:307f4c8302efb2d6405146f76f9f0601ad4e1c7cf25491fb3fc7e802c8fa281f`  
		Last Modified: Wed, 04 Nov 2026 00:52:13 GMT  
		Size: 3.4 MB (3420482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01ebee622e44738a57e18c21581e6b43120febdf27eca59515b3575f0a27dbe3`  
		Last Modified: Wed, 04 Nov 2026 00:52:12 GMT  
		Size: 33.7 KB (33732 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:10-slim` - linux; s390x

```console
$ docker pull solr@sha256:adbdd688ef38d6fbcd4c21e32107e6f1f133b926b74e55d42959168db379ea38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188402617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d84485328d578b3a658959910ed15893a790b11c931ae4a9d11c54d1db58279b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 10 Nov 2026 08:37:01 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:37:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:37:01 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:37:02 GMT
ADD file:cd6ae236aa13077d423218b776b66e2af298e76f13baa19a6432bfa2416d84e1 in / 
# Tue, 10 Nov 2026 08:37:03 GMT
CMD ["/bin/bash"]
# Wed, 11 Nov 2026 23:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 11 Nov 2026 23:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:16:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:16:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:16:32 GMT
ENV JAVA_VERSION=jdk-25.0.5+8
# Wed, 11 Nov 2026 23:16:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='6fac98f0c8202efc3135a9e9e42aa61963ec42d1c5cbb40caf231e7b14a24ef6';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_x64_linux_hotspot_25.0.5_8.tar.gz';          ;;        arm64)          ESUM='963931723891302ebb2687178532c3d793d71e2577cd058061c7efb396140a86';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5_8.tar.gz';          ;;        ppc64el)          ESUM='da080e477f4897703efac82576c914abde64c91ee3081873e330e4aff9bb64b9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5_8.tar.gz';          ;;        riscv64)          ESUM='224c72d235b0b9ae49e642ae75ade8d8ed69ff693b9ae2fa7cef8e0e48760289';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.5_8.tar.gz';          ;;        s390x)          ESUM='68fd959a83c4c0fa18e50d332323b178e6f4f14bf0a5e7f708114545013c3389';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5%2B8/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 11 Nov 2026 23:16:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 11 Nov 2026 23:16:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 11 Nov 2026 23:16:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 12 Nov 2026 01:00:15 GMT
ARG SOLR_VERSION=10.1.0
# Thu, 12 Nov 2026 01:00:15 GMT
ARG SOLR_DIST=-slim
# Thu, 12 Nov 2026 01:00:15 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Thu, 12 Nov 2026 01:00:15 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Thu, 12 Nov 2026 01:00:15 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 12 Nov 2026 01:00:15 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 12 Nov 2026 01:00:15 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 12 Nov 2026 01:00:15 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 12 Nov 2026 01:00:15 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 12 Nov 2026 01:00:15 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 12 Nov 2026 01:00:15 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 12 Nov 2026 01:00:15 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 12 Nov 2026 01:00:15 GMT
LABEL org.opencontainers.image.version=10.1.0
# Thu, 12 Nov 2026 01:00:15 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 12 Nov 2026 01:00:15 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 12 Nov 2026 01:00:19 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 12 Nov 2026 01:00:21 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 12 Nov 2026 01:00:23 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 12 Nov 2026 01:01:27 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 12 Nov 2026 01:01:27 GMT
VOLUME [/var/solr]
# Thu, 12 Nov 2026 01:01:27 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 12 Nov 2026 01:01:28 GMT
WORKDIR /opt/solr
# Thu, 12 Nov 2026 01:01:28 GMT
USER 8983
# Thu, 12 Nov 2026 01:01:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 12 Nov 2026 01:01:28 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c407acef033a0d04d4315184ac6c517b7c5307d24f239d9914a69e06fe582da5`  
		Last Modified: Wed, 11 Nov 2026 23:17:05 GMT  
		Size: 11.7 MB (11731936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06e1e49de2dd5e632abcbf4849e1a74f1ca91b7bc2d463907d95c3aa8eaf26ee`  
		Last Modified: Wed, 11 Nov 2026 23:17:06 GMT  
		Size: 60.2 MB (60187250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd74ea744d1e8a1e63f1212242b1df97baabf7ffd5fc452cbcc93f113143495`  
		Last Modified: Wed, 11 Nov 2026 23:17:05 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dcc20e60509c2edfcde53d7f925dfec00e04885c83bb1251d341c66f05ad6eb`  
		Last Modified: Thu, 12 Nov 2026 01:02:39 GMT  
		Size: 83.7 MB (83735370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27139f2b11849b67f8176a10422d84fb4e8a09a14dc8d3f8d3dff1fc1fb57778`  
		Last Modified: Thu, 12 Nov 2026 01:02:35 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4de472eb3af77a933f3b35401be4b87439e48d78e7be4f82551b82f99d867d`  
		Last Modified: Thu, 12 Nov 2026 01:02:35 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf33fc19a67c4a36b628282586ab3c0f30a157023b2125d64d94a9d82a91f5a4`  
		Last Modified: Thu, 12 Nov 2026 01:02:35 GMT  
		Size: 10.3 KB (10303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0bacf27634237604c297ffe43422a4be8c8e5b0634860eb1940b87f8b0b4b2d`  
		Last Modified: Thu, 12 Nov 2026 01:02:38 GMT  
		Size: 2.8 MB (2766278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:10-slim` - unknown; unknown

```console
$ docker pull solr@sha256:d38994b40fed652ca5db5e19e7ecda7fd6591cb21a361bf9645e71b554c5d0c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3463036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9400cfd467905254ca219b08439bcc16973657cca86fe21ad3dc5642afe9c21`

```dockerfile
```

-	Layers:
	-	`sha256:4d4fd0739f62d79df54c880af337c687d5c5344d7a6ca69f6328632f5f35a79a`  
		Last Modified: Thu, 12 Nov 2026 01:02:35 GMT  
		Size: 3.4 MB (3429356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ec37131490f970fa4099510293447798f555cf03fc6de9cae4d80e2ae2c6d88`  
		Last Modified: Thu, 12 Nov 2026 01:02:35 GMT  
		Size: 33.7 KB (33680 bytes)  
		MIME: application/vnd.in-toto+json
