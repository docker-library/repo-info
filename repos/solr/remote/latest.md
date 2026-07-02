## `solr:latest`

```console
$ docker pull solr@sha256:6ecd473f9bedc97e7e95c10c2e32656f71836b75d388857a3fd4bd4bb19d4807
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
$ docker pull solr@sha256:1ef76d8205822d7aaead4b2ca4dd46c1942fe20ef6aee2f5df06b4648e728948
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.2 MB (468187188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5f1a41352ff6fe7fc20e46e33f3d9a60f503e7b6c58b5457340eefc7388d017`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:17 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:18 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:18 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:20 GMT
ADD file:8c609c85109d07bf47cf268a175b3be8bbe34fc0c41d15d99b090d099f4dc837 in / 
# Mon, 22 Jun 2026 21:24:21 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:21:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:53 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:53 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:22:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:22:08 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:22:08 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:22:08 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:34:55 GMT
ARG SOLR_VERSION=10.0.0
# Thu, 02 Jul 2026 05:34:55 GMT
ARG SOLR_DIST=
# Thu, 02 Jul 2026 05:34:55 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Thu, 02 Jul 2026 05:34:55 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Thu, 02 Jul 2026 05:34:55 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 02 Jul 2026 05:34:55 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 02 Jul 2026 05:34:55 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 02 Jul 2026 05:34:55 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 02 Jul 2026 05:34:55 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 02 Jul 2026 05:34:55 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 02 Jul 2026 05:34:55 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 02 Jul 2026 05:34:55 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 02 Jul 2026 05:34:55 GMT
LABEL org.opencontainers.image.version=10.0.0
# Thu, 02 Jul 2026 05:34:55 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 02 Jul 2026 05:34:55 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 02 Jul 2026 05:34:55 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 02 Jul 2026 05:34:55 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 02 Jul 2026 05:34:55 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 02 Jul 2026 05:35:00 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 02 Jul 2026 05:35:00 GMT
VOLUME [/var/solr]
# Thu, 02 Jul 2026 05:35:00 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 02 Jul 2026 05:35:00 GMT
WORKDIR /opt/solr
# Thu, 02 Jul 2026 05:35:00 GMT
USER 8983
# Thu, 02 Jul 2026 05:35:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:35:00 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:ca2678b20700c15185707964d9211b1a6406196114bf675f568b6025d37b3888`  
		Last Modified: Tue, 23 Jun 2026 01:34:01 GMT  
		Size: 29.7 MB (29735601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10951483a8cc3d89eca117d3ac11b4ecec6f65b0f105cc42c6b176d1df3a22e`  
		Last Modified: Thu, 02 Jul 2026 02:22:22 GMT  
		Size: 11.4 MB (11436968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c3bd3b5b199c0faf09f2b7414b3102afa7908897c5dd0cd9cfe0c41f8c464b3`  
		Last Modified: Thu, 02 Jul 2026 02:22:23 GMT  
		Size: 63.0 MB (63042732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52239bb54cad8a94bd2087a54085510aaf232369ef1584e977b36e2e14968c2f`  
		Last Modified: Thu, 02 Jul 2026 02:22:21 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1881a96f4e359f6bd38e1870321d6c9649fb9cfd4469d5edc8552b95669f99`  
		Last Modified: Thu, 02 Jul 2026 05:35:31 GMT  
		Size: 360.2 MB (360199551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2c3f3ce60506ba304b55429ca5ca9c976f0de37b6da87b536eae978841f6366`  
		Last Modified: Thu, 02 Jul 2026 05:35:23 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1efde65f6e92811058c0e313a33d1000d8e2753bf3a064899d0afd5f531b795`  
		Last Modified: Thu, 02 Jul 2026 05:35:23 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec5c3563ba64973ac1261fe4e5192e8600483113996ab62964bf1d2fb24a4b1`  
		Last Modified: Thu, 02 Jul 2026 05:35:23 GMT  
		Size: 10.3 KB (10299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4550b9f84f0ed8a4e63f25fe3e795337d5331e2bf9f7917ca57ae5d3245c5e1`  
		Last Modified: Thu, 02 Jul 2026 05:35:25 GMT  
		Size: 3.8 MB (3758330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:4ce4e4eca2a1a6105f50089847556a968676b66f4a44b75658057073917fa0b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3762990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9a39a0d5c5e8a7bf190641228bd5f0118b4ca81f85ad1f7d7cffb5b8cf49153`

```dockerfile
```

-	Layers:
	-	`sha256:35b15b2656fda73ace9839efe602b3a5c537fec945f0f5f8cbdf889959631550`  
		Last Modified: Thu, 02 Jul 2026 05:35:23 GMT  
		Size: 3.7 MB (3729360 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4056ecc9aabb4f450b23a93301a96645ffa9a83c9b884b3ae231ab8722399303`  
		Last Modified: Thu, 02 Jul 2026 05:35:23 GMT  
		Size: 33.6 KB (33630 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:db2f4a20b7a028294fe9b71b36b5a6b9ff7c6472861ead214d3e9ddf35de3ea6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.1 MB (466120537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e626d37ccfe31eff1b90c9fd89061734a7c7d9bf89bb6025fc03dc47f953e79`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 22 Jun 2026 21:25:05 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:25:05 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:25:05 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:07 GMT
ADD file:cdc9a547b921f36a32310f732815bbee6c6e4f5bd768ab5d49cdc0aa1b9f4785 in / 
# Mon, 22 Jun 2026 21:25:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:21:06 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:21:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:21:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:21:06 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:21:06 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:21:21 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:21:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:21:21 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:21:21 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:35:20 GMT
ARG SOLR_VERSION=10.0.0
# Thu, 02 Jul 2026 05:35:20 GMT
ARG SOLR_DIST=
# Thu, 02 Jul 2026 05:35:20 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Thu, 02 Jul 2026 05:35:20 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Thu, 02 Jul 2026 05:35:20 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 02 Jul 2026 05:35:20 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 02 Jul 2026 05:35:20 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 02 Jul 2026 05:35:20 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 02 Jul 2026 05:35:20 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 02 Jul 2026 05:35:20 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 02 Jul 2026 05:35:20 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 02 Jul 2026 05:35:20 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 02 Jul 2026 05:35:20 GMT
LABEL org.opencontainers.image.version=10.0.0
# Thu, 02 Jul 2026 05:35:20 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 02 Jul 2026 05:35:20 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 02 Jul 2026 05:35:20 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 02 Jul 2026 05:35:21 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 02 Jul 2026 05:35:21 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 02 Jul 2026 05:35:28 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 02 Jul 2026 05:35:28 GMT
VOLUME [/var/solr]
# Thu, 02 Jul 2026 05:35:28 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 02 Jul 2026 05:35:28 GMT
WORKDIR /opt/solr
# Thu, 02 Jul 2026 05:35:28 GMT
USER 8983
# Thu, 02 Jul 2026 05:35:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:35:28 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:4b987da45db4d6278590ab89840c7167ea397df222f3ee4cdb77c3e15694b1a9`  
		Last Modified: Tue, 23 Jun 2026 01:34:08 GMT  
		Size: 28.9 MB (28884180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:149da39efb80d29aaec98ee626868991b2d37859bd07cb443a61319ff43b123f`  
		Last Modified: Thu, 02 Jul 2026 02:21:35 GMT  
		Size: 11.4 MB (11430534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069199232015eecad793e21fd8b35d5553d4eeb879d962aacc54bef1696d5abd`  
		Last Modified: Thu, 02 Jul 2026 02:21:37 GMT  
		Size: 61.9 MB (61943146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eecdfb00c93af21fc3a8abf72d01d84a0414fcf66b44221435da6ac0505c364`  
		Last Modified: Thu, 02 Jul 2026 02:21:34 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad24be6bb90570b2c194da0947a1e90a3aa9980f4a43901a9d3dfc4fb7a7a507`  
		Last Modified: Thu, 02 Jul 2026 05:35:58 GMT  
		Size: 360.2 MB (360198970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0684a120094e6add247466f7c85cba2e0349181af0178d318633fde887932d0`  
		Last Modified: Thu, 02 Jul 2026 05:35:51 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973d83a5971c275cdee000a217655e056aeb414508eb12fd48f6cf05e1609894`  
		Last Modified: Thu, 02 Jul 2026 05:35:51 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf0ac43df3b869e2ff0c0b1c2f2a1e356a5456d6a8f467cc48d174a8dd1dfde`  
		Last Modified: Thu, 02 Jul 2026 05:35:51 GMT  
		Size: 10.3 KB (10305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ddfe9206d3a1a16b0d6769e25a3788ac9fcac39d702619a86591708a695ba7`  
		Last Modified: Thu, 02 Jul 2026 05:35:52 GMT  
		Size: 3.6 MB (3649693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:a13bb9c677187b68da31c281ad0d4e29aaab89652031ffbe1eb921b9ec381160
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3763620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30cf85058808426fe771514df282ccb6bb2f43550d179547b971d6dd82a1d543`

```dockerfile
```

-	Layers:
	-	`sha256:756530cc0424ad90fe7b5864e75cff787030271e0f3f60ad04a583755c4fc8a6`  
		Last Modified: Thu, 02 Jul 2026 05:35:51 GMT  
		Size: 3.7 MB (3729826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52737f189429c1cfdd7d9776ea189e76d1f2cc912d8e6230a0b810cff4597767`  
		Last Modified: Thu, 02 Jul 2026 05:35:51 GMT  
		Size: 33.8 KB (33794 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; ppc64le

```console
$ docker pull solr@sha256:da7d8898906857f160bc4f43eaedc356e3bae7c5c94d50fab72c9739cc36f820
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **473.3 MB (473312047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a146c7d025ebbaac02b356c3487ea2d705f58db4adbc0677859a40f5b1e941cb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:57 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:57 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:57 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:25:00 GMT
ADD file:80a608ac5245946ff88c571e9d9b1259a58a3a309e569fbe7ed52f07c2ed3b39 in / 
# Mon, 22 Jun 2026 21:25:01 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:27:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:27:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:27:58 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:27:58 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:27:58 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:28:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:28:25 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:28:25 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:28:25 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 06:04:31 GMT
ARG SOLR_VERSION=10.0.0
# Thu, 02 Jul 2026 06:04:31 GMT
ARG SOLR_DIST=
# Thu, 02 Jul 2026 06:04:31 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Thu, 02 Jul 2026 06:04:31 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Thu, 02 Jul 2026 06:04:31 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 02 Jul 2026 06:04:31 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 02 Jul 2026 06:04:31 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 02 Jul 2026 06:04:31 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 02 Jul 2026 06:04:31 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 02 Jul 2026 06:04:31 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 02 Jul 2026 06:04:31 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 02 Jul 2026 06:04:31 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 02 Jul 2026 06:04:31 GMT
LABEL org.opencontainers.image.version=10.0.0
# Thu, 02 Jul 2026 06:04:31 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 02 Jul 2026 06:04:31 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 02 Jul 2026 06:04:31 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 02 Jul 2026 06:04:32 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 02 Jul 2026 06:04:32 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 02 Jul 2026 06:04:43 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 02 Jul 2026 06:04:43 GMT
VOLUME [/var/solr]
# Thu, 02 Jul 2026 06:04:43 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 02 Jul 2026 06:04:43 GMT
WORKDIR /opt/solr
# Thu, 02 Jul 2026 06:04:43 GMT
USER 8983
# Thu, 02 Jul 2026 06:04:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 06:04:43 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:54973426d6a3ff47babf11aed16ea13dd9377608c1d09a81758f109a18049199`  
		Last Modified: Tue, 23 Jun 2026 01:34:28 GMT  
		Size: 34.3 MB (34313476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04ae947197b1b3272308ae193c9ea99a18e2efda53668782cb159114b54defa7`  
		Last Modified: Thu, 02 Jul 2026 02:28:53 GMT  
		Size: 12.0 MB (12003320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79cf97e5fde3595b2bdbca3e60123ea8b0c776f67f3f832312c691f8952d4284`  
		Last Modified: Thu, 02 Jul 2026 02:28:54 GMT  
		Size: 62.4 MB (62442986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8cf674da19b3c0a46d388697d3f5bc105e8df24a3f04a21ddd224c82b83b5a7`  
		Last Modified: Thu, 02 Jul 2026 02:28:52 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a8ac483376b3af27e4e59397e9c6e649bf90cbb4e0f6a418da020d7d0b031f`  
		Last Modified: Thu, 02 Jul 2026 06:05:36 GMT  
		Size: 360.3 MB (360266781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:812de2c97e7af8d1c2ba68f2a9e25a08b16eb41224b1be93e4456a4ac4cc317c`  
		Last Modified: Thu, 02 Jul 2026 06:05:26 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08261dcac8ec789b4da583b255013d737938cf651d2f6372bc74247c416a9a05`  
		Last Modified: Thu, 02 Jul 2026 06:05:26 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6679d5e9963fe9fc2dd0beeaa8e803c581891c90094b8a8fcc8cb14cc4c04f63`  
		Last Modified: Thu, 02 Jul 2026 06:05:26 GMT  
		Size: 10.3 KB (10305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090da781822f07c90cb8c102cb8de97227675c2038e9a8f58dc1acd957d3074e`  
		Last Modified: Thu, 02 Jul 2026 06:05:27 GMT  
		Size: 4.3 MB (4271471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:dfec16d0fed1a9b27b4ff5328a5fabcc6067b468697ea86e0400eba5fa288e03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3766475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee9c38cbf931f29f8ae61af5d80c6658420310982e3e20d6b54219887ef17f30`

```dockerfile
```

-	Layers:
	-	`sha256:cedc6d7fc0a4deca008bea86346d561add61528d9a70ff88ae09038688709691`  
		Last Modified: Thu, 02 Jul 2026 06:05:26 GMT  
		Size: 3.7 MB (3732793 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba65b53e2cf2ebe5f8c3e7905a55b01bc141187b7136c30c6e6a6b9d4c409585`  
		Last Modified: Thu, 02 Jul 2026 06:05:26 GMT  
		Size: 33.7 KB (33682 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; riscv64

```console
$ docker pull solr@sha256:0b8965974c0496b403233368f1aceab3ae634373800e3bfb32557aac5c9098e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.2 MB (468177618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21ee0c11aeb4b578d11d0e79e23ec42caaae49ba0bc5e0a83f122e7b92c44077`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 01:25:37 GMT
ARG RELEASE
# Tue, 23 Jun 2026 01:25:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 23 Jun 2026 01:25:38 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 23 Jun 2026 01:26:18 GMT
ADD file:7170cf1f50457fa19167130bbb168bf8fb601a52574716867b67758ab43d5dbb in / 
# Tue, 23 Jun 2026 01:26:22 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:49:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:49:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:49:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:49:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:49:01 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:51:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:51:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:51:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:51:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 07:01:28 GMT
ARG SOLR_VERSION=10.0.0
# Thu, 02 Jul 2026 07:01:28 GMT
ARG SOLR_DIST=
# Thu, 02 Jul 2026 07:01:28 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Thu, 02 Jul 2026 07:01:28 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Thu, 02 Jul 2026 07:01:28 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 02 Jul 2026 07:01:28 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 02 Jul 2026 07:01:28 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 02 Jul 2026 07:01:28 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 02 Jul 2026 07:01:28 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 02 Jul 2026 07:01:28 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 02 Jul 2026 07:01:28 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 02 Jul 2026 07:01:28 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 02 Jul 2026 07:01:28 GMT
LABEL org.opencontainers.image.version=10.0.0
# Thu, 02 Jul 2026 07:01:28 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 02 Jul 2026 07:01:28 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 02 Jul 2026 07:01:28 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 02 Jul 2026 07:01:29 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 02 Jul 2026 07:01:29 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 02 Jul 2026 07:02:17 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 02 Jul 2026 07:02:17 GMT
VOLUME [/var/solr]
# Thu, 02 Jul 2026 07:02:17 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 02 Jul 2026 07:02:17 GMT
WORKDIR /opt/solr
# Thu, 02 Jul 2026 07:02:17 GMT
USER 8983
# Thu, 02 Jul 2026 07:02:17 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 07:02:17 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:d36d9a4ee5b21337a0038d06f00582b458b412ffa7aa3be4086c8692dfab4687`  
		Last Modified: Tue, 23 Jun 2026 01:35:00 GMT  
		Size: 31.0 MB (30971606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a4e3c69b0a5f74a82fafd799cd0fb3ffef41f3db3f18856d118f1d6fee89ab5`  
		Last Modified: Thu, 02 Jul 2026 02:54:10 GMT  
		Size: 11.5 MB (11527724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bc368a72911ac3901ce0a085127788ad9e81996f70558dc8ddcccda80bae9a0`  
		Last Modified: Thu, 02 Jul 2026 02:54:18 GMT  
		Size: 61.7 MB (61694091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c985f43bbe1fe525c56514ee8a74098ea03cceb7eacc2ea59e6834316918b7`  
		Last Modified: Thu, 02 Jul 2026 02:54:07 GMT  
		Size: 2.3 KB (2281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92942912bd3f4811806fab7d99c507016ef6b3cf1b5680cabfca8d42c1be6e56`  
		Last Modified: Thu, 02 Jul 2026 07:09:38 GMT  
		Size: 360.2 MB (360214934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e13807e117ae5f23149495a9790caf6702d92375e461ae835fbed1c41f500e1d`  
		Last Modified: Thu, 02 Jul 2026 07:08:44 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4318a65a69d8c9ff7cd897caf21c9aba4f36bacfc1761773198095ff3f7716e`  
		Last Modified: Thu, 02 Jul 2026 07:08:44 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762d02880709471fd2a36377f63c14f1bdbf6c69bb54dc66673d041bf1255ced`  
		Last Modified: Thu, 02 Jul 2026 07:08:44 GMT  
		Size: 10.3 KB (10302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7b2f88f1513ec697a991a3b0265ff8fa7a941d89aa5123054204a9ed97e69b`  
		Last Modified: Thu, 02 Jul 2026 07:08:46 GMT  
		Size: 3.8 MB (3755253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:405662c63814c3c04cb1a28d2de4fcf38a2c978e64cf5c06ba60c25e518c331b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3755107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af01a89df6fb52475cf1eea5c941d22c24d7adb021e68171f7c41ab869e8aaac`

```dockerfile
```

-	Layers:
	-	`sha256:23402d1bf58a5b3dc3bb9c9b1ed16d1857619c27951080ad4d4e74af75edeba6`  
		Last Modified: Thu, 02 Jul 2026 07:08:44 GMT  
		Size: 3.7 MB (3721425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db81f8b0bd3c4e41e14a69bdcb3a836828f227d8eb1ef404dd8b9bf890c40ede`  
		Last Modified: Thu, 02 Jul 2026 07:08:44 GMT  
		Size: 33.7 KB (33682 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; s390x

```console
$ docker pull solr@sha256:73572c051b49f4117abfa77922434defb286acfe000a3c6f949bb5027a8d6d29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.2 MB (466228953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33e585cf6b83fd16b23e56a82b5592a122a990d74851c066f102894da4f5b1d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 22 Jun 2026 21:24:04 GMT
ARG RELEASE
# Mon, 22 Jun 2026 21:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 22 Jun 2026 21:24:04 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 22 Jun 2026 21:24:05 GMT
ADD file:2e6c463b4adb9218af4efdc52eb0c653c0b81b2e15486825eeeee9fbbf21b4c7 in / 
# Mon, 22 Jun 2026 21:24:05 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:15:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 02:15:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 02:15:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 02 Jul 2026 02:15:32 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:15:32 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Thu, 02 Jul 2026 02:15:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Thu, 02 Jul 2026 02:15:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Thu, 02 Jul 2026 02:15:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Thu, 02 Jul 2026 02:15:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 02 Jul 2026 05:33:58 GMT
ARG SOLR_VERSION=10.0.0
# Thu, 02 Jul 2026 05:33:58 GMT
ARG SOLR_DIST=
# Thu, 02 Jul 2026 05:33:58 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Thu, 02 Jul 2026 05:33:58 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Thu, 02 Jul 2026 05:33:58 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 02 Jul 2026 05:33:58 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 02 Jul 2026 05:33:58 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 02 Jul 2026 05:33:58 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 02 Jul 2026 05:33:58 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 02 Jul 2026 05:33:58 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 02 Jul 2026 05:33:58 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 02 Jul 2026 05:33:58 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 02 Jul 2026 05:33:58 GMT
LABEL org.opencontainers.image.version=10.0.0
# Thu, 02 Jul 2026 05:33:58 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 02 Jul 2026 05:33:58 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 02 Jul 2026 05:33:58 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 02 Jul 2026 05:33:58 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 02 Jul 2026 05:33:58 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 02 Jul 2026 05:34:01 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 02 Jul 2026 05:34:01 GMT
VOLUME [/var/solr]
# Thu, 02 Jul 2026 05:34:01 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 02 Jul 2026 05:34:02 GMT
WORKDIR /opt/solr
# Thu, 02 Jul 2026 05:34:02 GMT
USER 8983
# Thu, 02 Jul 2026 05:34:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 02 Jul 2026 05:34:02 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:017bf1549f7106f258688738600d68c2eebf2c29476ebfe929e2762f93f82609`  
		Last Modified: Tue, 23 Jun 2026 01:35:07 GMT  
		Size: 29.9 MB (29941314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:179940f3693cadfac186d575d9831fa100a31c45a3924d2e5c3823deb71e5315`  
		Last Modified: Thu, 02 Jul 2026 02:16:02 GMT  
		Size: 11.7 MB (11716604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7993c935ce72972ff29ff7a54ea66a278fcd45b29143cda71c9ba8c38c7f15d`  
		Last Modified: Thu, 02 Jul 2026 02:16:02 GMT  
		Size: 60.5 MB (60531728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d9e52bfafb72c885c77c546f6f024b9312b2eee241e0e17f384d3f715d59c7e`  
		Last Modified: Thu, 02 Jul 2026 02:16:01 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3666b9c5cfd6d699d2159f427de48190d51af1e0d4f37eac50c6b6cf01d9bb5`  
		Last Modified: Thu, 02 Jul 2026 05:34:36 GMT  
		Size: 360.2 MB (360223736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3599327a872a84995360dd34136648ad7f7e87edd8b6e574d23210b0db7ddd01`  
		Last Modified: Thu, 02 Jul 2026 05:34:29 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2498339ad91327ecebc684c6581d1d68041085539f93ec9a000fc326b67b85bb`  
		Last Modified: Thu, 02 Jul 2026 05:34:29 GMT  
		Size: 206.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb5971e59fce272be45e0f85562a357a1428b88d5520173aad11c728b02bb96`  
		Last Modified: Thu, 02 Jul 2026 05:34:30 GMT  
		Size: 10.3 KB (10299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734d52748f6c49e40b33be6e5e8b6b0b9ec6fa79dad5e87209201a179a8c55a5`  
		Last Modified: Thu, 02 Jul 2026 05:34:31 GMT  
		Size: 3.8 MB (3801564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:414633e1d451886c37805ac98c58433c3a230e9c98e509341e07ae0606cbd114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3764569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47fc39531e7bf655adcd7863bb6fd24c5f5b7cd0a2b2f9cc618fc6fd5d8b57c4`

```dockerfile
```

-	Layers:
	-	`sha256:83bf536851a8c83f334b42af3d0b28afb9c8948fe43b812e06af4a71a6df6a47`  
		Last Modified: Thu, 02 Jul 2026 05:34:30 GMT  
		Size: 3.7 MB (3730941 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4a9c4d4248695e7789b0474d9fadbb1d8268e441f04f5875add45fdaca05a31`  
		Last Modified: Thu, 02 Jul 2026 05:34:29 GMT  
		Size: 33.6 KB (33628 bytes)  
		MIME: application/vnd.in-toto+json
