## `solr:10-slim`

```console
$ docker pull solr@sha256:de077d6fff9de7a02585238a7a9d0b2e9b3344cd5234f3e292e06782b6f29075
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
$ docker pull solr@sha256:7e651e90a155eeeb8b6a3e2516243bf50257df39b83ecfbd0ab7e7ddfb5d7449
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.5 MB (189527983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d290e87e25b54b648e642a95ce0a3bf528b9db59621692ba4c853625c97aa157`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 21:20:35 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:20:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:20:35 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:20:37 GMT
ADD file:6c214fc3c3c22122c7eb68f7fb32783df308e60b1eaeb9baf7e4d0cc961d448d in / 
# Fri, 18 Sep 2026 21:20:38 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:19:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:37 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:37 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:37 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:19:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:53 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:53 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 02:30:19 GMT
ARG SOLR_VERSION=10.0.0
# Fri, 02 Oct 2026 02:30:19 GMT
ARG SOLR_DIST=-slim
# Fri, 02 Oct 2026 02:30:19 GMT
ARG SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1
# Fri, 02 Oct 2026 02:30:19 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 02 Oct 2026 02:30:19 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 02 Oct 2026 02:30:19 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 02 Oct 2026 02:30:19 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 02 Oct 2026 02:30:19 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 02 Oct 2026 02:30:19 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 02 Oct 2026 02:30:19 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 02 Oct 2026 02:30:19 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 02 Oct 2026 02:30:19 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 02 Oct 2026 02:30:19 GMT
LABEL org.opencontainers.image.version=10.0.0
# Fri, 02 Oct 2026 02:30:19 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 02:30:19 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 02 Oct 2026 02:30:19 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 02 Oct 2026 02:30:19 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 02 Oct 2026 02:30:19 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 02 Oct 2026 02:30:26 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 02 Oct 2026 02:30:26 GMT
VOLUME [/var/solr]
# Fri, 02 Oct 2026 02:30:26 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 02 Oct 2026 02:30:26 GMT
WORKDIR /opt/solr
# Fri, 02 Oct 2026 02:30:26 GMT
USER 8983
# Fri, 02 Oct 2026 02:30:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:30:26 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:a60ef8ec184edb5ed91f5983f00261359fb2fe20f603e8d488b9477d32fcad70`  
		Last Modified: Fri, 18 Sep 2026 22:29:51 GMT  
		Size: 29.8 MB (29764422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fb5e8c0a8fa783830d28c48ca9b202348f6012d97a6eb328fff7c5b2da8833`  
		Last Modified: Fri, 02 Oct 2026 01:20:06 GMT  
		Size: 13.9 MB (13865237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373c2940f7f12f639504dcd4cc700cb6744e41b3212f3ce7dcee66b08098660d`  
		Last Modified: Fri, 02 Oct 2026 01:20:07 GMT  
		Size: 63.1 MB (63076598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef1adaf3e6ac5af220125fa187810aea0ee5639e73c1878eb31a32dbc0d993a8`  
		Last Modified: Fri, 02 Oct 2026 01:20:05 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfe976c88d016133f5da2569c6b6b2e3d9eb02157c84d8233a7d5c58f5eb404f`  
		Last Modified: Fri, 02 Oct 2026 02:30:40 GMT  
		Size: 79.0 MB (79045700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f945e1f43b54a5908df6320ac8b76de1cbe119bca03719ec876d6a6574f760`  
		Last Modified: Fri, 02 Oct 2026 02:30:38 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:723a881998e2b1daac9a6a34d09d2868b36640dfed5da50b1c99c8361b127067`  
		Last Modified: Fri, 02 Oct 2026 02:30:38 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b75911e591fa00820fa9a072217f689dfac7ba60f3c30f340db86df22425238`  
		Last Modified: Fri, 02 Oct 2026 02:30:38 GMT  
		Size: 10.3 KB (10306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0dc9483d1b5d816bcfdd04d87615d26abf9138a16e92519a1a634a05b328a10`  
		Last Modified: Fri, 02 Oct 2026 02:30:39 GMT  
		Size: 3.8 MB (3761822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:10-slim` - unknown; unknown

```console
$ docker pull solr@sha256:22ef80881380ec97bdaba1e8fe764d02aceba3503b18f4e577ed8cfce01ceda0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3465410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ca2377e2366ed364f7648baf49388c9f6d55647c002fbe51a74ee5ec555e325`

```dockerfile
```

-	Layers:
	-	`sha256:1bb80190729dcc92a912f1c1ec9682013363d7c94066c249d1c87e3a3a29f63f`  
		Last Modified: Fri, 02 Oct 2026 02:30:38 GMT  
		Size: 3.4 MB (3431711 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4851f67569a8543308c4d94cb22c8c00b41b75d690519ff6359553f5a33a0f6d`  
		Last Modified: Fri, 02 Oct 2026 02:30:38 GMT  
		Size: 33.7 KB (33699 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:10-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:65a037fefd98b1e6b97999a1bdb963b4ee5d883c8e8812cac89efdf91cb7f93c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.3 MB (187291892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e275eb5951041d76e8e71e2386e7ad78d39edb3ac6e5369d0cd2afa209515c3c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:09 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:10 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:13 GMT
ADD file:1cd6cb2db79bbe57d4c67f2fc8379cad96159285fa5a44e68dad06261eee82b4 in / 
# Fri, 18 Sep 2026 21:23:13 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:19:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:19:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:19:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:19:36 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:19:36 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:19:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:19:54 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:19:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:19:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 02:30:35 GMT
ARG SOLR_VERSION=10.0.0
# Fri, 02 Oct 2026 02:30:35 GMT
ARG SOLR_DIST=-slim
# Fri, 02 Oct 2026 02:30:35 GMT
ARG SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1
# Fri, 02 Oct 2026 02:30:35 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 02 Oct 2026 02:30:35 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 02 Oct 2026 02:30:35 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 02 Oct 2026 02:30:35 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 02 Oct 2026 02:30:35 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 02 Oct 2026 02:30:35 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 02 Oct 2026 02:30:35 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 02 Oct 2026 02:30:35 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 02 Oct 2026 02:30:35 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 02 Oct 2026 02:30:35 GMT
LABEL org.opencontainers.image.version=10.0.0
# Fri, 02 Oct 2026 02:30:35 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 02:30:35 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 02 Oct 2026 02:30:35 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 02 Oct 2026 02:30:35 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 02 Oct 2026 02:30:35 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 02 Oct 2026 02:30:42 GMT
VOLUME [/var/solr]
# Fri, 02 Oct 2026 02:30:42 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 02 Oct 2026 02:30:42 GMT
WORKDIR /opt/solr
# Fri, 02 Oct 2026 02:30:42 GMT
USER 8983
# Fri, 02 Oct 2026 02:30:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:30:42 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:90812e242c93750dbd37ce847c7d3db62c2c53035367d1d89c61184f168f5d37`  
		Last Modified: Fri, 18 Sep 2026 22:29:58 GMT  
		Size: 28.9 MB (28940087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1d1b9c21147316391e4e9fca155ff8d7437760b4477f9f5a1f1471e1f35b696`  
		Last Modified: Fri, 02 Oct 2026 01:20:08 GMT  
		Size: 13.7 MB (13714369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aebdd689b2d1fd4fce3e908cd13c88142f93a15735804b75fa4e0e87bd70009`  
		Last Modified: Fri, 02 Oct 2026 01:20:10 GMT  
		Size: 61.9 MB (61922406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2fe4b870ceac3ced85484a0a893751f055a52deaf921346379f2ef6f3025334`  
		Last Modified: Fri, 02 Oct 2026 01:20:08 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0847fcfeca67f2c576698b55cae596517d5d4994f26d8d442c56f7c731ca646`  
		Last Modified: Fri, 02 Oct 2026 02:30:56 GMT  
		Size: 79.0 MB (79047027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59c114eca5f194ff97640581091449b146659a891349c0852cafd1fcd4cafb01`  
		Last Modified: Fri, 02 Oct 2026 02:30:54 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb59bf7b4bcb214d0470bf9ba0a77eb304f4aa2ab6bb9296e75062b0ecd45f04`  
		Last Modified: Fri, 02 Oct 2026 02:30:54 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6adc1b61c2c97d24e4fb2d2f784f708888880b94907565d9c6e451351f4a3d6`  
		Last Modified: Fri, 02 Oct 2026 02:30:54 GMT  
		Size: 10.3 KB (10307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d26d53adbb59b2c368ee0dc522a8ce092b00f7a060b2d003ef31ca3c4e2f667`  
		Last Modified: Fri, 02 Oct 2026 02:30:55 GMT  
		Size: 3.7 MB (3653799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:10-slim` - unknown; unknown

```console
$ docker pull solr@sha256:0f7e47d4fc091c2bdd8c8fd38fe6f9e1c82c27aed0a8fcafabc24533c846b7de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3466040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dd44cff7760a59329bd0f34c6780b56f6f656ef61d27e9063d76824a46d589f`

```dockerfile
```

-	Layers:
	-	`sha256:2e37d1f35045ddc2fc3a72e3bc26c236d3f138392e9604a982b2c4aa2ebec51f`  
		Last Modified: Fri, 02 Oct 2026 02:30:54 GMT  
		Size: 3.4 MB (3432177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f96fb924a55c8facf2b7aac5475fb0afc85877f1b60f72fe276bfda65077a5fc`  
		Last Modified: Fri, 02 Oct 2026 02:30:54 GMT  
		Size: 33.9 KB (33863 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:10-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:28099bc8a937ba2f970a7f1e5c7102fb3fabc88f868808b4fde2f1710855a4b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.5 MB (194508184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053565bee4b9446e01dd02b8054495a75c6a8a034ce743520d4f5235a6ed1a1e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 21:23:50 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:23:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:23:50 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:23:53 GMT
ADD file:65c699fd9797e3453b1d9214a3d29d981984167bbdef224150cdb4da169e2a77 in / 
# Fri, 18 Sep 2026 21:23:54 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 03:56:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 03:56:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 03:56:56 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 03:56:56 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 03:56:56 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 03:57:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 03:57:58 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 06:58:10 GMT
ARG SOLR_VERSION=10.0.0
# Fri, 02 Oct 2026 06:58:10 GMT
ARG SOLR_DIST=-slim
# Fri, 02 Oct 2026 06:58:10 GMT
ARG SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1
# Fri, 02 Oct 2026 06:58:10 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 02 Oct 2026 06:58:10 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 02 Oct 2026 06:58:10 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 02 Oct 2026 06:58:10 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 02 Oct 2026 06:58:10 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 02 Oct 2026 06:58:10 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 02 Oct 2026 06:58:10 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 02 Oct 2026 06:58:10 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 02 Oct 2026 06:58:10 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 02 Oct 2026 06:58:10 GMT
LABEL org.opencontainers.image.version=10.0.0
# Fri, 02 Oct 2026 06:58:10 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 06:58:10 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 02 Oct 2026 06:58:12 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 02 Oct 2026 06:58:12 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 02 Oct 2026 06:58:12 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 02 Oct 2026 06:58:24 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 02 Oct 2026 06:58:24 GMT
VOLUME [/var/solr]
# Fri, 02 Oct 2026 06:58:24 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 02 Oct 2026 06:58:24 GMT
WORKDIR /opt/solr
# Fri, 02 Oct 2026 06:58:24 GMT
USER 8983
# Fri, 02 Oct 2026 06:58:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 06:58:24 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:02a2dd31affb75e9ad8595e0b0a537f3d60ecf8145f7dcd72eeaf14132bf426d`  
		Last Modified: Fri, 18 Sep 2026 22:30:11 GMT  
		Size: 34.4 MB (34376509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f153597dca38f40be45371fef5dbdceac3f8383bcc6b99c809df8cf7ac06cdf`  
		Last Modified: Fri, 02 Oct 2026 03:58:36 GMT  
		Size: 14.7 MB (14712127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5539211d14d48f664a8f9048f938b150df7198c480ab3ba2ee91bf02c985c4dd`  
		Last Modified: Fri, 02 Oct 2026 03:58:38 GMT  
		Size: 62.0 MB (62018568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b8ed74d13da2451e84107ec4d1beb219edf41fe8626df69bae4360c8a8a3ef8`  
		Last Modified: Fri, 02 Oct 2026 03:58:36 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72a2d0a83a50d2cfc009d324edbcbacc1410881789edd738b46a8a4f2fe1aaf3`  
		Last Modified: Fri, 02 Oct 2026 06:58:52 GMT  
		Size: 79.1 MB (79111998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1198b59876d99cb0f986594c801ef0c3e41d46c67b1c4c7fbddcd6c066f4e3b4`  
		Last Modified: Fri, 02 Oct 2026 06:58:49 GMT  
		Size: 1.2 KB (1155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fcb059080b451a4307cf945a1c4bf43df72416d9c90e316654a9b7b29ab6e0c`  
		Last Modified: Fri, 02 Oct 2026 06:58:49 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a1ef37b2eb2096f7e00d511c618fc49c4b98205afb672a037160d4e9ed6ed39`  
		Last Modified: Fri, 02 Oct 2026 06:58:49 GMT  
		Size: 10.3 KB (10311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d4d285f99d89164eb6009f7882911b9a5f8366dd18b51ef4a1512c0838e366f`  
		Last Modified: Fri, 02 Oct 2026 06:58:51 GMT  
		Size: 4.3 MB (4274775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:10-slim` - unknown; unknown

```console
$ docker pull solr@sha256:d36b53ded962ec0da8860e11f6fce1ad2e1bad9a53703dc6ca0b2c118f00e9d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3468895 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb427ad0e20a6e49c4b0e8b971d2123b85a50456503e164f8d8262fb6c92c5f`

```dockerfile
```

-	Layers:
	-	`sha256:13024553aa992d879788b048b67f592b95fc38ca58694c903c8aec7a11a52dd8`  
		Last Modified: Fri, 02 Oct 2026 06:58:50 GMT  
		Size: 3.4 MB (3435144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00407ac99f90fd2b3762fe8cb4c356258383726d6638aef573777a4033524ff5`  
		Last Modified: Fri, 02 Oct 2026 06:58:49 GMT  
		Size: 33.8 KB (33751 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:10-slim` - linux; riscv64

```console
$ docker pull solr@sha256:193d7d395850760fc0dd382585c86bb5f7b9c1acb55286eea82904bbd4bab14f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.1 MB (187099952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fef89809ec096aac9dea91dda2351d75d80ec432dbda950336e299aa66ceac54`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 11 Sep 2026 13:13:20 GMT
ARG RELEASE
# Fri, 11 Sep 2026 13:13:21 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 11 Sep 2026 13:13:21 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 11 Sep 2026 13:14:28 GMT
ADD file:0347a49c8424872a16c193cce85674e478b1e7045067852c419ceffbe1e8faa0 in / 
# Fri, 11 Sep 2026 13:14:33 GMT
CMD ["/bin/bash"]
# Fri, 18 Sep 2026 19:04:43 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 18 Sep 2026 19:04:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 18 Sep 2026 19:04:43 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 18 Sep 2026 19:04:43 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 18 Sep 2026 19:04:43 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Tue, 29 Sep 2026 00:57:19 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Tue, 29 Sep 2026 00:57:20 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Tue, 29 Sep 2026 00:57:20 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Tue, 29 Sep 2026 00:57:20 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 30 Sep 2026 23:07:56 GMT
ARG SOLR_VERSION=10.0.0
# Wed, 30 Sep 2026 23:07:56 GMT
ARG SOLR_DIST=-slim
# Wed, 30 Sep 2026 23:07:56 GMT
ARG SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1
# Wed, 30 Sep 2026 23:07:56 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 30 Sep 2026 23:07:56 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Wed, 30 Sep 2026 23:07:56 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Wed, 30 Sep 2026 23:07:56 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Wed, 30 Sep 2026 23:07:56 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Wed, 30 Sep 2026 23:07:56 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Wed, 30 Sep 2026 23:07:56 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Wed, 30 Sep 2026 23:07:56 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Wed, 30 Sep 2026 23:07:56 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Wed, 30 Sep 2026 23:07:56 GMT
LABEL org.opencontainers.image.version=10.0.0
# Wed, 30 Sep 2026 23:07:56 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 30 Sep 2026 23:07:56 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Wed, 30 Sep 2026 23:07:56 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Wed, 30 Sep 2026 23:07:57 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Wed, 30 Sep 2026 23:07:57 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Wed, 30 Sep 2026 23:08:50 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 30 Sep 2026 23:08:50 GMT
VOLUME [/var/solr]
# Wed, 30 Sep 2026 23:08:50 GMT
EXPOSE map[8983/tcp:{}]
# Wed, 30 Sep 2026 23:08:50 GMT
WORKDIR /opt/solr
# Wed, 30 Sep 2026 23:08:50 GMT
USER 8983
# Wed, 30 Sep 2026 23:08:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 30 Sep 2026 23:08:50 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:aaab2a0ba2a1e3d3ddb5fa18f45aeabd3d5ea39840a67f33c3ef011e15f84e42`  
		Last Modified: Fri, 11 Sep 2026 13:39:11 GMT  
		Size: 31.1 MB (31052602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9aa33d7440c222b087ca520bc9cbbcf09fae1c8b6b4601ab7c8d42b5092b2f75`  
		Last Modified: Fri, 18 Sep 2026 19:09:41 GMT  
		Size: 11.5 MB (11529625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e73af0aef03966cc53ce09a0674006f599793b75275b6fd970888262148a93fc`  
		Last Modified: Tue, 29 Sep 2026 01:00:12 GMT  
		Size: 61.7 MB (61683036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ef060a673e45f2ea6963f74434bd1c5fbefd597d0e7e648983acfbdfb773c5`  
		Last Modified: Tue, 29 Sep 2026 01:00:02 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1060db11f4c302d4fa5103d2f693158d68ccaceaa00338e481a1f25349ad40fe`  
		Last Modified: Wed, 30 Sep 2026 23:12:10 GMT  
		Size: 79.1 MB (79061226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5bdb72c14993ba33b5c925a7583ab4e06a763d57abb7c59f81e4041cdf6fcb`  
		Last Modified: Wed, 30 Sep 2026 23:11:57 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949e26587b0374f1b29933079f42f4a26f2dbfe549bfa1a2550a0b04ec1ab990`  
		Last Modified: Wed, 30 Sep 2026 23:11:57 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba0543ba1f25c4e31d2f3fd08d7debeddaa4f81e6c25c2e4cc4b69ed28eb3d5`  
		Last Modified: Wed, 30 Sep 2026 23:11:57 GMT  
		Size: 10.3 KB (10307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df59c9efa41bf115c4114c5ea6007fbdc87bfa0cbfa8909c3601d195a2f4a298`  
		Last Modified: Wed, 30 Sep 2026 23:12:00 GMT  
		Size: 3.8 MB (3759260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:10-slim` - unknown; unknown

```console
$ docker pull solr@sha256:20d331542eaab5e0275febcd8e4f506f978e40ed3fc6f907a692dfb05c5bb40c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3457526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a6f40535dd5cef0871a8c8bd4cfb3ce99cfb467fdd2c078bbcdcd8b01f9dc23`

```dockerfile
```

-	Layers:
	-	`sha256:524fcf4a1c9f64c8fa324ecd18916623e69d6a355402ea92502f1c6423ea45cc`  
		Last Modified: Wed, 30 Sep 2026 23:11:58 GMT  
		Size: 3.4 MB (3423776 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c3789216142960db14bc0f9f39df998e89fab1a380b3f66f717dec0c98fbd2f9`  
		Last Modified: Wed, 30 Sep 2026 23:11:57 GMT  
		Size: 33.8 KB (33750 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:10-slim` - linux; s390x

```console
$ docker pull solr@sha256:6cbcba8033b3dbbd3e786ae65bc1c336edbe7843e27800d689595d0f5c709b33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187193655 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c32ef4360f6622d1282e942724832bc8e993a19fa8aea2dae4df0afd69372d8a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 18 Sep 2026 21:22:48 GMT
ARG RELEASE
# Fri, 18 Sep 2026 21:22:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 18 Sep 2026 21:22:48 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 18 Sep 2026 21:22:50 GMT
ADD file:dbe84e9fbddf57955eb8069675a3842837c04eb1416213c2d50049efd3dad787 in / 
# Fri, 18 Sep 2026 21:22:50 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:35:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:35:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:35:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:35:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:35:07 GMT
ENV JAVA_VERSION=jdk-25.0.4.1+1
# Fri, 02 Oct 2026 01:37:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='1731a34baadec5479258ea0202e4d5d865d2efeee60cb0c7d7eb056fe96ca219';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_x64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        arm64)          ESUM='34828cbb93ed31c281c84ecb31ddab655d11a802f263c1fc019d42e9e0230fed';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        ppc64el)          ESUM='4ab6eca3e092fd63afe8f34b119f169fd434a080c96f8d37f46687389518c4c5';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        riscv64)          ESUM='dcf12c8c5e0b49bbae7978f42ca6671e10671db7509f406a0f0e65e3b3dc65a9';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        s390x)          ESUM='26af224b439e3a020050c68de55fb373b7049603f82e7f87f1b3e221f09c2b3b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4.1%2B1/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:37:11 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:37:13 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:37:13 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 02:31:46 GMT
ARG SOLR_VERSION=10.0.0
# Fri, 02 Oct 2026 02:31:46 GMT
ARG SOLR_DIST=-slim
# Fri, 02 Oct 2026 02:31:46 GMT
ARG SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1
# Fri, 02 Oct 2026 02:31:46 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 02 Oct 2026 02:31:46 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 02 Oct 2026 02:31:46 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 02 Oct 2026 02:31:46 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 02 Oct 2026 02:31:46 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 02 Oct 2026 02:31:46 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 02 Oct 2026 02:31:46 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 02 Oct 2026 02:31:46 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 02 Oct 2026 02:31:46 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 02 Oct 2026 02:31:46 GMT
LABEL org.opencontainers.image.version=10.0.0
# Fri, 02 Oct 2026 02:31:46 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 02:31:46 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 02 Oct 2026 02:31:46 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 02 Oct 2026 02:31:46 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 02 Oct 2026 02:31:46 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 02 Oct 2026 02:31:49 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST=-slim SOLR_SHA512=18817965956567405f5788f391ac94b88777ecb2ebb0ee11ef88e6bd117508461b735f926cdf2e138b9ffb48c51700c104f3f20722f85d4e5bc8c9f790d16ef1 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 02 Oct 2026 02:31:49 GMT
VOLUME [/var/solr]
# Fri, 02 Oct 2026 02:31:49 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 02 Oct 2026 02:31:49 GMT
WORKDIR /opt/solr
# Fri, 02 Oct 2026 02:31:49 GMT
USER 8983
# Fri, 02 Oct 2026 02:31:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:31:49 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:108aebd72dd457ee7da6e519c157e975c9f75fedf3563478a69f28606232305c`  
		Last Modified: Fri, 18 Sep 2026 22:30:25 GMT  
		Size: 29.9 MB (29945320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3fa7478f5cbcb209e59a4ac7fba4414f06d5e8fedda68929327207ba0d55c1e`  
		Last Modified: Fri, 02 Oct 2026 01:38:29 GMT  
		Size: 13.8 MB (13829684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5907d73839c84ac69cf6e0e1b169d2734c43056cfbaed6cb333265b7a0f5fb7`  
		Last Modified: Fri, 02 Oct 2026 01:38:31 GMT  
		Size: 60.5 MB (60530962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55bd0718b39b046d036ec7c155527ea10a2e6fde1aa23af4ed5d13c12d13de71`  
		Last Modified: Fri, 02 Oct 2026 01:38:28 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b02dcdec79bfc39a9d63af54bd9cf91859199c881626626d38392095b47860`  
		Last Modified: Fri, 02 Oct 2026 02:32:07 GMT  
		Size: 79.1 MB (79067447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcaf144923c62132848fec659a8f9ccbdf7018ab4abedb0ecab58e131553f585`  
		Last Modified: Fri, 02 Oct 2026 02:32:05 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57dc3f2d70c8064ef8b2d165bef0b241658515bfb1f35e7e8eed778f32266721`  
		Last Modified: Fri, 02 Oct 2026 02:32:05 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb4cf85675bbcb8ef8f8fc97a25c9d8e8f5989b2251cf4a14602b8bddc3f3871`  
		Last Modified: Fri, 02 Oct 2026 02:32:05 GMT  
		Size: 10.3 KB (10306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb33be493895b8d2d930ce6971e471f1fca470dba821f8fc712cf45d814ba07`  
		Last Modified: Fri, 02 Oct 2026 02:32:06 GMT  
		Size: 3.8 MB (3806038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:10-slim` - unknown; unknown

```console
$ docker pull solr@sha256:503918575905738dba20e64d7709750ac5a133e72acba9da13a86be1ee3f32e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.5 MB (3466991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db87d614bb9994bd0a615bbcc31c74f52f7d8c1e924b698b150f588ee4b77d72`

```dockerfile
```

-	Layers:
	-	`sha256:16410cde78a2381aabc670362f909f1b934f4373f485e7ed6d11eb49333dcb25`  
		Last Modified: Fri, 02 Oct 2026 02:32:05 GMT  
		Size: 3.4 MB (3433292 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34754773fc5180e8a166d76d8d09680c5d91852e00d54ad68a1d4a249e92b4d8`  
		Last Modified: Fri, 02 Oct 2026 02:32:05 GMT  
		Size: 33.7 KB (33699 bytes)  
		MIME: application/vnd.in-toto+json
