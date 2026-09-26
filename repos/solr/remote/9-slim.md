## `solr:9-slim`

```console
$ docker pull solr@sha256:7dd1bc3412da5b3528041a30aac26c144941016b4c35e22f5acf733cf6b38ff7
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

### `solr:9-slim` - linux; amd64

```console
$ docker pull solr@sha256:0577a3c0aa92e329d120f0ff05c1ffbebed4923b4ed92bb4d9ed6f964af82551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161146542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5fe107c09b179e798351787f8fd3693092b0f74d7ff02423564a9d9c03a6775`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Fri, 25 Sep 2026 22:37:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:37:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:37:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:37:31 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:37:31 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:37:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:37:34 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:37:34 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:37:34 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:08:38 GMT
ARG SOLR_VERSION=9.10.1
# Fri, 25 Sep 2026 23:08:38 GMT
ARG SOLR_DIST=-slim
# Fri, 25 Sep 2026 23:08:38 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Fri, 25 Sep 2026 23:08:38 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Fri, 25 Sep 2026 23:08:38 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 25 Sep 2026 23:08:38 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 25 Sep 2026 23:08:38 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 25 Sep 2026 23:08:38 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 25 Sep 2026 23:08:38 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 25 Sep 2026 23:08:38 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 25 Sep 2026 23:08:38 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 25 Sep 2026 23:08:38 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 25 Sep 2026 23:08:38 GMT
LABEL org.opencontainers.image.version=9.10.1
# Fri, 25 Sep 2026 23:08:38 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 25 Sep 2026 23:08:38 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 25 Sep 2026 23:08:38 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 25 Sep 2026 23:08:38 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 25 Sep 2026 23:08:38 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 25 Sep 2026 23:08:46 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 25 Sep 2026 23:08:46 GMT
VOLUME [/var/solr]
# Fri, 25 Sep 2026 23:08:46 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 25 Sep 2026 23:08:46 GMT
WORKDIR /opt/solr
# Fri, 25 Sep 2026 23:08:46 GMT
USER 8983
# Fri, 25 Sep 2026 23:08:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:08:46 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283c139709fe7bcd89a1cc7c302b901b0d9729aaa0536d1eaa8d46d48c8e9cd6`  
		Last Modified: Fri, 25 Sep 2026 22:37:46 GMT  
		Size: 16.1 MB (16114061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f9afa6775117e2e3d8d347cdc35c7ce4d32d22852ff1e8bbda497f2c4c61c6`  
		Last Modified: Fri, 25 Sep 2026 22:37:47 GMT  
		Size: 47.5 MB (47519964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7efdfff802089e5672763eaaa12b49fb3551a64311ed552a0905bd616d7ab440`  
		Last Modified: Fri, 25 Sep 2026 22:37:45 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578a92f1fad0d0d855eaa30b7cbd35f8a8d381413fb0ce57f6ba8b556a7d8a76`  
		Last Modified: Fri, 25 Sep 2026 22:37:29 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa929a8b1913ae5140eebab930e93cc0d8c8baf23c813bdf78b029ed19cbbb9d`  
		Last Modified: Fri, 25 Sep 2026 23:08:58 GMT  
		Size: 66.1 MB (66125723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b584b40cc26a132c4c86e25c50d7e850affd4cfc43a7b3bf2e84957a15bbac`  
		Last Modified: Fri, 25 Sep 2026 23:08:56 GMT  
		Size: 4.3 KB (4272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee606a275145717622dc01deeaa62b20be0e975ad37cb213748e86dcb0050b5`  
		Last Modified: Fri, 25 Sep 2026 23:08:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b5c6bc8275321f4788ccd4af51ca110e95a341ff73ade12cb78c45ad4205e`  
		Last Modified: Fri, 25 Sep 2026 23:08:56 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1a5026d853d7aaf4a6b15a7089bf1232e10be65b9dd0deef5c2a9d32ecb128`  
		Last Modified: Fri, 25 Sep 2026 23:08:57 GMT  
		Size: 1.6 MB (1618595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:a8c51772c94537a380e4113a52ad7c67950ab8d3a33bdc14074d6cb515109273
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8ce7aad4c50ac9410ca144bcc28c66f14cb03f5c9e96b427eed6cde31649e19`

```dockerfile
```

-	Layers:
	-	`sha256:2487b909906325335cf639bbcbbb145a7435da7c050b5de8ead3b0131d4e066d`  
		Last Modified: Fri, 25 Sep 2026 23:08:56 GMT  
		Size: 4.0 MB (3951568 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72f4a5d9749a48930a884d149bdaadaef535ba7659215c6615f317373f702602`  
		Last Modified: Fri, 25 Sep 2026 23:08:56 GMT  
		Size: 34.1 KB (34086 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:74b3e46c84ed95bc125134747aad7bf38968073ba6ab0ad4aff866e45493251e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158352635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d4f3d6ac8a9be84fc334dd1cf9c60f116f626869ef6f1a4b7692f847f6bb7a1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Fri, 25 Sep 2026 22:36:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:36:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:36:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:36:20 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:36:20 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:23 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:23 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:06:10 GMT
ARG SOLR_VERSION=9.10.1
# Fri, 25 Sep 2026 23:06:10 GMT
ARG SOLR_DIST=-slim
# Fri, 25 Sep 2026 23:06:10 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Fri, 25 Sep 2026 23:06:10 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Fri, 25 Sep 2026 23:06:10 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 25 Sep 2026 23:06:10 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 25 Sep 2026 23:06:10 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 25 Sep 2026 23:06:10 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 25 Sep 2026 23:06:10 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 25 Sep 2026 23:06:10 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 25 Sep 2026 23:06:10 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 25 Sep 2026 23:06:10 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 25 Sep 2026 23:06:10 GMT
LABEL org.opencontainers.image.version=9.10.1
# Fri, 25 Sep 2026 23:06:10 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 25 Sep 2026 23:06:10 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 25 Sep 2026 23:06:10 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 25 Sep 2026 23:06:10 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 25 Sep 2026 23:06:10 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 25 Sep 2026 23:06:18 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 25 Sep 2026 23:06:18 GMT
VOLUME [/var/solr]
# Fri, 25 Sep 2026 23:06:18 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 25 Sep 2026 23:06:18 GMT
WORKDIR /opt/solr
# Fri, 25 Sep 2026 23:06:18 GMT
USER 8983
# Fri, 25 Sep 2026 23:06:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:06:18 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e4be80ccf23625c2b9f55507e92a0bef3343c6a3f274f9d593c52bd4d2fa2945`  
		Last Modified: Thu, 03 Sep 2026 17:08:27 GMT  
		Size: 27.7 MB (27682747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:611c105b8507fdfdaec732e467f842f2d9b8ea82d59628f9fcee82bdf52c9011`  
		Last Modified: Fri, 25 Sep 2026 22:36:36 GMT  
		Size: 16.0 MB (16048280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adea3f0902fc38715d0a4f353d7d50b29fa6fbb2c4afc52128fc95d6b0ef9f2d`  
		Last Modified: Fri, 25 Sep 2026 22:36:37 GMT  
		Size: 47.0 MB (47002493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8717b08cb951dc96338b58848768d079676a4585e91e753a7048fa5deb7eee`  
		Last Modified: Fri, 25 Sep 2026 22:36:35 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a40edcd447f02c4a0928c05ec954f2ac00731fe5fdfaa76dd1fdc430fbe2991`  
		Last Modified: Fri, 25 Sep 2026 22:36:35 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8be6421de670274b29f177a047c632a50236e660d1eed614288282eac0745b`  
		Last Modified: Fri, 25 Sep 2026 23:06:30 GMT  
		Size: 66.1 MB (66125814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e92693ca2d431191f344062cbb902cb3b98bc0e1633d20010f2714663e436435`  
		Last Modified: Fri, 25 Sep 2026 23:06:28 GMT  
		Size: 4.3 KB (4305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ec1602df994a20f38274c6d29c0775fdb2e71d27da5060f340ca36b6c2c51c0`  
		Last Modified: Fri, 25 Sep 2026 23:06:28 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2aab38ca4557d3f2d32496b2f6ebaf74f5c7bcb6ad254d41bb77c3f26b43802`  
		Last Modified: Fri, 25 Sep 2026 23:06:28 GMT  
		Size: 10.8 KB (10804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60af0d11e320812f8c1e32b10cfc97ab34b14c6d86d263340a907be1a2463fd8`  
		Last Modified: Fri, 25 Sep 2026 23:06:29 GMT  
		Size: 1.5 MB (1475323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:b46c6e8d302d4cdf14447180d727b0b1c8b4bf6c645918d6714a71e37108a1f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64ec400926e4b30f22c14637bc99105593bcf90b462b16278dc8de766f34c8d3`

```dockerfile
```

-	Layers:
	-	`sha256:85c82286e1211fd47ff86c1420efcd6c7e54ddd261ecc12030578c13c26b1715`  
		Last Modified: Fri, 25 Sep 2026 23:06:28 GMT  
		Size: 4.0 MB (3951232 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab126b26caa55f2eb4e6371e07b15d0e30057102dc3c94c3581fbbc3b234f7b4`  
		Last Modified: Fri, 25 Sep 2026 23:06:28 GMT  
		Size: 34.2 KB (34238 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:8c53cfdcbb12827a89e9a4b46098a5a73d1d9c343e6fd925dc026ff823284193
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167487983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f49423e6158cd69b0c12fb6db0714a31f0f857d533b2dda84981a4a3c1d4244c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

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
# Wed, 09 Sep 2026 06:46:38 GMT
ARG SOLR_VERSION=9.10.1
# Wed, 09 Sep 2026 06:46:38 GMT
ARG SOLR_DIST=-slim
# Wed, 09 Sep 2026 06:46:38 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Wed, 09 Sep 2026 06:46:38 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Wed, 09 Sep 2026 06:46:38 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Wed, 09 Sep 2026 06:46:38 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Wed, 09 Sep 2026 06:46:38 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Wed, 09 Sep 2026 06:46:38 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Wed, 09 Sep 2026 06:46:38 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Wed, 09 Sep 2026 06:46:38 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Wed, 09 Sep 2026 06:46:38 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Wed, 09 Sep 2026 06:46:38 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Wed, 09 Sep 2026 06:46:38 GMT
LABEL org.opencontainers.image.version=9.10.1
# Wed, 09 Sep 2026 06:46:38 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 09 Sep 2026 06:46:38 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Wed, 09 Sep 2026 06:46:38 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Wed, 09 Sep 2026 06:46:39 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Wed, 09 Sep 2026 06:46:39 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Wed, 09 Sep 2026 06:46:49 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 09 Sep 2026 06:46:49 GMT
VOLUME [/var/solr]
# Wed, 09 Sep 2026 06:46:49 GMT
EXPOSE map[8983/tcp:{}]
# Wed, 09 Sep 2026 06:46:49 GMT
WORKDIR /opt/solr
# Wed, 09 Sep 2026 06:46:49 GMT
USER 8983
# Wed, 09 Sep 2026 06:46:49 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 09 Sep 2026 06:46:49 GMT
CMD ["solr-foreground"]
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
	-	`sha256:49cea714e45e231f66b3246a7004def82d98da5583445ddb27613c0f55601728`  
		Last Modified: Wed, 09 Sep 2026 06:47:25 GMT  
		Size: 66.1 MB (66125806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8215ac9f970c9ff5b2e00bd527481ec447bc7a898cc072d19c0de93de3082cc`  
		Last Modified: Wed, 09 Sep 2026 06:47:23 GMT  
		Size: 4.3 KB (4274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a146bf69993f8174ae1e9e9ea4ff80a5405cdc8a6eff5ea26c89703682a205`  
		Last Modified: Wed, 09 Sep 2026 06:47:23 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a513fdfc1cafc805797b03d5a67da3bbc1e2ac40d188bb9585aecf280ec93dcb`  
		Last Modified: Wed, 09 Sep 2026 06:47:23 GMT  
		Size: 10.8 KB (10807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539a5505bfb8300e92fcb7fb21c3d9bbd19ad287470269e53f415528dad2278e`  
		Last Modified: Wed, 09 Sep 2026 06:47:24 GMT  
		Size: 1.6 MB (1631084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:0a24c5128c154eb50bdc8bfa6cc29464a25055dac688b6cd4f067fc53203e328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3c3cc20ae71fc47f29918a75ad70078799e1c57955e94b2a77924947d1840c5`

```dockerfile
```

-	Layers:
	-	`sha256:a327348b46892285548236266919bdbe0124257899d155371f65fba6eb65518d`  
		Last Modified: Wed, 09 Sep 2026 06:47:23 GMT  
		Size: 4.0 MB (3955607 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a399851083dc50d5c6606e35c51c1bf9f7dd48fd55d9780f17482f61240e727c`  
		Last Modified: Wed, 09 Sep 2026 06:47:23 GMT  
		Size: 34.1 KB (34122 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; s390x

```console
$ docker pull solr@sha256:b0c64a2016e6d1e11d2910a94ba3735c75b9d644aeec4488de7a7802e51acf58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156561936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5410e085294e9df00044b12ad6e2a2cba8a4c532734ce240d54ce754f926a6ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 22:34:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 22:34:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 25 Sep 2026 22:34:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 25 Sep 2026 22:34:40 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:36:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:36:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:36:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:36:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 25 Sep 2026 23:03:00 GMT
ARG SOLR_VERSION=9.10.1
# Fri, 25 Sep 2026 23:03:00 GMT
ARG SOLR_DIST=-slim
# Fri, 25 Sep 2026 23:03:00 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Fri, 25 Sep 2026 23:03:00 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Fri, 25 Sep 2026 23:03:00 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 25 Sep 2026 23:03:00 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 25 Sep 2026 23:03:00 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 25 Sep 2026 23:03:00 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 25 Sep 2026 23:03:00 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 25 Sep 2026 23:03:00 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 25 Sep 2026 23:03:00 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 25 Sep 2026 23:03:00 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 25 Sep 2026 23:03:00 GMT
LABEL org.opencontainers.image.version=9.10.1
# Fri, 25 Sep 2026 23:03:00 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 25 Sep 2026 23:03:00 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 25 Sep 2026 23:03:00 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 25 Sep 2026 23:03:00 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 25 Sep 2026 23:03:00 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 25 Sep 2026 23:03:05 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 25 Sep 2026 23:03:05 GMT
VOLUME [/var/solr]
# Fri, 25 Sep 2026 23:03:05 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 25 Sep 2026 23:03:05 GMT
WORKDIR /opt/solr
# Fri, 25 Sep 2026 23:03:05 GMT
USER 8983
# Fri, 25 Sep 2026 23:03:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Sep 2026 23:03:05 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076e9b7028c66e0b5883b145582203f26a6897a49114075e582b35489581ba3c`  
		Last Modified: Fri, 25 Sep 2026 22:34:59 GMT  
		Size: 16.1 MB (16115608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4218cfc5af0900a447ac3d3e36effce7f6657dd8f8836d25f08825b41cbf20eb`  
		Last Modified: Fri, 25 Sep 2026 22:36:34 GMT  
		Size: 44.5 MB (44514865 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a28e00e61a581d24536c322e7df9b27c1d2ba30863ff70e315a8b112ad20fac3`  
		Last Modified: Fri, 25 Sep 2026 22:36:32 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e7eb36b9f01a118b494f6620bd6cb5633fed2674c89e975e22f83140c1099e`  
		Last Modified: Fri, 25 Sep 2026 22:36:32 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939677b883d20e8ee5057004a0c93bc15f39fa727ebd2ed02331411afc420b3d`  
		Last Modified: Fri, 25 Sep 2026 23:03:22 GMT  
		Size: 66.1 MB (66127712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:819dfebe0f66d95ecfb4603a231bc11a6854dd1f22ca17b976a069e5dc7654c9`  
		Last Modified: Fri, 25 Sep 2026 23:03:21 GMT  
		Size: 4.3 KB (4306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ba5ad9909cd22e143cfa38b2774b2db65203defd41d68ce3597899f145d7e8e`  
		Last Modified: Fri, 25 Sep 2026 23:03:21 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3c35e7063bceca59e34cc8e7da55b80241bad79b87cf77ced9768b6f5ce170`  
		Last Modified: Fri, 25 Sep 2026 23:03:21 GMT  
		Size: 10.8 KB (10803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c0d48470b35f512728b1a0587b99a428d001b259df58ea905bccb9b9d3356e`  
		Last Modified: Fri, 25 Sep 2026 23:03:22 GMT  
		Size: 1.6 MB (1561742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:c6e787522eb4f51e6ffc3ae1026fb0d6201a9d0aefafd82add22c9712d1cf205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3987249 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d5a719eb31b9c77fde68c67077a35b9e2eb10c956b9e3562496f1a8118b62ef`

```dockerfile
```

-	Layers:
	-	`sha256:3fd6452cdd3f04a38267dc7e83788bcc0d9c8138ef826fd5a41a15e10e0abb54`  
		Last Modified: Fri, 25 Sep 2026 23:03:21 GMT  
		Size: 4.0 MB (3953164 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5d30b752a92d51fa5c62ae35761f82268b3fe5cf799732c61b261494d6d1038`  
		Last Modified: Fri, 25 Sep 2026 23:03:21 GMT  
		Size: 34.1 KB (34085 bytes)  
		MIME: application/vnd.in-toto+json
