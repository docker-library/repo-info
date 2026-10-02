## `solr:9-slim`

```console
$ docker pull solr@sha256:ba6beb789c758b198c42603046fb2fb67b42843d2cd4333f12b632c3b811e55a
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
$ docker pull solr@sha256:1f470539d49abf583340b7ce5d270007a5889a8b7fedce52310609fbe1bd5cd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161148038 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9825e973a96bd95c8e28a851ed4c65a27efeb9248d4d4a739024416d367c821`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:17:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:47 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:47 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:29 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:29 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:29 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 02:30:24 GMT
ARG SOLR_VERSION=9.10.1
# Fri, 02 Oct 2026 02:30:24 GMT
ARG SOLR_DIST=-slim
# Fri, 02 Oct 2026 02:30:24 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Fri, 02 Oct 2026 02:30:24 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Fri, 02 Oct 2026 02:30:24 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 02 Oct 2026 02:30:24 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 02 Oct 2026 02:30:24 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 02 Oct 2026 02:30:24 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 02 Oct 2026 02:30:24 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 02 Oct 2026 02:30:24 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 02 Oct 2026 02:30:24 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 02 Oct 2026 02:30:24 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 02 Oct 2026 02:30:24 GMT
LABEL org.opencontainers.image.version=9.10.1
# Fri, 02 Oct 2026 02:30:24 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 02:30:24 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 02 Oct 2026 02:30:24 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 02 Oct 2026 02:30:24 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 02 Oct 2026 02:30:24 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 02 Oct 2026 02:30:33 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 02 Oct 2026 02:30:33 GMT
VOLUME [/var/solr]
# Fri, 02 Oct 2026 02:30:33 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 02 Oct 2026 02:30:33 GMT
WORKDIR /opt/solr
# Fri, 02 Oct 2026 02:30:33 GMT
USER 8983
# Fri, 02 Oct 2026 02:30:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:30:33 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd29860ca713d718d516979425e8e71a07ffe790755fdc7abeffaebe713675a`  
		Last Modified: Fri, 02 Oct 2026 01:18:01 GMT  
		Size: 16.1 MB (16114107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67ea9076d8f27f24192869d10fc4d7f00e4d34ab38843ff57dcc0f25db194d0b`  
		Last Modified: Fri, 02 Oct 2026 01:18:41 GMT  
		Size: 47.5 MB (47520047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b1cfb2d9602be3325a0710a023e138a9b89fb5d0924cdf6d656c668f5785dd`  
		Last Modified: Fri, 02 Oct 2026 01:18:40 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7d72162cd618905a141975f1f651af7fe3e996363588b9ba837c3664fb4360`  
		Last Modified: Fri, 02 Oct 2026 01:18:40 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b27801c8b0fb1af062cd92765a05e3a18f696e4a4c554746299aae8effcf1aa`  
		Last Modified: Fri, 02 Oct 2026 02:30:46 GMT  
		Size: 66.1 MB (66125733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e69d9500da509bcf9ed016fbd2ae93624c6eacd39bb7677318631a44eebcd9f`  
		Last Modified: Fri, 02 Oct 2026 02:30:44 GMT  
		Size: 4.3 KB (4268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe29659669307742482e74779d2b6336b8e9f27e44ec620b160e3c0871cc962e`  
		Last Modified: Fri, 02 Oct 2026 02:30:44 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99802bcb4bcccac7654dc34ef657ac56f371b003f3dca5a2efccc704cd8b317b`  
		Last Modified: Fri, 02 Oct 2026 02:30:44 GMT  
		Size: 10.8 KB (10796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c614071a091c3385e9a8baaa3d8f70109f41b4dbc451f3db3d85eff194eef0a`  
		Last Modified: Fri, 02 Oct 2026 02:30:46 GMT  
		Size: 1.6 MB (1618591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:7680fd543879cefdad4bff113c5e04b0af402176d19c53af05bfc21ba70289a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985978 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:087269386e7b45a6d948dfa0f81e0606a62e2a0201952f08aab2715facc9cfea`

```dockerfile
```

-	Layers:
	-	`sha256:e5772bfad25168f4cc5787ddafd36d3506e73bb8eaf463afcdb3987465c998fe`  
		Last Modified: Fri, 02 Oct 2026 02:30:44 GMT  
		Size: 4.0 MB (3951893 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b93bb7988754d71d4ef9f9fe5aa94ce888fbd5c90e4b2b75cf6a214eb7acbba`  
		Last Modified: Fri, 02 Oct 2026 02:30:44 GMT  
		Size: 34.1 KB (34085 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:2f4a71de2d758e2254e186771f154954a0fde44c1921b7397fdc4745cec80326
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.4 MB (158353784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ac393ff75ee5c4a0921e506304d9dc4468a8ad2915055c3854ab9bcdc7a19b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:49 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:49 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:49 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:51 GMT
ADD file:58bfc1b17a1e2fc6a3ed29355c9baf1c70e13393e0632376cd7d67572c65ba25 in / 
# Thu, 24 Sep 2026 22:24:51 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:18:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:18:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:18:40 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:18:40 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:18:40 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:18:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:18:44 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 02:30:39 GMT
ARG SOLR_VERSION=9.10.1
# Fri, 02 Oct 2026 02:30:39 GMT
ARG SOLR_DIST=-slim
# Fri, 02 Oct 2026 02:30:39 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Fri, 02 Oct 2026 02:30:39 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Fri, 02 Oct 2026 02:30:39 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 02 Oct 2026 02:30:39 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 02 Oct 2026 02:30:39 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 02 Oct 2026 02:30:39 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 02 Oct 2026 02:30:39 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 02 Oct 2026 02:30:39 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 02 Oct 2026 02:30:39 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 02 Oct 2026 02:30:39 GMT
LABEL org.opencontainers.image.version=9.10.1
# Fri, 02 Oct 2026 02:30:39 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 02:30:39 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 02 Oct 2026 02:30:39 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 02 Oct 2026 02:30:39 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 02 Oct 2026 02:30:47 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 02 Oct 2026 02:30:47 GMT
VOLUME [/var/solr]
# Fri, 02 Oct 2026 02:30:47 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 02 Oct 2026 02:30:47 GMT
WORKDIR /opt/solr
# Fri, 02 Oct 2026 02:30:47 GMT
USER 8983
# Fri, 02 Oct 2026 02:30:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:30:47 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:2ea2e315627a543238a7a365eba783401b8379861d62da1bf8d1506f5b14f136`  
		Last Modified: Thu, 24 Sep 2026 23:36:11 GMT  
		Size: 27.7 MB (27684136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4f07e0ac95219d9caeb9d6fc5bc01e5f6803579fc458127af6bf82d9ddd344`  
		Last Modified: Fri, 02 Oct 2026 01:18:57 GMT  
		Size: 16.0 MB (16048135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3029b780596f1c6453b4ebd1dd84188d676d3ef1fa1cf33d1ae7b8f59cabb8b4`  
		Last Modified: Fri, 02 Oct 2026 01:18:58 GMT  
		Size: 47.0 MB (47002501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa7e40eaf80b6e24d1ab570cd0df8cfe45ee0a9e364cf18fce1ab6fae4cce458`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db2976b8fe876cab6c5b23b7b6a2a4f973c5fa4e3c9064aa9374f6c4606f0e1`  
		Last Modified: Fri, 02 Oct 2026 01:18:56 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d892817171adb2179e739680874292d3db3f9b6a5e9960baf3438c1ab63bd375`  
		Last Modified: Fri, 02 Oct 2026 02:31:00 GMT  
		Size: 66.1 MB (66125762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df8e14e366b49caabe3482152dd06bd7bf48adec1a2d04a2f081c9f214c1814`  
		Last Modified: Fri, 02 Oct 2026 02:30:58 GMT  
		Size: 4.3 KB (4305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1e44377f256873d5ef0f35b4ba774bd4baf8442697c45262aa0137875a2986`  
		Last Modified: Fri, 02 Oct 2026 02:30:58 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210691be2f558c705dd9181b071be5a425610c8eab68fc8ddfd0dc0b044fba93`  
		Last Modified: Fri, 02 Oct 2026 02:30:58 GMT  
		Size: 10.8 KB (10802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc0dd221615e610133695deb5c348a666c01cd326bb4fca544f44e47a2151b2`  
		Last Modified: Fri, 02 Oct 2026 02:30:59 GMT  
		Size: 1.5 MB (1475274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:25001c569919587158445acb6503fded5fbecb3f3009f208fe5c4bb03f80b154
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:497cb18075d0581043c8065f555e14fa27761ae5ce84311fdf5fa561ba352bfa`

```dockerfile
```

-	Layers:
	-	`sha256:993eb8efb3d7a809c1a37ec229a3af084b6ca15a11772e2a86187f0d0689144b`  
		Last Modified: Fri, 02 Oct 2026 02:30:58 GMT  
		Size: 4.0 MB (3951557 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:432f9dc504ba3d469cb29fa5d9b8ad5f737e0a69d58df31130f8a5c4782407d2`  
		Last Modified: Fri, 02 Oct 2026 02:30:58 GMT  
		Size: 34.2 KB (34238 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:462ede82c2e9c9b91f8391fe37f635e743d8b08fc46fdc7b3ca052241fa9d3f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.5 MB (167487834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d45b0c388e390c6f946e14cf560b4fa54c477ffab1eb58e71dceb5adfbc46a0b`
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
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 25 Sep 2026 22:51:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 25 Sep 2026 22:51:57 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 25 Sep 2026 22:51:59 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 25 Sep 2026 22:51:59 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Sat, 26 Sep 2026 02:49:47 GMT
ARG SOLR_VERSION=9.10.1
# Sat, 26 Sep 2026 02:49:47 GMT
ARG SOLR_DIST=-slim
# Sat, 26 Sep 2026 02:49:47 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Sat, 26 Sep 2026 02:49:47 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Sat, 26 Sep 2026 02:49:47 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Sat, 26 Sep 2026 02:49:47 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Sat, 26 Sep 2026 02:49:47 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Sat, 26 Sep 2026 02:49:47 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Sat, 26 Sep 2026 02:49:47 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Sat, 26 Sep 2026 02:49:47 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Sat, 26 Sep 2026 02:49:47 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Sat, 26 Sep 2026 02:49:47 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Sat, 26 Sep 2026 02:49:47 GMT
LABEL org.opencontainers.image.version=9.10.1
# Sat, 26 Sep 2026 02:49:47 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Sat, 26 Sep 2026 02:49:47 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Sat, 26 Sep 2026 02:49:47 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Sat, 26 Sep 2026 02:49:48 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Sat, 26 Sep 2026 02:49:49 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Sat, 26 Sep 2026 02:49:57 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Sat, 26 Sep 2026 02:49:57 GMT
VOLUME [/var/solr]
# Sat, 26 Sep 2026 02:49:57 GMT
EXPOSE map[8983/tcp:{}]
# Sat, 26 Sep 2026 02:49:59 GMT
WORKDIR /opt/solr
# Sat, 26 Sep 2026 02:49:59 GMT
USER 8983
# Sat, 26 Sep 2026 02:49:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 26 Sep 2026 02:49:59 GMT
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
	-	`sha256:9b1865e6b81739f35e12a219971c988a0edc83cbdb8658fa97a003c4465c2786`  
		Last Modified: Fri, 25 Sep 2026 22:52:43 GMT  
		Size: 47.4 MB (47427926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59726cc787b1de90e35cfd81fb54cea83a495153470bf945690253ba582920b7`  
		Last Modified: Fri, 25 Sep 2026 22:52:42 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec5a3fc578e7ca1956eddd1785f4fabfaac5448183c82f9637bc1723bf3b019`  
		Last Modified: Fri, 25 Sep 2026 22:52:42 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fcf18bf5879f49684ccab033be920b4f792ef946f7da201167132804c1376b8`  
		Last Modified: Sat, 26 Sep 2026 02:50:29 GMT  
		Size: 66.1 MB (66125847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52bc804f10ed1674e6a687a2d0fa33faa7235195d1d1c2d5c52a9c14eb0aacc`  
		Last Modified: Sat, 26 Sep 2026 02:50:26 GMT  
		Size: 4.3 KB (4273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6efa9adf300891ddaf9ff2905ecf0dd2ef573eedf150e441b7e9a803fcac30ba`  
		Last Modified: Sat, 26 Sep 2026 02:50:26 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85ccff348f9566e5af401cf13edf6a875f36131389713bc7e4c57951eab45ab8`  
		Last Modified: Sat, 26 Sep 2026 02:50:26 GMT  
		Size: 10.8 KB (10808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1a14bf8943255de5bbe41e75c2d58e869fff08e384793fe40ad87023c6a12fb`  
		Last Modified: Sat, 26 Sep 2026 02:50:28 GMT  
		Size: 1.6 MB (1631146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:c1a00293d9b15204033ba7ae550e69f5d7f1147626a6ea3a0bf811bf81744dad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3989747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce1009f1ee78ac686e965b39869b5c0f2364eec2d28295ce194d3eb4bde6406f`

```dockerfile
```

-	Layers:
	-	`sha256:2f97defd109b08118fd2790d007d95f2813314a8bb0d32d725f6659fff40faa4`  
		Last Modified: Sat, 26 Sep 2026 02:50:26 GMT  
		Size: 4.0 MB (3955615 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e37165f9dfacfa6eaf329434f2ac48fea935bebf5f8cf10908eab7d1cb18aca`  
		Last Modified: Sat, 26 Sep 2026 02:50:26 GMT  
		Size: 34.1 KB (34132 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; s390x

```console
$ docker pull solr@sha256:20301c7f498f0861a96bbd718982ba290c693d4648672d355032d699043c214a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.6 MB (156555780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f03398b29cd9d85b47597e8773d7b3ca20472f078a11fd3aad3a1615598d088`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:17:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 01:17:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 01:17:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 02 Oct 2026 01:17:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:17:07 GMT
ENV JAVA_VERSION=jdk-17.0.20.1+1
# Fri, 02 Oct 2026 01:23:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='0b2b640e3046b64c8ec504de0ab9d91bb5610182bda21fad454681ce54d45a62';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_x64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        arm64)          ESUM='b8efcd5acc9109fe8d35bed132499643048a257b4f6042906ece37d03c839d77';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        armhf)          ESUM='f31a2a481a358c67f9a035212e9514ff58b1166f0811635cb127829af1ee40ec';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_arm_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        ppc64el)          ESUM='a84ba93f536d2773a8f086ecf39e6fb56c1690ffbea2ead7b108fe520bf51bf6';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        s390x)          ESUM='162ca8775d96b8c9d71e672fb498ddc61bd2cd62c8ce3f7d05e2e228ca53f2f4';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20.1%2B1/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20.1_1.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 02 Oct 2026 01:23:55 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 02 Oct 2026 01:23:56 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 02 Oct 2026 01:23:56 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 02 Oct 2026 02:32:06 GMT
ARG SOLR_VERSION=9.10.1
# Fri, 02 Oct 2026 02:32:06 GMT
ARG SOLR_DIST=-slim
# Fri, 02 Oct 2026 02:32:06 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Fri, 02 Oct 2026 02:32:06 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Fri, 02 Oct 2026 02:32:06 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 02 Oct 2026 02:32:06 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 02 Oct 2026 02:32:06 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 02 Oct 2026 02:32:06 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 02 Oct 2026 02:32:06 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 02 Oct 2026 02:32:06 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 02 Oct 2026 02:32:06 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 02 Oct 2026 02:32:06 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 02 Oct 2026 02:32:06 GMT
LABEL org.opencontainers.image.version=9.10.1
# Fri, 02 Oct 2026 02:32:06 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 02 Oct 2026 02:32:06 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 02 Oct 2026 02:32:06 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 02 Oct 2026 02:32:06 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 02 Oct 2026 02:32:06 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 02 Oct 2026 02:32:09 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 02 Oct 2026 02:32:09 GMT
VOLUME [/var/solr]
# Fri, 02 Oct 2026 02:32:09 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 02 Oct 2026 02:32:09 GMT
WORKDIR /opt/solr
# Fri, 02 Oct 2026 02:32:09 GMT
USER 8983
# Fri, 02 Oct 2026 02:32:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 02 Oct 2026 02:32:09 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b425b310d4cc599e020eb9bd22817101c9306572f90f7d708f54a01bed2aac85`  
		Last Modified: Fri, 02 Oct 2026 01:18:38 GMT  
		Size: 16.1 MB (16114331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc431b09a917bef0c1fb07290ad3c65e62a70b8ffaf2298df03e73b410a847d`  
		Last Modified: Fri, 02 Oct 2026 01:25:00 GMT  
		Size: 44.5 MB (44515023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6ef57e9d0813d2f754ec4cf4ffeeb63b83f11690546639096b944a61673f78`  
		Last Modified: Fri, 02 Oct 2026 01:24:55 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459de4a5a097f25e7f4a78961b32e29aec514ef4f07d68c1749baa651e8619e4`  
		Last Modified: Fri, 02 Oct 2026 01:24:56 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4716d995aa89e1845e499e6e0c668ec7503125d0c0d77e219609de89732bae`  
		Last Modified: Fri, 02 Oct 2026 02:32:26 GMT  
		Size: 66.1 MB (66126199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4e0f3b878d931423f0c68605d47a21d83db2e437245a301c9aa442995b3cb30`  
		Last Modified: Fri, 02 Oct 2026 02:32:25 GMT  
		Size: 4.3 KB (4302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5decba1d3ffd84de2e1b87c132b15ecdaadd4df4f12e5e9c5ade606b706078fd`  
		Last Modified: Fri, 02 Oct 2026 02:32:25 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488a526d11e2fb61b3a17b4082e37ad33deb79e1367365cf8403c5bbb0c2b828`  
		Last Modified: Fri, 02 Oct 2026 02:32:25 GMT  
		Size: 10.8 KB (10804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1174b22835048e92f810065cdb9bef79955d44c178ce0ae9c662498cf588b04a`  
		Last Modified: Fri, 02 Oct 2026 02:32:26 GMT  
		Size: 1.6 MB (1560185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:7ea077d3172b40379ec41393043a359b215bfb4e894d2ae4b23883a3150e27d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3987575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a36438d7970c503e5f01c771bcaedc36f2dc4bf3d46c633e8ab3d4b93caa566`

```dockerfile
```

-	Layers:
	-	`sha256:253b125bab130e583cabd31081be707a05fcf8dfdaa4e829c86348244495dfb9`  
		Last Modified: Fri, 02 Oct 2026 02:32:25 GMT  
		Size: 4.0 MB (3953489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b5ae1ad94f54b57ea0178468effebef4d3ff0561b1a03adb34657d24321c684`  
		Last Modified: Fri, 02 Oct 2026 02:32:25 GMT  
		Size: 34.1 KB (34086 bytes)  
		MIME: application/vnd.in-toto+json
