## `solr:9-slim`

```console
$ docker pull solr@sha256:6579850484840257df4502610cde1f3a6677b8cae4d5b62d31e4d893faf5b08f
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
$ docker pull solr@sha256:51bba5355893391d671d7551853bbb77a6c04577577e168ec4b08cc859bd11b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.0 MB (160967436 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d22c0927286037951fd4eb641a692ce8da55aa60383c44ddb704df1975cb9d29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:43:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:43:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:43:13 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:43:13 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:43:13 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:43:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5a092a0bc21de4c3d855480edd7945be9cfe157b38cdb84dac280511893bb009';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='78bd8ff1537ae562a481b173ad34176f7cb92ed2e44e2f6b229b776b6dbebcd1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='4a1705a614ee9a321777eeed02a33e92e36a85694693a7522f461c8dbbbe45cd';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='77bf9f135bc14491da6abbc7f0da1ca196e18570dfdcb7ff8cfff8822689438f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:43:16 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:43:16 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:43:16 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 17:59:43 GMT
ARG SOLR_VERSION=9.11.0
# Fri, 20 Nov 2026 17:59:43 GMT
ARG SOLR_DIST=-slim
# Fri, 20 Nov 2026 17:59:43 GMT
ARG SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621
# Fri, 20 Nov 2026 17:59:43 GMT
ARG SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B
# Fri, 20 Nov 2026 17:59:43 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 20 Nov 2026 17:59:43 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 20 Nov 2026 17:59:43 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 20 Nov 2026 17:59:43 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 20 Nov 2026 17:59:43 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 20 Nov 2026 17:59:43 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 20 Nov 2026 17:59:43 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 20 Nov 2026 17:59:43 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 20 Nov 2026 17:59:43 GMT
LABEL org.opencontainers.image.version=9.11.0
# Fri, 20 Nov 2026 17:59:43 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 20 Nov 2026 17:59:43 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 20 Nov 2026 17:59:43 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 20 Nov 2026 17:59:43 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 20 Nov 2026 17:59:43 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 20 Nov 2026 17:59:48 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 17:59:48 GMT
VOLUME [/var/solr]
# Fri, 20 Nov 2026 17:59:48 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 20 Nov 2026 17:59:48 GMT
WORKDIR /opt/solr
# Fri, 20 Nov 2026 17:59:48 GMT
USER 8983
# Fri, 20 Nov 2026 17:59:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 17:59:48 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e046509628737e4e4f482ba3193aa382c7c8222300f5a37f3a79bc093b6183de`  
		Last Modified: Fri, 20 Nov 2026 17:43:29 GMT  
		Size: 16.1 MB (16116471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f3d3c1f671ffbe0ac8f95a52d8414b6266390e468e9f9b349572c545703a787`  
		Last Modified: Fri, 20 Nov 2026 17:43:30 GMT  
		Size: 47.6 MB (47628105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33bfcf1bc7717e60b893a12f651775120e3cf8ad06809d1ac90ff176c2df7713`  
		Last Modified: Fri, 20 Nov 2026 17:43:28 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e16844efa1e5487db57465d2338ce80cbdfac3f5ab5fba9ad68cff2f127152e4`  
		Last Modified: Fri, 20 Nov 2026 17:43:28 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6871838824b742d6e2d0148078a4c3253986f4ffafd8c1f13611ef04c6cb3ca`  
		Last Modified: Fri, 20 Nov 2026 18:00:00 GMT  
		Size: 66.5 MB (66457312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f440ac8d5e4de1f61ed85beebc144d63dc514928048e92d199076f125b8ccf`  
		Last Modified: Fri, 20 Nov 2026 17:59:57 GMT  
		Size: 4.3 KB (4273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90b470280b6cfc5267d5b50995fd070922d757544d217e6b975ebdb3d42508cb`  
		Last Modified: Fri, 20 Nov 2026 17:59:57 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f126ce1c5b10e6a9b5f0bb6d9f2fd39b219bcc5f373f997c03e51b4dbd703de3`  
		Last Modified: Fri, 20 Nov 2026 17:59:57 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e49905316b1afac35f991a729b349c342c60e86d162b8916b060889c56536f1`  
		Last Modified: Fri, 20 Nov 2026 17:59:59 GMT  
		Size: 677.8 KB (677788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:d09943ae26486211d1c12169ff64f18b978b8d00a8fb51f29fcdeb2042b7df20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3978250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fae934c4aeb02b256c19ee4a1a476011088a4d39459dc8a8de61b752be62dba3`

```dockerfile
```

-	Layers:
	-	`sha256:33568d14453a6d0ee45a36a45fc4554cad3da88b7a750d1eccf597f804dd39cc`  
		Last Modified: Fri, 20 Nov 2026 17:59:58 GMT  
		Size: 3.9 MB (3944179 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9aa14902757820e15fa7e05cd2c04d6869e09d6c244b2f4c6e2f039cff22ae6c`  
		Last Modified: Fri, 20 Nov 2026 17:59:57 GMT  
		Size: 34.1 KB (34071 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:80b6cc2a3d490c7d7949adc5e25d672655467d3ee1d5a8497c6b49e1692d2064
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158262277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36ed30cfca08b4fe4b96810dd8c0a0a8c1c38cd0c54ca01cdb990b6a87e53f61`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Nov 2026 09:19:59 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:19:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:19:59 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:01 GMT
ADD file:6bce4fdebb10a8b24e53d16e55018c30492d5ee28cb2fef5f2d3c884f6604f00 in / 
# Tue, 17 Nov 2026 09:20:01 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:16:23 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 03:16:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 03:16:23 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 03:16:23 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:16:23 GMT
ENV JAVA_VERSION=jdk-17.0.21+9
# Fri, 20 Nov 2026 03:17:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='9f41bf88c7900c7097444a1bdeb84146ae692bc08842490ab098063c74bf9a8a';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_x64_linux_hotspot_17.0.21_9.tar.gz';          ;;        arm64)          ESUM='1114f09d6174f54270c3117410b5e4022b43ebc0b43b751af08b927c55ed7bb5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.21_9.tar.gz';          ;;        armhf)          ESUM='a1f61c0a9a76af31e6954f93ba329650ce16e556d0508227a50c6203ff012357';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_arm_linux_hotspot_17.0.21_9.tar.gz';          ;;        ppc64el)          ESUM='7836a98346529939fc1149a59c7159d0ea721c2028fbfade620d60e58293d65f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21_9.tar.gz';          ;;        s390x)          ESUM='c2f8f6c55b09a5bb9c26fbdc85cad41e10860a396da447e2ce7a182480e74945';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21%2B9/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 03:17:01 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 03:17:01 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 03:17:01 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 04:27:07 GMT
ARG SOLR_VERSION=9.11.0
# Fri, 20 Nov 2026 04:27:07 GMT
ARG SOLR_DIST=-slim
# Fri, 20 Nov 2026 04:27:07 GMT
ARG SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621
# Fri, 20 Nov 2026 04:27:07 GMT
ARG SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B
# Fri, 20 Nov 2026 04:27:07 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 20 Nov 2026 04:27:07 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 20 Nov 2026 04:27:07 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 20 Nov 2026 04:27:07 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 20 Nov 2026 04:27:07 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 20 Nov 2026 04:27:07 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 20 Nov 2026 04:27:07 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 20 Nov 2026 04:27:07 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 20 Nov 2026 04:27:07 GMT
LABEL org.opencontainers.image.version=9.11.0
# Fri, 20 Nov 2026 04:27:07 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 20 Nov 2026 04:27:07 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 20 Nov 2026 04:27:07 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 20 Nov 2026 04:27:07 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 20 Nov 2026 04:27:07 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 20 Nov 2026 04:27:16 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 04:27:16 GMT
VOLUME [/var/solr]
# Fri, 20 Nov 2026 04:27:16 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 20 Nov 2026 04:27:16 GMT
WORKDIR /opt/solr
# Fri, 20 Nov 2026 04:27:16 GMT
USER 8983
# Fri, 20 Nov 2026 04:27:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 04:27:16 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:f74d428f3a50d80794f319eb7946ab24cf864bf8f7b5ce874517630417932f0c`  
		Last Modified: Tue, 17 Nov 2026 10:29:10 GMT  
		Size: 28.0 MB (28001401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ef94eb3366d1bc996e03224923f408c9594b4a567d291cfaecc55658180f2a`  
		Last Modified: Fri, 20 Nov 2026 03:16:49 GMT  
		Size: 16.1 MB (16051440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a85155195857b2e8c0be7c86498c6a98e34c3e4aa208a83920244d0dcfc0d48`  
		Last Modified: Fri, 20 Nov 2026 03:17:14 GMT  
		Size: 47.1 MB (47127995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156600ed8f30d6f55fb6e350fc85eb26aa1c4e0c1b29f6a84bec8d6bb2c651c0`  
		Last Modified: Fri, 20 Nov 2026 03:17:13 GMT  
		Size: 158.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304248019ee9e03aec4f26f2e04319c1ca1567352e491c093d7af9fd0e6346cc`  
		Last Modified: Fri, 20 Nov 2026 03:17:13 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd971bbb20a1b59a381a985e4784870d180bb7cecc472711e9c4ec93b24c39d`  
		Last Modified: Fri, 20 Nov 2026 04:27:28 GMT  
		Size: 66.5 MB (66457318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db1e174b227ebf911b9833b46d58959a5bc55e702a5b1b2d18fb393de1a3dec`  
		Last Modified: Fri, 20 Nov 2026 04:27:26 GMT  
		Size: 4.3 KB (4304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b87c6f75f6a4f9653e18f39e4e60e074f15a35133a9d01ff47fd2d040f215b`  
		Last Modified: Fri, 20 Nov 2026 04:27:26 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02e1d99288caf9d5c4f9ba8f333a2150b98928e97a5cd6d27272b311486a589e`  
		Last Modified: Fri, 20 Nov 2026 04:27:26 GMT  
		Size: 10.8 KB (10805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef4d49557f27a69e98a05e736ad70b5bee0a78c2f2b6baf9f8095b1a793d35f`  
		Last Modified: Fri, 20 Nov 2026 04:27:27 GMT  
		Size: 606.1 KB (606144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:58aeebc30467189b5162c72fda293edecf4629a99fd250769d9879ce3b6d8e10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3978048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88a297d27d4def812dfd74e8e57874ca20005a36748f0bcc330e76b6d275e013`

```dockerfile
```

-	Layers:
	-	`sha256:605c4b4fe379dd9526f1c28f3e2474e35e75da8e466886b4455e595bd95aafa0`  
		Last Modified: Fri, 20 Nov 2026 04:27:26 GMT  
		Size: 3.9 MB (3943835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:708cf46b5f1b1e0b3af96364f269a2f75b3bce9903de18fb7a667be21cc2ff1a`  
		Last Modified: Fri, 20 Nov 2026 04:27:26 GMT  
		Size: 34.2 KB (34213 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:bf3bd3fb45ba65c0eb82103cfc14ae1e8bfa04489bccc2c905c5fe5987314596
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **166.9 MB (166851390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fb088634b16373f9e04e13d4ae026043f1238a97d87c784d36fb91a2d5eaeca`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:29:01 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 04:29:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 04:29:01 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 04:29:01 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:29:01 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:50:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5a092a0bc21de4c3d855480edd7945be9cfe157b38cdb84dac280511893bb009';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='78bd8ff1537ae562a481b173ad34176f7cb92ed2e44e2f6b229b776b6dbebcd1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='4a1705a614ee9a321777eeed02a33e92e36a85694693a7522f461c8dbbbe45cd';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='77bf9f135bc14491da6abbc7f0da1ca196e18570dfdcb7ff8cfff8822689438f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:50:24 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:50:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:50:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 18:39:45 GMT
ARG SOLR_VERSION=9.11.0
# Fri, 20 Nov 2026 18:39:45 GMT
ARG SOLR_DIST=-slim
# Fri, 20 Nov 2026 18:39:45 GMT
ARG SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621
# Fri, 20 Nov 2026 18:39:45 GMT
ARG SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B
# Fri, 20 Nov 2026 18:39:45 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 20 Nov 2026 18:39:45 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 20 Nov 2026 18:39:45 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 20 Nov 2026 18:39:45 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 20 Nov 2026 18:39:45 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 20 Nov 2026 18:39:45 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 20 Nov 2026 18:39:45 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 20 Nov 2026 18:39:45 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 20 Nov 2026 18:39:45 GMT
LABEL org.opencontainers.image.version=9.11.0
# Fri, 20 Nov 2026 18:39:45 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 20 Nov 2026 18:39:45 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 20 Nov 2026 18:39:46 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 20 Nov 2026 18:39:46 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 20 Nov 2026 18:39:47 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 20 Nov 2026 18:39:58 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 18:39:58 GMT
VOLUME [/var/solr]
# Fri, 20 Nov 2026 18:39:58 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 20 Nov 2026 18:39:58 GMT
WORKDIR /opt/solr
# Fri, 20 Nov 2026 18:39:58 GMT
USER 8983
# Fri, 20 Nov 2026 18:39:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 18:39:58 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1126fc5ed4522f0b1560470199a93148a42ea8d10377094ae845db65fbc26782`  
		Last Modified: Fri, 20 Nov 2026 04:29:45 GMT  
		Size: 17.6 MB (17589880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbe088d77e503f9954b569e99e07d5e4ae7cbc340e3ff27e82dca0f496c8fdc`  
		Last Modified: Fri, 20 Nov 2026 17:50:52 GMT  
		Size: 47.0 MB (46991041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83a67a1cb1e508059c46aeef6ef92a0d25b072d7c54a939c6d35f554d18d5096`  
		Last Modified: Fri, 20 Nov 2026 17:50:50 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f5d114b965e931a26cb9b2d752ea7220549fd0a5907c57f4c45877dc438b880`  
		Last Modified: Fri, 20 Nov 2026 17:50:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bec42185463a35a1f6bd70bb9d0a5130587bce08d818727f43b8f085650f860`  
		Last Modified: Fri, 20 Nov 2026 18:40:23 GMT  
		Size: 66.5 MB (66457452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb029d0f8dad5ee9cd1b0e6630866c2b4efa0972fc30428cc3af85ccf240878b`  
		Last Modified: Fri, 20 Nov 2026 18:40:22 GMT  
		Size: 4.3 KB (4274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac03b8ca5c38e718b7881891677214ccc34b4190230d170f1063b1e0aed5fd46`  
		Last Modified: Fri, 20 Nov 2026 18:40:22 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b8b748008b315489a5414c8fcf4dec97acd1118a5fa70d7d724baca34696dc`  
		Last Modified: Fri, 20 Nov 2026 18:40:21 GMT  
		Size: 10.8 KB (10808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d9cbf0e4df0884c57561eb8eb53360af55cf02073e544d75661ca020c3db60`  
		Last Modified: Fri, 20 Nov 2026 18:40:23 GMT  
		Size: 773.4 KB (773403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:742985c61219609036ee7520289abdeded54d086a40c52055a0b5192d3645bf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3981097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca433b67f038558dc7c8ebb2a605cbb6a4cb7ecc6845f330326c3af84ccb040f`

```dockerfile
```

-	Layers:
	-	`sha256:6e191796ba417dc5c8d5e22de0300e66794588f2139a640963a1790b11593527`  
		Last Modified: Fri, 20 Nov 2026 18:40:22 GMT  
		Size: 3.9 MB (3946980 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98789a9ded6e44e1dfcee42d619a8f633b8626df26a7633ed220901903886129`  
		Last Modified: Fri, 20 Nov 2026 18:40:21 GMT  
		Size: 34.1 KB (34117 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; s390x

```console
$ docker pull solr@sha256:bc3a3e7aee41982bb50dddc5810e2feb030141ed1549533a0e98bf51fab9fc4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.0 MB (156032019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f0701e53b66c601ceaaeff9dde36961b1eed1d9cbbb934139ea8a0b8973894`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 17:47:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:47:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:47:51 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 20 Nov 2026 17:47:51 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 17:47:51 GMT
ENV JAVA_VERSION=jdk-17.0.21.1+2
# Fri, 20 Nov 2026 17:47:56 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='5a092a0bc21de4c3d855480edd7945be9cfe157b38cdb84dac280511893bb009';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_x64_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        arm64)          echo "Temurin ${JAVA_VERSION} binary for ${ARCH} is not available yet; retry after it is published upstream.";          exit 1;          ;;        armhf)          ESUM='78bd8ff1537ae562a481b173ad34176f7cb92ed2e44e2f6b229b776b6dbebcd1';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_arm_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        ppc64el)          ESUM='4a1705a614ee9a321777eeed02a33e92e36a85694693a7522f461c8dbbbe45cd';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        s390x)          ESUM='77bf9f135bc14491da6abbc7f0da1ca196e18570dfdcb7ff8cfff8822689438f';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.21.1%2B2/OpenJDK17U-jre_s390x_linux_hotspot_17.0.21.1_2.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 20 Nov 2026 17:47:56 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 20 Nov 2026 17:47:57 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 20 Nov 2026 17:47:57 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 20 Nov 2026 18:12:31 GMT
ARG SOLR_VERSION=9.11.0
# Fri, 20 Nov 2026 18:12:31 GMT
ARG SOLR_DIST=-slim
# Fri, 20 Nov 2026 18:12:31 GMT
ARG SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621
# Fri, 20 Nov 2026 18:12:31 GMT
ARG SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B
# Fri, 20 Nov 2026 18:12:31 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 20 Nov 2026 18:12:31 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 20 Nov 2026 18:12:31 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 20 Nov 2026 18:12:31 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 20 Nov 2026 18:12:31 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 20 Nov 2026 18:12:31 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 20 Nov 2026 18:12:31 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 20 Nov 2026 18:12:31 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 20 Nov 2026 18:12:31 GMT
LABEL org.opencontainers.image.version=9.11.0
# Fri, 20 Nov 2026 18:12:31 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 20 Nov 2026 18:12:31 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 20 Nov 2026 18:12:32 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 20 Nov 2026 18:12:32 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 20 Nov 2026 18:12:33 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 20 Nov 2026 18:12:54 GMT
# ARGS: SOLR_VERSION=9.11.0 SOLR_DIST=-slim SOLR_SHA512=a8b51207c898a2c59fbcde70ad5ba5cf48582d4c7bf44a0e3dbfc4cbfe70483a29b9246b1842ad0253484f663e27eef11757abd6f8fd264517bd7cbed70b3621 SOLR_KEYS=515EA995ED1DD799FA1422E5CA7514D8385D790B SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 18:12:54 GMT
VOLUME [/var/solr]
# Fri, 20 Nov 2026 18:12:54 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 20 Nov 2026 18:12:58 GMT
WORKDIR /opt/solr
# Fri, 20 Nov 2026 18:12:58 GMT
USER 8983
# Fri, 20 Nov 2026 18:12:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 20 Nov 2026 18:12:58 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff5098612a3ddd877b6da21937c79233b7c8735c7a72e2dd544286060e2b7b6`  
		Last Modified: Fri, 20 Nov 2026 17:48:18 GMT  
		Size: 16.1 MB (16114751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10c5f05fecffd23f687096069843813eb80aae83582b3c32ed67e49b60f15fed`  
		Last Modified: Fri, 20 Nov 2026 17:48:18 GMT  
		Size: 44.2 MB (44246128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e8f82e98d696b928cca3ff8e47df707e767ef6472ca357f3d7d4b160e311849`  
		Last Modified: Fri, 20 Nov 2026 17:48:17 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d3e2d551ec5fbfb3c241e14c19d94cf6f613484703bb1722b21a433cf96055`  
		Last Modified: Fri, 20 Nov 2026 17:48:17 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53ee6b4a63faa6a858999e392fa81754d7615364d894656aa23f2a216defdc94`  
		Last Modified: Fri, 20 Nov 2026 18:13:32 GMT  
		Size: 66.5 MB (66457080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6febc1c3a399cee3e48d28ef70495036359d45a9f11b227e8b71d35b420ee156`  
		Last Modified: Fri, 20 Nov 2026 18:13:30 GMT  
		Size: 4.3 KB (4312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42a8554cbeb3164a29abdfedb828ab7795052180e8ba54e27ac0b0aa885ffd18`  
		Last Modified: Fri, 20 Nov 2026 18:13:30 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b16942dc4e5c63e07c67b84eb2695e05e48deadbc7901eff2a53aa2d34a0da6`  
		Last Modified: Fri, 20 Nov 2026 18:13:30 GMT  
		Size: 10.8 KB (10804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1982dbb9fd35d8d47b60a99c3af3dfd198725d128a68c210e5cad3b803f2aa0c`  
		Last Modified: Fri, 20 Nov 2026 18:13:31 GMT  
		Size: 657.1 KB (657058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:f10680e9043043c5d5088e5b370bfc069fc97f7b7ec800b679a9160fb68cef5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3978600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79449cfcbf5ae5055f76a20b58456e2da67989fa912f7fe9a16f158ce6e3f3ab`

```dockerfile
```

-	Layers:
	-	`sha256:f4d16f6932b8d7bcc18de4b788800d1c317d8f5feefce470fe52cbbdf0a3fa92`  
		Last Modified: Fri, 20 Nov 2026 18:13:30 GMT  
		Size: 3.9 MB (3944529 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:331bfe67b791fdc8a2b7da2abea68f749643745450d65eb747c05ec213ebbc0b`  
		Last Modified: Fri, 20 Nov 2026 18:13:30 GMT  
		Size: 34.1 KB (34071 bytes)  
		MIME: application/vnd.in-toto+json
