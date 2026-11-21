## `solr:slim`

```console
$ docker pull solr@sha256:64cad6c7048baf9ce2387f6ba0fffa8e6d8b5e3a6cf2cf7b48cc667ec63b3001
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
$ docker pull solr@sha256:c043ef965ab2fc553da05fc4786302704214e33a5bb667384171b1165b2f92b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.9 MB (196869051 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b99631401d0c9a0a01a6cdd860b0867af971a31486e27013f3751f0cc5c16650`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 10 Nov 2026 18:35:15 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:35:15 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:35:15 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:35:17 GMT
ADD file:54dafd97985c3ec227e2c96be9290657cf2ab456885b5fc8a24c9278bca65e60 in / 
# Tue, 10 Nov 2026 18:35:18 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:41:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:41:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:41:28 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:41:28 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:41:28 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:41:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:41:41 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:41:41 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:41:41 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:59:41 GMT
ARG SOLR_VERSION=10.1.0
# Fri, 20 Nov 2026 17:59:41 GMT
ARG SOLR_DIST=-slim
# Fri, 20 Nov 2026 17:59:41 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Fri, 20 Nov 2026 17:59:41 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Fri, 20 Nov 2026 17:59:41 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 20 Nov 2026 17:59:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 20 Nov 2026 17:59:41 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 20 Nov 2026 17:59:41 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 20 Nov 2026 17:59:41 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 20 Nov 2026 17:59:41 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 20 Nov 2026 17:59:41 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 20 Nov 2026 17:59:41 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 20 Nov 2026 17:59:41 GMT
LABEL org.opencontainers.image.version=10.1.0
# Fri, 20 Nov 2026 17:59:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 20 Nov 2026 17:59:41 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 20 Nov 2026 17:59:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 20 Nov 2026 17:59:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 20 Nov 2026 17:59:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 20 Nov 2026 17:59:45 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 17:59:45 GMT
VOLUME [/var/solr]
# Fri, 20 Nov 2026 17:59:45 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 20 Nov 2026 17:59:45 GMT
WORKDIR /opt/solr
# Fri, 20 Nov 2026 17:59:45 GMT
USER 8983
# Fri, 20 Nov 2026 17:59:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 17:59:45 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:8e8df94085bf9af8de500d2042195f1819a4c381b7f3be2a6b920cab65039050`  
		Last Modified: Tue, 10 Nov 2026 20:09:19 GMT  
		Size: 29.8 MB (29793297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82182f91b69ec608cd3c609eceb864dfc74a4dd08d321ea82967029423b40d33`  
		Last Modified: Fri, 20 Nov 2026 17:41:55 GMT  
		Size: 17.6 MB (17554476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142ba19a8f6f32a05831ca10b5489b5cc0e4c20b1ebde54b98c893b0f4980678`  
		Last Modified: Fri, 20 Nov 2026 17:41:57 GMT  
		Size: 63.1 MB (63107457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a146d923caefba6248a257d258f6ca6764b03c5654cd03e00ca6872f2b252a9`  
		Last Modified: Fri, 20 Nov 2026 17:41:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07e0b14d2341ed17bc82ffd910688fed368250d5f95eb6409d016fba8f9e2529`  
		Last Modified: Fri, 20 Nov 2026 17:59:59 GMT  
		Size: 83.7 MB (83713942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78a3e544e2815ed6edc74edf712d77428778780fe8ff5edf14e9dff9c99baad8`  
		Last Modified: Fri, 20 Nov 2026 17:59:57 GMT  
		Size: 1.2 KB (1159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d591bccdeebf5dfb5f6fe56980786a4b1c97a6eeb16e83f8f6f5aac1417da9d`  
		Last Modified: Fri, 20 Nov 2026 17:59:57 GMT  
		Size: 206.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71cda969cfa726a91feec08d1e86f58b8b6eb664397117f6ba4b7ba86cf36b2d`  
		Last Modified: Fri, 20 Nov 2026 17:59:57 GMT  
		Size: 10.3 KB (10295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d3b9da50b3f7e199e9e6eca91a39c2e061dbbc80f932f03ef31b91787ff898`  
		Last Modified: Fri, 20 Nov 2026 17:59:58 GMT  
		Size: 2.7 MB (2685692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:slim` - unknown; unknown

```console
$ docker pull solr@sha256:64dda67cb832b7ca286a3b66566336fa1ca86bfe58a7465f11b2f8c42ab234fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3462726 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90170d09d27d14b4de6038f089dd9dd75a0a26b905c5bc3a7e82239f70e3b2f9`

```dockerfile
```

-	Layers:
	-	`sha256:503ec9910425ecaf40a6387ff8608ebcbc7376382ba69fd5d5dca3ad34128944`  
		Last Modified: Fri, 20 Nov 2026 17:59:57 GMT  
		Size: 3.4 MB (3429037 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:04c218278f01df96b569fc53554b689b04f5193f2bd9bf87b7d1f569766c3aca`  
		Last Modified: Fri, 20 Nov 2026 17:59:57 GMT  
		Size: 33.7 KB (33689 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:dd3608a325c158bcfab7db647c82ee0c4ac425ca57fef3eb700df094c57d5075
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.6 MB (194635797 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fc67e9bd3354aaab41a3e93c36ff8d4501f20de46aa739438d70a39cf2d4994`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 10 Nov 2026 18:31:19 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:31:19 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:31:19 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:31:22 GMT
ADD file:2a6d7d3511af5b48de2ccdad66ef2aa7544bf264ce928935ad4469c76a66169b in / 
# Tue, 10 Nov 2026 18:31:22 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:41:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:41:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:41:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:41:22 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:41:22 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:41:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:41:36 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:41:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:41:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:54:17 GMT
ARG SOLR_VERSION=10.1.0
# Fri, 20 Nov 2026 17:54:17 GMT
ARG SOLR_DIST=-slim
# Fri, 20 Nov 2026 17:54:17 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Fri, 20 Nov 2026 17:54:17 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Fri, 20 Nov 2026 17:54:17 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 20 Nov 2026 17:54:17 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 20 Nov 2026 17:54:17 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 20 Nov 2026 17:54:17 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 20 Nov 2026 17:54:17 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 20 Nov 2026 17:54:17 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 20 Nov 2026 17:54:17 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 20 Nov 2026 17:54:17 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 20 Nov 2026 17:54:17 GMT
LABEL org.opencontainers.image.version=10.1.0
# Fri, 20 Nov 2026 17:54:17 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 20 Nov 2026 17:54:17 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 20 Nov 2026 17:54:17 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 20 Nov 2026 17:54:17 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 20 Nov 2026 17:54:17 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 20 Nov 2026 17:54:26 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 17:54:26 GMT
VOLUME [/var/solr]
# Fri, 20 Nov 2026 17:54:26 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 20 Nov 2026 17:54:26 GMT
WORKDIR /opt/solr
# Fri, 20 Nov 2026 17:54:26 GMT
USER 8983
# Fri, 20 Nov 2026 17:54:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 17:54:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:6542099f24f28e8effaa18375a01b636d7898b6807da55b7c2d7a7a8d9eb103c`  
		Last Modified: Tue, 10 Nov 2026 20:09:25 GMT  
		Size: 29.0 MB (28965318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fda9106f268bbf949d3c29a8c8b691a37496f709c771b1c786c1b1b1bfd89d1`  
		Last Modified: Fri, 20 Nov 2026 17:41:51 GMT  
		Size: 17.3 MB (17309271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb03a0af7ec79cc95006c95a75c7d85c7e72737f03dfb315c8e6be640e03152d`  
		Last Modified: Fri, 20 Nov 2026 17:41:52 GMT  
		Size: 62.0 MB (61984042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa06fe8ddd508c0c111709632fac4968dadfcc74d2f1397184f9c8d10676fbb0`  
		Last Modified: Fri, 20 Nov 2026 17:41:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336223376dcbdfc9cd3863fe8ac5091fbcb5b5b991d4f20673cea047af692c13`  
		Last Modified: Fri, 20 Nov 2026 17:54:41 GMT  
		Size: 83.7 MB (83713294 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15f2684ac041d990a00dc8e9970df8fe10df9eb37f9efec5e582cb4c94b7433a`  
		Last Modified: Fri, 20 Nov 2026 17:54:39 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ac6ebc8aaf0327c38232837f8922f56abcd5352c01d34799a87609f7f98b19`  
		Last Modified: Fri, 20 Nov 2026 17:54:39 GMT  
		Size: 206.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4685c78fb916e6481d67d19d72c21098b4d2c83c39a278b46ece06064e20052`  
		Last Modified: Fri, 20 Nov 2026 17:54:39 GMT  
		Size: 10.3 KB (10295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7908d0893b8dab38186de2d11d5633501f2d432ecff1fdab6db68bf81b2b020b`  
		Last Modified: Fri, 20 Nov 2026 17:54:40 GMT  
		Size: 2.6 MB (2649687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:slim` - unknown; unknown

```console
$ docker pull solr@sha256:37de2ab64a031f401de27de43a7bbbdc7260eae495517ed43a449c5ace434095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3463357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e66f0f32309f6f11741d1809c69d47e0a8165bad2a9285008faea7c10b41258`

```dockerfile
```

-	Layers:
	-	`sha256:c160c4b3385101b254753265feb4c64f238aaef952b94c46aa515c50c11b60ee`  
		Last Modified: Fri, 20 Nov 2026 17:54:39 GMT  
		Size: 3.4 MB (3429503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:940952dde0eb4cfb0a49ddab83e31a0cf5615bb8a3d43dc7774b3401d75d3705`  
		Last Modified: Fri, 20 Nov 2026 17:54:39 GMT  
		Size: 33.9 KB (33854 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:slim` - linux; ppc64le

```console
$ docker pull solr@sha256:9a10bf06a425f28695de33ca4dda0503056046dba963208d263e05e1fe25cc29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.3 MB (201264044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33c9782ebbbfc24a95bcc29f94bf06a99244e2d533dcce1392fc77765aa627d8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 10 Nov 2026 18:32:30 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:32:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:32:30 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:32:33 GMT
ADD file:9fc87f5d4993c1f29848a41be6f1c74d6ab81fed009749aa0f9d0206b6b19eb0 in / 
# Tue, 10 Nov 2026 18:32:34 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:28:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:28:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:28:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:28:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:28:27 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:43:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:43:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 18:35:41 GMT
ARG SOLR_VERSION=10.1.0
# Fri, 20 Nov 2026 18:35:41 GMT
ARG SOLR_DIST=-slim
# Fri, 20 Nov 2026 18:35:41 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Fri, 20 Nov 2026 18:35:41 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Fri, 20 Nov 2026 18:35:41 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 20 Nov 2026 18:35:41 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 20 Nov 2026 18:35:41 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 20 Nov 2026 18:35:41 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 20 Nov 2026 18:35:41 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 20 Nov 2026 18:35:41 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 20 Nov 2026 18:35:41 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 20 Nov 2026 18:35:41 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 20 Nov 2026 18:35:41 GMT
LABEL org.opencontainers.image.version=10.1.0
# Fri, 20 Nov 2026 18:35:41 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 20 Nov 2026 18:35:41 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 20 Nov 2026 18:35:42 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 20 Nov 2026 18:35:42 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 20 Nov 2026 18:35:43 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 20 Nov 2026 18:36:01 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 18:36:01 GMT
VOLUME [/var/solr]
# Fri, 20 Nov 2026 18:36:01 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 20 Nov 2026 18:36:02 GMT
WORKDIR /opt/solr
# Fri, 20 Nov 2026 18:36:02 GMT
USER 8983
# Fri, 20 Nov 2026 18:36:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 18:36:02 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:6c769a4f95bc536aae313c2bf7fcbf46e8cc18ed65fefad2a8ccfc1b5b7a63b4`  
		Last Modified: Tue, 10 Nov 2026 20:09:39 GMT  
		Size: 34.4 MB (34406239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd7e909294bde65871aa676108f9e0d469fd52e49670ef69f4f551144b997c0`  
		Last Modified: Fri, 20 Nov 2026 03:29:33 GMT  
		Size: 18.9 MB (18894524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a059a387ec1855c631229c61f7f8140df97d89e3462fb4524817dd4362979d1c`  
		Last Modified: Fri, 20 Nov 2026 17:44:30 GMT  
		Size: 60.9 MB (60897691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b8659094153bf4595d7541d25da78cec0b9fb212359a13876418d4d1887cf9e`  
		Last Modified: Fri, 20 Nov 2026 17:44:28 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec45cf92f0976ec1c09edc54161d6ebe6a749b3818c41530706d529e5d92ce9`  
		Last Modified: Fri, 20 Nov 2026 18:36:32 GMT  
		Size: 83.8 MB (83778787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c906f2cfd35d63f1a2dc1bbef26d133864b1bd94ea6608b1cda07cf47e8b13`  
		Last Modified: Fri, 20 Nov 2026 18:36:30 GMT  
		Size: 1.2 KB (1162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbc9e4727fa426c95a68138324f173040b9aba1158a4bc1f2a1e5d6c6ad2be6`  
		Last Modified: Fri, 20 Nov 2026 18:36:30 GMT  
		Size: 206.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd9d7360a1d4ac400043e1920c55be28022be7b64b55d6120cbf9fa5ce1572b0`  
		Last Modified: Fri, 20 Nov 2026 18:36:30 GMT  
		Size: 10.3 KB (10299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7930e2b2955175c36d7c52fed1ec1ce237e67a5515d17c8b1155163410a22801`  
		Last Modified: Fri, 20 Nov 2026 18:36:31 GMT  
		Size: 3.3 MB (3272610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:slim` - unknown; unknown

```console
$ docker pull solr@sha256:f066578833a193641f36e8aece2a8d7e5b9c0d54a5d139b536053b3637e97317
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3464966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdd55e58ba5ccb5f9ba2a3029b02f86f2ef33ce5919526df01024f21b8c57525`

```dockerfile
```

-	Layers:
	-	`sha256:2be212cdeeef4ac3b6cb12e18c8fbe3e7a28406ae28bfa09dcddfece8b0f0135`  
		Last Modified: Fri, 20 Nov 2026 18:36:30 GMT  
		Size: 3.4 MB (3431224 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5596f64b5fd5831992461d869174a57f79528f013641144df6188a73393d060`  
		Last Modified: Fri, 20 Nov 2026 18:36:30 GMT  
		Size: 33.7 KB (33742 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:slim` - linux; riscv64

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

### `solr:slim` - unknown; unknown

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

### `solr:slim` - linux; s390x

```console
$ docker pull solr@sha256:6d104f3d0bc6740a82021802d17b0ae0f88c011ffd445e4e6c5ded97870f812b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.6 MB (193649618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97ed17c3ffb0f46ea0350ee126535c994b7986c777065bf1482b521cbee68be6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 10 Nov 2026 18:30:54 GMT
ARG RELEASE
# Tue, 10 Nov 2026 18:30:54 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 18:30:54 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 18:30:56 GMT
ADD file:f57d73889514e35770bca8a6b376ae28a49d35f7eca0530120c0e5edda118257 in / 
# Tue, 10 Nov 2026 18:30:56 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:42:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:42:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:42:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:42:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:42:37 GMT
ENV JAVA_VERSION=jdk-25.0.5.1+2
# Fri, 20 Nov 2026 17:43:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='2edef9e4f81ec5ee426d023336d4cfbd7b4644e99884e7a73a6a867b70b17acf';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_x64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        arm64)          ESUM='c6161dcfb365024fbfbcda265343d562d6f821c78dd8e7aeaeaf294893f6ff8b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        ppc64el)          ESUM='cd4e122c3d32cf0d4a19cf283ab06a99a0bf6694b7d11444c0ea046aaa17faa7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        riscv64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        s390x)          ESUM='4bc1628ef796f26aa31b98698fb1d0a222b20e1c264665d4761646902855acca';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.5.1%2B2/OpenJDK25U-jre_s390x_linux_hotspot_25.0.5.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:43:35 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:36 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:36 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 18:09:32 GMT
ARG SOLR_VERSION=10.1.0
# Fri, 20 Nov 2026 18:09:32 GMT
ARG SOLR_DIST=-slim
# Fri, 20 Nov 2026 18:09:32 GMT
ARG SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06
# Fri, 20 Nov 2026 18:09:32 GMT
ARG SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB
# Fri, 20 Nov 2026 18:09:32 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 20 Nov 2026 18:09:32 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 20 Nov 2026 18:09:32 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 20 Nov 2026 18:09:32 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 20 Nov 2026 18:09:32 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 20 Nov 2026 18:09:32 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 20 Nov 2026 18:09:32 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 20 Nov 2026 18:09:32 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 20 Nov 2026 18:09:32 GMT
LABEL org.opencontainers.image.version=10.1.0
# Fri, 20 Nov 2026 18:09:32 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 20 Nov 2026 18:09:32 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 20 Nov 2026 18:09:33 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 20 Nov 2026 18:09:34 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 20 Nov 2026 18:09:35 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 20 Nov 2026 18:10:06 GMT
# ARGS: SOLR_VERSION=10.1.0 SOLR_DIST=-slim SOLR_SHA512=d22df360764a024ea59dbe0e29367ef0dfaabcfe9d7f6b568b35f73e034c7346ca325e5e18f51da312ae292eb4d1cff3c7380967f9288e56c6563306bab67f06 SOLR_KEYS=F23F054D9EC50F2397FF2B814E67A2711D053DDB SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 18:10:06 GMT
VOLUME [/var/solr]
# Fri, 20 Nov 2026 18:10:06 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 20 Nov 2026 18:10:07 GMT
WORKDIR /opt/solr
# Fri, 20 Nov 2026 18:10:07 GMT
USER 8983
# Fri, 20 Nov 2026 18:10:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 18:10:07 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:d6a4828736418640f88890fd03d6d03e5c40e83e24d598ed323f41ba7e349b4f`  
		Last Modified: Tue, 10 Nov 2026 20:09:53 GMT  
		Size: 30.0 MB (29967433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5e474fd54f842d24a8cc8b4021c51b696ae92c7c56d88bdbd7d269d3d1229f`  
		Last Modified: Fri, 20 Nov 2026 17:44:11 GMT  
		Size: 17.0 MB (16968981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c7cf0d34b043ba48c7f8b23b6e2c2b194349a5b9d7bf1acf24949eda57163e1`  
		Last Modified: Fri, 20 Nov 2026 17:44:12 GMT  
		Size: 60.2 MB (60196640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c805108eea844ea2b104483cd02be017af5892c285e2c9b78615275c247adaa`  
		Last Modified: Fri, 20 Nov 2026 17:44:08 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaddd289ecb5b370b3e7a3b2d543d715a1fc027fbf564541df31a9f2d1bfdb9a`  
		Last Modified: Fri, 20 Nov 2026 18:10:48 GMT  
		Size: 83.7 MB (83735664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e09ad65b8c9ca3bdba36cfa2a7a69f9232a48c66e678297a2a0d60216206b70a`  
		Last Modified: Fri, 20 Nov 2026 18:10:45 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5de853d3c44e7bfeaccb66b8b84edd4e6716b96d306b37dd40468f281fdbcdb3`  
		Last Modified: Fri, 20 Nov 2026 18:10:45 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:193b970e3d8867578bb3e470c157e7927a057fccd7e71b2b155fafac86bb7996`  
		Last Modified: Fri, 20 Nov 2026 18:10:45 GMT  
		Size: 10.3 KB (10309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd6171b50570fdb04e0a5d9edf6900f20182de5d508de8a84308a76d4ae594f`  
		Last Modified: Fri, 20 Nov 2026 18:10:47 GMT  
		Size: 2.8 MB (2766695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:slim` - unknown; unknown

```console
$ docker pull solr@sha256:686102ecbb78f0e906293a3b0bd9b5cdc5e07d00825e5b81d8a923fd10b0f580
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3463062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0208cd5797217b819d538f0343be5e797f709d64ca4b44956fa6d99b147375fe`

```dockerfile
```

-	Layers:
	-	`sha256:b019780bc8bd3007e1fd53bb58697c086c7a38e238655289cec96fb9f28ab38e`  
		Last Modified: Fri, 20 Nov 2026 18:10:45 GMT  
		Size: 3.4 MB (3429372 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:896ba29782bd35faff08b0501a78ddcb9b9f6163e873d95f38829c1fbe4e849b`  
		Last Modified: Fri, 20 Nov 2026 18:10:44 GMT  
		Size: 33.7 KB (33690 bytes)  
		MIME: application/vnd.in-toto+json
