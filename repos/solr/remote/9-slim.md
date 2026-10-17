## `solr:9-slim`

```console
$ docker pull solr@sha256:3b70e899b1cca19729c49c110a1aa8e937f727be4cca3ad07ea67f151f5cc07d
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
$ docker pull solr@sha256:70fe0301d0d165371c00b5eeea5087657e15177a21d0b13bd0505751a877100e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **160.5 MB (160543127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ba4876b809f981755cdb7bc4bc68c385accbf5878f1f29e9cbe0b42728ab33d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 02 Oct 2026 10:21:04 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:21:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:21:04 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:21:06 GMT
ADD file:b6c410e935243e5623135210c34358091e8af5ff14851cb0f67195733b55d391 in / 
# Fri, 02 Oct 2026 10:21:06 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:18:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:18:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:18:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:18:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:18:21 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:19:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:02 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:02 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:02 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 01:32:12 GMT
ARG SOLR_VERSION=9.11.0
# Sat, 17 Oct 2026 01:32:12 GMT
ARG SOLR_DIST=-slim
# Sat, 17 Oct 2026 01:32:12 GMT
ARG SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621
# Sat, 17 Oct 2026 01:32:12 GMT
ARG SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B
# Sat, 17 Oct 2026 01:32:12 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Sat, 17 Oct 2026 01:32:12 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Sat, 17 Oct 2026 01:32:12 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Sat, 17 Oct 2026 01:32:12 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Sat, 17 Oct 2026 01:32:12 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Sat, 17 Oct 2026 01:32:12 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Sat, 17 Oct 2026 01:32:12 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Sat, 17 Oct 2026 01:32:12 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Sat, 17 Oct 2026 01:32:12 GMT
LABEL org.opencontainers.image.version=9.11.0
# Sat, 17 Oct 2026 01:32:12 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Sat, 17 Oct 2026 01:32:12 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Sat, 17 Oct 2026 01:32:12 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Sat, 17 Oct 2026 01:32:12 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Sat, 17 Oct 2026 01:32:12 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Sat, 17 Oct 2026 01:32:19 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 17 Oct 2026 01:32:19 GMT
VOLUME [/var/solr]
# Sat, 17 Oct 2026 01:32:19 GMT
EXPOSE map[8983/tcp:{}]
# Sat, 17 Oct 2026 01:32:19 GMT
WORKDIR /opt/solr
# Sat, 17 Oct 2026 01:32:19 GMT
USER 8983
# Sat, 17 Oct 2026 01:32:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:32:19 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cf1a5487baaf7d71eb78fd0888933c6cdecb40e59edb896511aa0ef4a896031e`  
		Last Modified: Fri, 02 Oct 2026 11:08:26 GMT  
		Size: 29.8 MB (29752476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a4f7eba73233d5ba1baafddf18465aa328e18aa90e8721ef04d67b84ea93491`  
		Last Modified: Sat, 17 Oct 2026 00:18:50 GMT  
		Size: 16.1 MB (16117811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117f5130def90c702e6020bcdd18169d0079869eef7b464ed77f67ffc5ff6a39`  
		Last Modified: Sat, 17 Oct 2026 00:19:15 GMT  
		Size: 47.5 MB (47519993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bb6682d6eab61fcfcca9d5913838e56ce9d0f2c693c9aa606b84a5c244f08c8`  
		Last Modified: Sat, 17 Oct 2026 00:19:13 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6aad88431ede92a4ff837026eb456183ae491e2df4384e14d5c23f64a8ae463b`  
		Last Modified: Sat, 17 Oct 2026 00:19:13 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d431ad37b963ca5057af51f813ffc357b051977b42d171a8cd3c72a568696b4`  
		Last Modified: Sat, 17 Oct 2026 01:32:31 GMT  
		Size: 66.5 MB (66457231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e760832b90ec0aff424f2365b83dd99ac2347489d3244dbea018d99107e0f9`  
		Last Modified: Sat, 17 Oct 2026 01:32:29 GMT  
		Size: 4.3 KB (4276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc3379241874109240e8fb2f4918ef1e444f167acf4133b9d16158a41e27986d`  
		Last Modified: Sat, 17 Oct 2026 01:32:29 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd41dd137ed2c514829cd42e9b6396caf55de1e09c4b67c5e60f313d68a8eafd`  
		Last Modified: Sat, 17 Oct 2026 01:32:29 GMT  
		Size: 10.8 KB (10801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3483aa0cfc677c8597a4ee316f64c06f32862091e36279be55417e922e50106c`  
		Last Modified: Sat, 17 Oct 2026 01:32:30 GMT  
		Size: 677.7 KB (677666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:3bb15793b314511a5ef77c7a36745d853ad7276195f1f749c9bdda0a4f5b96ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3978274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2bdaa73a94d7b7669378d417452cc365ffd7edccccb0b47e238768fab3836b3`

```dockerfile
```

-	Layers:
	-	`sha256:40eda227019b5efc6b480784b12237fa598118de481227fa454ec061de54d034`  
		Last Modified: Sat, 17 Oct 2026 01:32:29 GMT  
		Size: 3.9 MB (3944203 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a680561a6ca50c1e242127342e46472155ead0a017af288f73a424ca0bece578`  
		Last Modified: Sat, 17 Oct 2026 01:32:29 GMT  
		Size: 34.1 KB (34071 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:08c27197ebe145b384dfd27e8254d468a2c42d7d8464d2ba6408f853eecab5da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **157.8 MB (157823301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3b0b15e4a83c3916773e70ecec3e4823d592c886d19b90f8d42d785fc1b5caf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:44 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:44 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:44 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:46 GMT
ADD file:1e8b3941ec802b3e9a687b06bf141aa99b460bda277875ad29712897c6622f25 in / 
# Fri, 02 Oct 2026 10:22:46 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:19:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:19:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:19:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:19:20 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:19:20 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:19:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:19:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:19:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:19:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 01:33:09 GMT
ARG SOLR_VERSION=9.11.0
# Sat, 17 Oct 2026 01:33:09 GMT
ARG SOLR_DIST=-slim
# Sat, 17 Oct 2026 01:33:09 GMT
ARG SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621
# Sat, 17 Oct 2026 01:33:09 GMT
ARG SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B
# Sat, 17 Oct 2026 01:33:09 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Sat, 17 Oct 2026 01:33:09 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Sat, 17 Oct 2026 01:33:09 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Sat, 17 Oct 2026 01:33:09 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Sat, 17 Oct 2026 01:33:09 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Sat, 17 Oct 2026 01:33:09 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Sat, 17 Oct 2026 01:33:09 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Sat, 17 Oct 2026 01:33:09 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Sat, 17 Oct 2026 01:33:09 GMT
LABEL org.opencontainers.image.version=9.11.0
# Sat, 17 Oct 2026 01:33:09 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Sat, 17 Oct 2026 01:33:09 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Sat, 17 Oct 2026 01:33:09 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Sat, 17 Oct 2026 01:33:10 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Sat, 17 Oct 2026 01:33:10 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Sat, 17 Oct 2026 01:33:18 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 17 Oct 2026 01:33:18 GMT
VOLUME [/var/solr]
# Sat, 17 Oct 2026 01:33:18 GMT
EXPOSE map[8983/tcp:{}]
# Sat, 17 Oct 2026 01:33:18 GMT
WORKDIR /opt/solr
# Sat, 17 Oct 2026 01:33:18 GMT
USER 8983
# Sat, 17 Oct 2026 01:33:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:33:18 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:2908c4fa36d87b4ba1206721a9efe744e0e9b35d1437148222276c744aa6efa0`  
		Last Modified: Fri, 02 Oct 2026 11:08:32 GMT  
		Size: 27.7 MB (27684723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399909ad21c8100ebbdb73189c08d7a80051067672c8882d48c4ea1e6b31e30f`  
		Last Modified: Sat, 17 Oct 2026 00:19:37 GMT  
		Size: 16.1 MB (16054840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdacadca59bc563c3602573e29898e943cb2e7ec8660f11bc230ad7026ffa75d`  
		Last Modified: Sat, 17 Oct 2026 00:19:38 GMT  
		Size: 47.0 MB (47002493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c7a7d9169817508ba35058417efd37011a45443cc97a7a0d6ac2e9c2b74d20`  
		Last Modified: Sat, 17 Oct 2026 00:19:36 GMT  
		Size: 160.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c40349b448a68c04cf01f4ecf1a2bef05b922f39c01cb0c9d257827f91d7c5a`  
		Last Modified: Sat, 17 Oct 2026 00:19:36 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a42ca19da322c7cae80d4e78643649cbef5e8674075fb6e7cf95de2d58602c3`  
		Last Modified: Sat, 17 Oct 2026 01:33:31 GMT  
		Size: 66.5 MB (66457224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbdeead95625a29e9b9c6f77304ea9009b35adf489a39066fc2ab6e2eb8d4666`  
		Last Modified: Sat, 17 Oct 2026 01:33:29 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d2064a42e5b26e77288415b1b7f37a740cf629fa953267cd9556c58f5c5506`  
		Last Modified: Sat, 17 Oct 2026 01:33:29 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7788a02b30fff477edc1fba89972c6f49b533e9cfe1ba92f7cedac1f0b0ad8dc`  
		Last Modified: Sat, 17 Oct 2026 01:33:29 GMT  
		Size: 10.8 KB (10809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af96f5fc4ee352450a2503ba5522192f8a45bab18fde672fafeb00da40a0f8c4`  
		Last Modified: Sat, 17 Oct 2026 01:33:30 GMT  
		Size: 606.0 KB (606028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:da543242cc27854ac366aaab0a7229eb3b8e9c0917f905f59fbdd0cbb3dafd2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3978090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27717b56edb71825cf343aee7ce8c7298bcdd9df4de80a4fcbf0d454e841c199`

```dockerfile
```

-	Layers:
	-	`sha256:3f4c0cb45bb407d5870dc7b8fa91bd4d0af94acc610640014e30a7dd00eddacf`  
		Last Modified: Sat, 17 Oct 2026 01:33:29 GMT  
		Size: 3.9 MB (3943867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f6e9f2396b5e7e17cb3451e1ca1fa59256466683dbde3e35567182ecc6651b85`  
		Last Modified: Sat, 17 Oct 2026 01:33:29 GMT  
		Size: 34.2 KB (34223 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:954098cb7af3f93a3863d19e248f7237b218e2a018c495bf9b9fdcaa84d0c0ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.0 MB (166977070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8cdade8784a0571ab826adc0c556755131e0266e77a8d089b5558e5ed3f3f16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:20:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:20:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:20:03 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:20:03 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:20:03 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:30:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:30:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:30:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:30:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 04:08:26 GMT
ARG SOLR_VERSION=9.11.0
# Sat, 17 Oct 2026 04:08:26 GMT
ARG SOLR_DIST=-slim
# Sat, 17 Oct 2026 04:08:26 GMT
ARG SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621
# Sat, 17 Oct 2026 04:08:26 GMT
ARG SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B
# Sat, 17 Oct 2026 04:08:26 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Sat, 17 Oct 2026 04:08:26 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Sat, 17 Oct 2026 04:08:26 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Sat, 17 Oct 2026 04:08:26 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Sat, 17 Oct 2026 04:08:26 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Sat, 17 Oct 2026 04:08:26 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Sat, 17 Oct 2026 04:08:26 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Sat, 17 Oct 2026 04:08:26 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Sat, 17 Oct 2026 04:08:26 GMT
LABEL org.opencontainers.image.version=9.11.0
# Sat, 17 Oct 2026 04:08:26 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Sat, 17 Oct 2026 04:08:26 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Sat, 17 Oct 2026 04:08:27 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Sat, 17 Oct 2026 04:08:28 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Sat, 17 Oct 2026 04:08:29 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Sat, 17 Oct 2026 04:08:38 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 17 Oct 2026 04:08:38 GMT
VOLUME [/var/solr]
# Sat, 17 Oct 2026 04:08:38 GMT
EXPOSE map[8983/tcp:{}]
# Sat, 17 Oct 2026 04:08:39 GMT
WORKDIR /opt/solr
# Sat, 17 Oct 2026 04:08:39 GMT
USER 8983
# Sat, 17 Oct 2026 04:08:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 04:08:39 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e3558c4f6c1091f241bd9ad640816cc4633252705f4d740aff7b96ec07bfab`  
		Last Modified: Sat, 17 Oct 2026 00:20:54 GMT  
		Size: 17.6 MB (17596929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b8ef8c62e569a66ba21c2b797c09cfd179a5ec67c75a1a2d44d56f619be2684`  
		Last Modified: Sat, 17 Oct 2026 00:31:30 GMT  
		Size: 47.4 MB (47427916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1c65b1426e5364c08e367263a9bf788efbe51ab470f3e977de2b5914781444a`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d15514fa0bf8ece41d149ffcbdea70800199feea0b619f1d49495d468bc5030`  
		Last Modified: Sat, 17 Oct 2026 00:31:28 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c34c335c51bf723c29895a6cf10cff0355788bf323d9327d9c20a51e39ce274`  
		Last Modified: Sat, 17 Oct 2026 04:09:13 GMT  
		Size: 66.5 MB (66457373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715526a7c80061d0c05e041c87502c122618426f2e4651ef462b858aecedd870`  
		Last Modified: Sat, 17 Oct 2026 04:09:11 GMT  
		Size: 4.3 KB (4272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a83d93049728326a42aae69be357e3068caee67fd8ccc626eaa4f4f7fdcec35`  
		Last Modified: Sat, 17 Oct 2026 04:09:11 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5977079134d7a99b4b022397c6031f527aeae3fe8147623e7611b94d7092e5da`  
		Last Modified: Sat, 17 Oct 2026 04:09:11 GMT  
		Size: 10.8 KB (10807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5242538ffdbfd86920db617ee407f5a77dd7bc203380a0925611265bfe180fd`  
		Last Modified: Sat, 17 Oct 2026 04:09:12 GMT  
		Size: 773.3 KB (773262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:1730da50c583fae7534e091a3c59c91fa24475693a7da776d0e73fb4cf523cd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3982367 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9c3b98e2f8779cd875eba80abec076f2febd0b1a832103e51f6e64b37ed11e2`

```dockerfile
```

-	Layers:
	-	`sha256:39ce77aa399d17cc69234a1bcf07c44f15ad6ad3456b9d87ddd6407bc92ccdc1`  
		Last Modified: Sat, 17 Oct 2026 04:09:11 GMT  
		Size: 3.9 MB (3948250 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:22fb83f49811b31e82a7f80a9da2ebf5a079577fd548e5dd8beb04f364b788c9`  
		Last Modified: Sat, 17 Oct 2026 04:09:11 GMT  
		Size: 34.1 KB (34117 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; s390x

```console
$ docker pull solr@sha256:77bbc88ea14aaca037584ed979be4162ec4e3f6921645518f880ea0a6b7bfcb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.0 MB (155985845 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aaae57a0d460ddaa1fef663b3016941b8c4ea3dfb23412f1de8f46b42287ecd`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Fri, 02 Oct 2026 10:22:47 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:22:47 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:22:47 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:22:49 GMT
ADD file:37d95fb30f79d123e31757f3914721d25b7e55b974a72d49a4ef18cbdd2c5044 in / 
# Fri, 02 Oct 2026 10:22:49 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:12:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 00:12:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:12:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:12:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:12:12 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Sat, 17 Oct 2026 00:14:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Sat, 17 Oct 2026 00:14:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Sat, 17 Oct 2026 00:14:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Sat, 17 Oct 2026 00:14:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 17 Oct 2026 01:56:56 GMT
ARG SOLR_VERSION=9.11.0
# Sat, 17 Oct 2026 01:56:56 GMT
ARG SOLR_DIST=-slim
# Sat, 17 Oct 2026 01:56:56 GMT
ARG SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621
# Sat, 17 Oct 2026 01:56:56 GMT
ARG SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B
# Sat, 17 Oct 2026 01:56:56 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Sat, 17 Oct 2026 01:56:56 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Sat, 17 Oct 2026 01:56:56 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Sat, 17 Oct 2026 01:56:56 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Sat, 17 Oct 2026 01:56:56 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Sat, 17 Oct 2026 01:56:56 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Sat, 17 Oct 2026 01:56:56 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Sat, 17 Oct 2026 01:56:56 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Sat, 17 Oct 2026 01:56:56 GMT
LABEL org.opencontainers.image.version=9.11.0
# Sat, 17 Oct 2026 01:56:56 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Sat, 17 Oct 2026 01:56:56 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Sat, 17 Oct 2026 01:56:57 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Sat, 17 Oct 2026 01:56:58 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Sat, 17 Oct 2026 01:56:59 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Sat, 17 Oct 2026 01:57:07 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 17 Oct 2026 01:57:07 GMT
VOLUME [/var/solr]
# Sat, 17 Oct 2026 01:57:07 GMT
EXPOSE map[8983/tcp:{}]
# Sat, 17 Oct 2026 01:57:08 GMT
WORKDIR /opt/solr
# Sat, 17 Oct 2026 01:57:08 GMT
USER 8983
# Sat, 17 Oct 2026 01:57:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 17 Oct 2026 01:57:08 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:1cc3b16ef800fa37e67e957552c6fceece7de8c1f49769006e2e5ee5704c33e0`  
		Last Modified: Fri, 02 Oct 2026 11:09:00 GMT  
		Size: 28.2 MB (28222770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77951a94b7e207ea4a105f656d28778afd22d5d4bc9a9bdb7b6c18d0c2611706`  
		Last Modified: Sat, 17 Oct 2026 00:12:46 GMT  
		Size: 16.1 MB (16115873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e51444c8b22bc423803a4945873fcd3393db3f41ae0a88b0f4b437f219a5e69`  
		Last Modified: Sat, 17 Oct 2026 00:14:54 GMT  
		Size: 44.5 MB (44514861 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b574b230e5914f46c81b35eca83f36a305ffbd4bcde56673200aae45cfc426f8`  
		Last Modified: Sat, 17 Oct 2026 00:14:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb063a1c4ad655c393209b11372cfc37cc7815936c8d5ea726d633946c6122e`  
		Last Modified: Sat, 17 Oct 2026 00:14:52 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac6192d038335fa7008ab33c6704cad6589d08d74634fb29cafc6e20e2b3c2f`  
		Last Modified: Sat, 17 Oct 2026 01:57:33 GMT  
		Size: 66.5 MB (66457230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a63d0a1bf19e894518aaf3a34940afb4200b60b60553f85f079630c09bf894df`  
		Last Modified: Sat, 17 Oct 2026 01:57:31 GMT  
		Size: 4.3 KB (4311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1d7f3d9e705bd5b0336e0d505168e1725f28bde54f1c424a2b70e0b3af4e336`  
		Last Modified: Sat, 17 Oct 2026 01:57:31 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d79dce094545689d929cd4da81defb9f5843845924e608a6df18138bf6b719`  
		Last Modified: Sat, 17 Oct 2026 01:57:31 GMT  
		Size: 10.8 KB (10810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16e52f2145d96b3b291c61b1d6ad771a958c7f6ca111ad6329399af611ddace2`  
		Last Modified: Sat, 17 Oct 2026 01:57:32 GMT  
		Size: 657.1 KB (657117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:8f659c486f4ddcc3c7753b3c8817097a3c50a21efd0fe11f3a93dc7d24ca0407
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3979870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:967a2f7d583a6f38db454c13a191c77202617fe163a91394a111d1ade5f2821e`

```dockerfile
```

-	Layers:
	-	`sha256:e6f636764adf7cdbcacd768f525f3200833ef11f0263b528e7aeb8532eda217d`  
		Last Modified: Sat, 17 Oct 2026 01:57:31 GMT  
		Size: 3.9 MB (3945799 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf8c860cced8ce84f8a410a083fe7bcfa313e1b180d4de9c5dd6b3c345cb5055`  
		Last Modified: Sat, 17 Oct 2026 01:57:31 GMT  
		Size: 34.1 KB (34071 bytes)  
		MIME: application/vnd.in-toto+json
