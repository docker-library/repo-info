## `solr:latest`

```console
$ docker pull solr@sha256:34985c463848cf71ae350d914eca91c6c9cc0cb3184cdb3ea74d6954dd7f54a7
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
$ docker pull solr@sha256:1e5257b777bbfe975b248491e393d3db18432c85083ccc1f288c06147a335ff4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.2 MB (468239083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf80ff9ae20511c0ad6ec88f93875760b2c07fa55ddb38663434c2d1e15171c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 17 Aug 2026 13:09:48 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:09:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:09:48 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:09:50 GMT
ADD file:cb9335ce6f27399c2b17787739d6675502767c53e0335ded2a5f0d003d996650 in / 
# Mon, 17 Aug 2026 13:09:51 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:21 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:21 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:21 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:26:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:26:33 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:26:33 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:26:33 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:55:46 GMT
ARG SOLR_VERSION=10.0.0
# Fri, 21 Aug 2026 18:55:46 GMT
ARG SOLR_DIST=
# Fri, 21 Aug 2026 18:55:46 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Fri, 21 Aug 2026 18:55:46 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 21 Aug 2026 18:55:46 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 21 Aug 2026 18:55:46 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 21 Aug 2026 18:55:46 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 21 Aug 2026 18:55:46 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 21 Aug 2026 18:55:46 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 21 Aug 2026 18:55:46 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 21 Aug 2026 18:55:46 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 21 Aug 2026 18:55:46 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 21 Aug 2026 18:55:46 GMT
LABEL org.opencontainers.image.version=10.0.0
# Fri, 21 Aug 2026 18:55:46 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 21 Aug 2026 18:55:46 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 21 Aug 2026 18:55:47 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 21 Aug 2026 18:55:47 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 21 Aug 2026 18:55:47 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 21 Aug 2026 18:55:51 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 21 Aug 2026 18:55:51 GMT
VOLUME [/var/solr]
# Fri, 21 Aug 2026 18:55:51 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 21 Aug 2026 18:55:51 GMT
WORKDIR /opt/solr
# Fri, 21 Aug 2026 18:55:51 GMT
USER 8983
# Fri, 21 Aug 2026 18:55:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:55:51 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe860d81cd49b3b4e6736f841a56605ac315b6061ca1fa0aa36201b3f470f0a8`  
		Last Modified: Fri, 21 Aug 2026 18:26:47 GMT  
		Size: 11.4 MB (11437454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f9b4977682d696b24ee33229e1cb3bee4b674ebf368026218f3ee759aad09a0`  
		Last Modified: Fri, 21 Aug 2026 18:26:48 GMT  
		Size: 63.1 MB (63075050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1acd3d9c2420115ce6b7aaf5de44855ff9a8f624aa2a0d9e142040f5158ee4a5`  
		Last Modified: Fri, 21 Aug 2026 18:26:46 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f319ac73302b1b2a22d1df673b549ba13e4bbf43d4756a3c2b395cab8dbe5515`  
		Last Modified: Fri, 21 Aug 2026 18:56:18 GMT  
		Size: 360.2 MB (360200370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e1e3d3ef467286760c3b0516289ba1080a4e7a5a1ebb5d8137489261010538`  
		Last Modified: Fri, 21 Aug 2026 18:56:11 GMT  
		Size: 1.2 KB (1160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffb7572839c99e3728523f82190038d77469c08ffd89f743481308ff40af8502`  
		Last Modified: Fri, 21 Aug 2026 18:56:11 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7a31e8427f4216e24eb0ff8d5e45a09192de35726b106e5a008dc745201b6b`  
		Last Modified: Fri, 21 Aug 2026 18:56:11 GMT  
		Size: 10.3 KB (10300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57633b9e2d36a6c7613d6fe611229f311fb0130afa0a84d557f78719ff8e5d46`  
		Last Modified: Fri, 21 Aug 2026 18:56:12 GMT  
		Size: 3.8 MB (3759206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:6e47cd842ed6606cd13e5fe4d69f12df926b962ea703a4967e95b2c396472e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3763016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f10f4270f8543290b2823f8c564411734eb39b60f3135d8c341fc4307b2bda2`

```dockerfile
```

-	Layers:
	-	`sha256:484a1cdf3e9075026bcd123a95f33cd1e8a3ec32ff8afd1059aa0c5e782cd134`  
		Last Modified: Fri, 21 Aug 2026 18:56:11 GMT  
		Size: 3.7 MB (3729386 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:90c891d23e5d5a524bfffe503ab56acd03350e3acf995d0002278c9a36658222`  
		Last Modified: Fri, 21 Aug 2026 18:56:11 GMT  
		Size: 33.6 KB (33630 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:a1e8f7318b4cdc33ad5980e34b42960426e3b1ad7011ef7dc60189cf0371b85f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.1 MB (466106246 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47a47f116dbe6af5ac0e40779aa0797226804395af55ee10bbf9126e6e6bf264`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 17 Aug 2026 13:11:31 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:11:31 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:11:31 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:11:34 GMT
ADD file:0387b3d029de8fa08641ccfaa44c6a4ad07b93035420d53b49783ea27527d153 in / 
# Mon, 17 Aug 2026 13:11:34 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:29:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:29:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:29:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:29:27 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:29:27 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:29:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:29:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:47:49 GMT
ARG SOLR_VERSION=10.0.0
# Fri, 21 Aug 2026 18:47:49 GMT
ARG SOLR_DIST=
# Fri, 21 Aug 2026 18:47:49 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Fri, 21 Aug 2026 18:47:49 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 21 Aug 2026 18:47:49 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 21 Aug 2026 18:47:49 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 21 Aug 2026 18:47:49 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 21 Aug 2026 18:47:49 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 21 Aug 2026 18:47:49 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 21 Aug 2026 18:47:49 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 21 Aug 2026 18:47:49 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 21 Aug 2026 18:47:49 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 21 Aug 2026 18:47:49 GMT
LABEL org.opencontainers.image.version=10.0.0
# Fri, 21 Aug 2026 18:47:49 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 21 Aug 2026 18:47:49 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 21 Aug 2026 18:47:49 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 21 Aug 2026 18:47:49 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 21 Aug 2026 18:47:49 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 21 Aug 2026 18:47:56 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 21 Aug 2026 18:47:56 GMT
VOLUME [/var/solr]
# Fri, 21 Aug 2026 18:47:56 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 21 Aug 2026 18:47:56 GMT
WORKDIR /opt/solr
# Fri, 21 Aug 2026 18:47:56 GMT
USER 8983
# Fri, 21 Aug 2026 18:47:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:47:56 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b4386bd70c2954b2582a2981aa1e49491827ee714eab8c29eaab2a9b353052`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 11.4 MB (11431041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb95e3836e0c5e3b34139686fd2e946b7a0af413c997a45fc2d6fd038335b0e`  
		Last Modified: Fri, 21 Aug 2026 18:29:59 GMT  
		Size: 61.9 MB (61923262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8da00c517fa718e5b9e470c462fee10e7bf750b4bb9e76a32e451b66e0864c74`  
		Last Modified: Fri, 21 Aug 2026 18:29:57 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df1cf83c4cfb36e2d2bec1c2b34a8122c370848e827a9fe864812cd5b78f300`  
		Last Modified: Fri, 21 Aug 2026 18:48:25 GMT  
		Size: 360.2 MB (360199799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65f2466ff2f2d829a58e75e8e40f14a4645ac46f58a987999279af56b192ead5`  
		Last Modified: Fri, 21 Aug 2026 18:48:18 GMT  
		Size: 1.2 KB (1157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494025d6c72d8b8f0bbf119f7a9e9c9e3f64e0e7ead981bff99afae131369131`  
		Last Modified: Fri, 21 Aug 2026 18:48:18 GMT  
		Size: 206.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d9b1ad36d8b168aa282898b4fe995a4c70d200e5471303a14f38c34b31d567d`  
		Last Modified: Fri, 21 Aug 2026 18:48:18 GMT  
		Size: 10.3 KB (10298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0f88c0e16278cf5cd11c4c8ea3d1772aa4017c8c97d27ffcc2dfe1b415a250d`  
		Last Modified: Fri, 21 Aug 2026 18:48:20 GMT  
		Size: 3.7 MB (3650720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:2238d31c71dfe217284c9841a419d3438997648bdd1a405daebde15ca02c8ff1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3763645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2b78ba8c0946cea3fd3bc5b5e1fcd2b72c05f839b0449e531f8f71ea6bb5241`

```dockerfile
```

-	Layers:
	-	`sha256:68b0d722270ed2ae3a071405fc0e7cb7ed0e8e3d8b975f74059743a5ae829ab0`  
		Last Modified: Fri, 21 Aug 2026 18:48:19 GMT  
		Size: 3.7 MB (3729852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db3783f5ab94b7a0cc486242f0ca244889f5d13fbfea34827391f452b9d3cae9`  
		Last Modified: Fri, 21 Aug 2026 18:48:18 GMT  
		Size: 33.8 KB (33793 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; ppc64le

```console
$ docker pull solr@sha256:297a23759d8990959a366e8f756c062f16d776f29af1f67b5ebf3920443900de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **473.3 MB (473309613 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:471c231cc2cb09d9e93a3839923d32d51dd4a5e3c26af68aec958ca75c0ac9a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:16 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:16 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:16 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:19 GMT
ADD file:2c1f3ca3b8968d5c5bcce4fb1290d9ca7224bbde9578f0051bf2d5493b3b6481 in / 
# Mon, 17 Aug 2026 13:37:20 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 21:21:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 21:21:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:21:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:21:07 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:21:07 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 19 Aug 2026 21:21:52 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 19 Aug 2026 21:21:53 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 19 Aug 2026 21:21:54 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 19 Aug 2026 21:21:54 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Thu, 20 Aug 2026 00:27:48 GMT
ARG SOLR_VERSION=10.0.0
# Thu, 20 Aug 2026 00:27:48 GMT
ARG SOLR_DIST=
# Thu, 20 Aug 2026 00:27:48 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Thu, 20 Aug 2026 00:27:48 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Thu, 20 Aug 2026 00:27:48 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Thu, 20 Aug 2026 00:27:48 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Thu, 20 Aug 2026 00:27:48 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Thu, 20 Aug 2026 00:27:48 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Thu, 20 Aug 2026 00:27:48 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Thu, 20 Aug 2026 00:27:48 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Thu, 20 Aug 2026 00:27:48 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Thu, 20 Aug 2026 00:27:48 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Thu, 20 Aug 2026 00:27:48 GMT
LABEL org.opencontainers.image.version=10.0.0
# Thu, 20 Aug 2026 00:27:48 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Thu, 20 Aug 2026 00:27:48 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Thu, 20 Aug 2026 00:27:48 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Thu, 20 Aug 2026 00:27:48 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Thu, 20 Aug 2026 00:27:49 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Thu, 20 Aug 2026 00:28:08 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 20 Aug 2026 00:28:08 GMT
VOLUME [/var/solr]
# Thu, 20 Aug 2026 00:28:08 GMT
EXPOSE map[8983/tcp:{}]
# Thu, 20 Aug 2026 00:28:09 GMT
WORKDIR /opt/solr
# Thu, 20 Aug 2026 00:28:09 GMT
USER 8983
# Thu, 20 Aug 2026 00:28:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 20 Aug 2026 00:28:09 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c799aab13c57e92a746f75f9dcd7290067f96f9a113cd0686f556d04a90572`  
		Last Modified: Wed, 19 Aug 2026 21:22:21 GMT  
		Size: 12.0 MB (12003201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03c2adbfe8541093481a83b274c975069a064b2249b14779bceb6d79f682e875`  
		Last Modified: Wed, 19 Aug 2026 21:22:22 GMT  
		Size: 62.4 MB (62443495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e76640e71b91552ec4123765553e33e142156b3d3aa1e95c886173477f4a5c8c`  
		Last Modified: Wed, 19 Aug 2026 21:22:20 GMT  
		Size: 2.3 KB (2283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf4d9e9557681a4e43b27f10264ff791dbfe64452ef5fd25baf1d7eefebb6b9`  
		Last Modified: Thu, 20 Aug 2026 00:29:02 GMT  
		Size: 360.3 MB (360265109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd647cd990764907578ad6e84b1f459fd140735d335f04fbb17f6234bc9fb12a`  
		Last Modified: Thu, 20 Aug 2026 00:28:54 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e6e85d0522a275f614a1b27370a852ec7bbbeba10ebb06f50e12eae4c464f7`  
		Last Modified: Thu, 20 Aug 2026 00:28:54 GMT  
		Size: 208.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a8c3dc66745db9eab9ff85b383da8d79321ea9fb3f99af1a6645949b43fd4d0`  
		Last Modified: Thu, 20 Aug 2026 00:28:54 GMT  
		Size: 10.3 KB (10303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:206948caf91b681e7681760e8e4addb4cccfdd416f09878c47f7fd085289dcb8`  
		Last Modified: Thu, 20 Aug 2026 00:28:56 GMT  
		Size: 4.3 MB (4272599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:88f83d5c586520c852ee3071e10d51a385f71eca27f6703671b16e3154c24319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3766501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ccf87346680eacb5af3f38ba0e4aef706061d01aaa53b143a07c8833e58beb6`

```dockerfile
```

-	Layers:
	-	`sha256:b1e9dfa54721fb61d49881643505b000ef804ea0a5b0fd5fb74020f4f0cade67`  
		Last Modified: Thu, 20 Aug 2026 00:28:55 GMT  
		Size: 3.7 MB (3732819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75b9b35b2bf86ce0067b707c66737d88416e21886329e6c5bf0dfd45b9c3fb15`  
		Last Modified: Thu, 20 Aug 2026 00:28:54 GMT  
		Size: 33.7 KB (33682 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; riscv64

```console
$ docker pull solr@sha256:4ea5fe289ea9c835f67f07245bbf1fa6b8ebe33ed535c02fb1633225e9e5a085
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **468.2 MB (468188914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b5c174d6d961058229c0765561a524a7935cf0a0fc9e7e87e553709e7008857`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 17 Aug 2026 14:15:49 GMT
ARG RELEASE
# Mon, 17 Aug 2026 14:15:50 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 14:15:51 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 14:17:04 GMT
ADD file:337a123e95e711614eff11fd53aa4a84d1e090961d0511f1605a70ac7c33d46a in / 
# Mon, 17 Aug 2026 14:17:10 GMT
CMD ["/bin/bash"]
# Wed, 19 Aug 2026 00:47:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 19 Aug 2026 00:47:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 00:47:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 00:47:33 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 00:47:33 GMT
ENV JAVA_VERSION=jdk-25.0.3+9
# Wed, 19 Aug 2026 00:49:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='487ad434d8b121ae3902d5ad9cb830cd8e1f75fefad6e2ba80f89d60e3db95d7';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_x64_linux_hotspot_25.0.3_9.tar.gz';          ;;        arm64)          ESUM='d12d5b19ff7f6c4a99fd4f9eecede2c96e64df7d1f41cc84f2e9c9b38408600b';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.3_9.tar.gz';          ;;        ppc64el)          ESUM='82daf66b73505d3974d831bd244acbb1123a340b7752ced449dcdca69ff3a780';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.3_9.tar.gz';          ;;        riscv64)          ESUM='8325460857162b85050622962cee64cbc441ca9baf07f93a7535fd3f9962ca33';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.3_9.tar.gz';          ;;        s390x)          ESUM='ee513969bef35f10afb7d06840d9a421138a3d30c062cde3dda8fe780dc451a2';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.3%2B9/OpenJDK25U-jre_s390x_linux_hotspot_25.0.3_9.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Wed, 19 Aug 2026 00:49:39 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Wed, 19 Aug 2026 00:49:39 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Wed, 19 Aug 2026 00:49:39 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Wed, 19 Aug 2026 06:10:43 GMT
ARG SOLR_VERSION=10.0.0
# Wed, 19 Aug 2026 06:10:43 GMT
ARG SOLR_DIST=
# Wed, 19 Aug 2026 06:10:43 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Wed, 19 Aug 2026 06:10:43 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Wed, 19 Aug 2026 06:10:43 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Wed, 19 Aug 2026 06:10:43 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Wed, 19 Aug 2026 06:10:43 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Wed, 19 Aug 2026 06:10:43 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Wed, 19 Aug 2026 06:10:43 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Wed, 19 Aug 2026 06:10:43 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Wed, 19 Aug 2026 06:10:43 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Wed, 19 Aug 2026 06:10:43 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Wed, 19 Aug 2026 06:10:43 GMT
LABEL org.opencontainers.image.version=10.0.0
# Wed, 19 Aug 2026 06:10:43 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Wed, 19 Aug 2026 06:10:43 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Wed, 19 Aug 2026 06:10:44 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Wed, 19 Aug 2026 06:10:44 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Wed, 19 Aug 2026 06:10:45 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Wed, 19 Aug 2026 06:11:33 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Wed, 19 Aug 2026 06:11:33 GMT
VOLUME [/var/solr]
# Wed, 19 Aug 2026 06:11:33 GMT
EXPOSE map[8983/tcp:{}]
# Wed, 19 Aug 2026 06:11:33 GMT
WORKDIR /opt/solr
# Wed, 19 Aug 2026 06:11:33 GMT
USER 8983
# Wed, 19 Aug 2026 06:11:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 19 Aug 2026 06:11:33 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:d85e724d9e83fe5958acde2418944fdb2b9077a9c6b5963f99e62d6feb11fb31`  
		Last Modified: Mon, 17 Aug 2026 14:27:49 GMT  
		Size: 31.0 MB (30983072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c556adb6f2f76ea09f0cbc62a3c42c8c538726308f8514cb62d39ff4a9400ecb`  
		Last Modified: Wed, 19 Aug 2026 00:52:20 GMT  
		Size: 11.5 MB (11527891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592f17b9cfbeab3c98ee4615dc61a438096b15cdedbb092bb7636d54b9c25ac9`  
		Last Modified: Wed, 19 Aug 2026 00:52:28 GMT  
		Size: 61.7 MB (61693932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041675c3d2b09b22d047f5a873ccc82f860f15653bc34ebee6baca61bcb1c6da`  
		Last Modified: Wed, 19 Aug 2026 00:52:18 GMT  
		Size: 2.3 KB (2282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9e22de98da54f3405963a6ebeaa0696f9ab3d54d86ce48c3ab188284fe5ebd7`  
		Last Modified: Wed, 19 Aug 2026 06:19:08 GMT  
		Size: 360.2 MB (360214904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bda01e7672dad056e973b66ac7db3219dd27c6dbd14425e3689042d6007c3632`  
		Last Modified: Wed, 19 Aug 2026 06:18:12 GMT  
		Size: 1.2 KB (1154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cb178277ea660a332013d8ed023d229b08b33bd4da1e0c262b1ffe46a0b7d7b`  
		Last Modified: Wed, 19 Aug 2026 06:18:12 GMT  
		Size: 207.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b907c2597eca0d0edfbdd50cec715e9af11a56246485862dee47be8a239f8dc3`  
		Last Modified: Wed, 19 Aug 2026 06:18:12 GMT  
		Size: 10.3 KB (10304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e599c43071092f9df1db0c71bc6e254a32bdb2d38dd8e991b63b0976b3932e2a`  
		Last Modified: Wed, 19 Aug 2026 06:18:15 GMT  
		Size: 3.8 MB (3755104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:1b9e5411114a44aa6dad4626db60274586985ce45eb2821522ae3dfaa0808b29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3755133 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7469df317dfb881be1d9b7952dfcc53375853d0538b17ee36bfde5714851506`

```dockerfile
```

-	Layers:
	-	`sha256:3f91cab94b90d53f9498855da95e0404f5c394a5afea65bdf98b0405b6c3f1bc`  
		Last Modified: Wed, 19 Aug 2026 06:18:13 GMT  
		Size: 3.7 MB (3721451 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20072a77d88816871774f2448d1d81b0d49cfdef372d2307260f56ea3119c47e`  
		Last Modified: Wed, 19 Aug 2026 06:18:12 GMT  
		Size: 33.7 KB (33682 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:latest` - linux; s390x

```console
$ docker pull solr@sha256:c5b077c928125f2184063196fa51daab272c826b6465dca9417faf1b039763ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **466.2 MB (466219287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95253463b9b138660a7fa9bfed16c1f7d546982f15c7a2a0be3f18dd67caebbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 17 Aug 2026 13:37:10 GMT
ARG RELEASE
# Mon, 17 Aug 2026 13:37:10 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 17 Aug 2026 13:37:10 GMT
LABEL org.opencontainers.image.version=24.04
# Mon, 17 Aug 2026 13:37:12 GMT
ADD file:4483a9a8fede37e8d587c88a49ab036598c57a1cdc8558d50175c642d747d633 in / 
# Mon, 17 Aug 2026 13:37:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:33:33 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:33:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:33:33 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:33:33 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:33:33 GMT
ENV JAVA_VERSION=jdk-25.0.4+7
# Fri, 21 Aug 2026 18:33:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='aed3915f8facc0c80733ab2448bb0df4b494a36a2c5759e9a6e1eb979720f2b3';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_x64_linux_hotspot_25.0.4_7.tar.gz';          ;;        arm64)          ESUM='1f2644427000316bc431df3389504551ed7464fe8486bf6b4f1130af9ffc8f55';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_aarch64_linux_hotspot_25.0.4_7.tar.gz';          ;;        ppc64el)          ESUM='7c4235dc156e85d4e8b7b12075d7d72265fa49b73af2d0453d118a4786176476';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_ppc64le_linux_hotspot_25.0.4_7.tar.gz';          ;;        riscv64)          ESUM='ee3e62f50e2bdd5b65f9f8937b33d862846d0245bc1be0dd8e3a99ea10fce32a';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_riscv64_linux_hotspot_25.0.4_7.tar.gz';          ;;        s390x)          ESUM='7698a64e995bf41cb2620bea225b6383e66a8b76a0b97ea04db89e300c470ed8';          BINARY_URL='https://github.com/adoptium/temurin25-binaries/releases/download/jdk-25.0.4%2B7/OpenJDK25U-jre_s390x_linux_hotspot_25.0.4_7.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     savedAptMark="$(apt-mark showmanual)";     apt-get update;     apt-get install -y --no-install-recommends wget gnupg;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     apt-mark auto '.*' > /dev/null;     apt-mark manual $savedAptMark > /dev/null;     apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false;     rm -rf /var/lib/apt/lists/*;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:33:43 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:33:43 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:33:43 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 19:04:22 GMT
ARG SOLR_VERSION=10.0.0
# Fri, 21 Aug 2026 19:04:22 GMT
ARG SOLR_DIST=
# Fri, 21 Aug 2026 19:04:22 GMT
ARG SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82
# Fri, 21 Aug 2026 19:04:22 GMT
ARG SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F
# Fri, 21 Aug 2026 19:04:22 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 21 Aug 2026 19:04:22 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 21 Aug 2026 19:04:22 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 21 Aug 2026 19:04:22 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 21 Aug 2026 19:04:22 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 21 Aug 2026 19:04:22 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 21 Aug 2026 19:04:22 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 21 Aug 2026 19:04:22 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 21 Aug 2026 19:04:22 GMT
LABEL org.opencontainers.image.version=10.0.0
# Fri, 21 Aug 2026 19:04:22 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 21 Aug 2026 19:04:22 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_HOST_BIND=0.0.0.0 SOLR_ZOOKEEPER_EMBEDDED_HOST=0.0.0.0
# Fri, 21 Aug 2026 19:04:22 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 21 Aug 2026 19:04:22 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 21 Aug 2026 19:04:22 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr; # buildkit
# Fri, 21 Aug 2026 19:04:27 GMT
# ARGS: SOLR_VERSION=10.0.0 SOLR_DIST= SOLR_SHA512=825ab4e92a839802d9f5d570600b622881ddfe4f700cab569afb7d8220590a59d11088f4e10d4dcf9395073c35d73a420cc275a9ed7b18e2f84178bfcb49ae82 SOLR_KEYS=EDF961FF03E647F9CA8A9C2C758051CCA3A13A7F SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install curl acl lsof procps wget netcat-openbsd gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 21 Aug 2026 19:04:27 GMT
VOLUME [/var/solr]
# Fri, 21 Aug 2026 19:04:27 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 21 Aug 2026 19:04:27 GMT
WORKDIR /opt/solr
# Fri, 21 Aug 2026 19:04:27 GMT
USER 8983
# Fri, 21 Aug 2026 19:04:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 19:04:27 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:febd56f9bf01d7054c014eb4509f039de23d43ebc88ca4c7662a39f6f884c1b2`  
		Last Modified: Fri, 21 Aug 2026 18:34:03 GMT  
		Size: 11.7 MB (11717138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1137918b91b46982f25053b528a0d312761eb409c75320a3dbd24a02abf0ab0`  
		Last Modified: Fri, 21 Aug 2026 18:34:04 GMT  
		Size: 60.5 MB (60527922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30291770412d2ab40020ed222505da8d61b3b598ea2e3ae93772b74c1bd574d9`  
		Last Modified: Fri, 21 Aug 2026 18:34:02 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9b65415d615c50a2f5c051932b986d54e772cb3544f39baf7452b33523e6bf`  
		Last Modified: Fri, 21 Aug 2026 19:05:01 GMT  
		Size: 360.2 MB (360222093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9541ad5ad7e755a18929b3c802d0debe3443f054e7580c079a822c39b286e706`  
		Last Modified: Fri, 21 Aug 2026 19:04:56 GMT  
		Size: 1.2 KB (1156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c58ee82118aaa18c970419b1a28929d25935a2704cb545e6b7b5897abf90dde`  
		Last Modified: Fri, 21 Aug 2026 19:04:56 GMT  
		Size: 206.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f5912761641d1cc699c7f3e9757ab38070ef2b1226e5bf4872656937d782a2`  
		Last Modified: Fri, 21 Aug 2026 19:04:55 GMT  
		Size: 10.3 KB (10297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab3610611dcc38bbb9f88cdb59297685d73a324f730c03adde8fcb1f9ef7e37`  
		Last Modified: Fri, 21 Aug 2026 19:04:57 GMT  
		Size: 3.8 MB (3802692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:latest` - unknown; unknown

```console
$ docker pull solr@sha256:43a8d1574828a0b8df37e1f8fc4c105fa8b78bb6415089051b9455471494da68
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3764597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c317d449ac13631dfc2fa1d9c5463c7dc733c3f2ae73b93fcc628401b3445754`

```dockerfile
```

-	Layers:
	-	`sha256:a6b9989f03bea03dfc5981fd6dde7c011115855ea7b15d1236ef0c29948a03b6`  
		Last Modified: Fri, 21 Aug 2026 19:04:56 GMT  
		Size: 3.7 MB (3730967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a012f7ebd92bf5e36971b409bccc5c97911d074a7fb15ed97a38d21bbbb63cc`  
		Last Modified: Fri, 21 Aug 2026 19:04:55 GMT  
		Size: 33.6 KB (33630 bytes)  
		MIME: application/vnd.in-toto+json
