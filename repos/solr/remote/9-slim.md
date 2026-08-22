## `solr:9-slim`

```console
$ docker pull solr@sha256:389b4a54b6a0b37a028a3f157e4d3b7031cf76def1b14bcaa225ea1e27f79ffb
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
$ docker pull solr@sha256:db416bf9657d7980e85f91210dd939a4011d6d73fd983bfabd83e7469dc9a928
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **161.1 MB (161127538 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a26581e6044da6dec0c5671fd72c17db28731a518a889e548264292f4107458`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:24:38 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:24:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:24:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:24:38 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:24:38 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:24:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:24:42 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:55:35 GMT
ARG SOLR_VERSION=9.10.1
# Fri, 21 Aug 2026 18:55:35 GMT
ARG SOLR_DIST=-slim
# Fri, 21 Aug 2026 18:55:35 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Fri, 21 Aug 2026 18:55:35 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Fri, 21 Aug 2026 18:55:35 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 21 Aug 2026 18:55:35 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 21 Aug 2026 18:55:35 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 21 Aug 2026 18:55:35 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 21 Aug 2026 18:55:35 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 21 Aug 2026 18:55:35 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 21 Aug 2026 18:55:35 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 21 Aug 2026 18:55:35 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 21 Aug 2026 18:55:35 GMT
LABEL org.opencontainers.image.version=9.10.1
# Fri, 21 Aug 2026 18:55:35 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 21 Aug 2026 18:55:35 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 21 Aug 2026 18:55:36 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 21 Aug 2026 18:55:36 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 21 Aug 2026 18:55:36 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 21 Aug 2026 18:55:41 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 21 Aug 2026 18:55:41 GMT
VOLUME [/var/solr]
# Fri, 21 Aug 2026 18:55:41 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 21 Aug 2026 18:55:41 GMT
WORKDIR /opt/solr
# Fri, 21 Aug 2026 18:55:41 GMT
USER 8983
# Fri, 21 Aug 2026 18:55:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:55:41 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f847b31ae2daf1471a8f75240203f1bf24f57ab0bf8cfed6187213174743e94`  
		Last Modified: Fri, 21 Aug 2026 18:24:53 GMT  
		Size: 16.1 MB (16109380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d9ee12ab6742d71ef64df655d982e80d4ddc87c2871fbf34ff9e53c21a23fac`  
		Last Modified: Fri, 21 Aug 2026 18:24:54 GMT  
		Size: 47.5 MB (47519643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3501e25b1ad494f6f0f6b18f3a081d2a00f9a2589203ab54664462d557901698`  
		Last Modified: Fri, 21 Aug 2026 18:24:52 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bda6782c1cba0d2926bce23635c830ba8cd3704d03e04589be4323b1a5e6107`  
		Last Modified: Fri, 21 Aug 2026 18:24:50 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d0028e104bef534091872893ff3d51c69c8f52d5c3d5f5e7cc9f710c179afa4`  
		Last Modified: Fri, 21 Aug 2026 18:55:53 GMT  
		Size: 66.1 MB (66125425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7ff4e91fcf1aedc516041441b96dba12996246466c6116dd549217cdf1cb10`  
		Last Modified: Fri, 21 Aug 2026 18:55:51 GMT  
		Size: 4.3 KB (4273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffac440d85522ff86f07442ee7a90c0a9ffc0d88b32ebcfa633a1d7e08be216b`  
		Last Modified: Fri, 21 Aug 2026 18:55:51 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:542e84a3c1d7466f9fbfb21fe1db511bf27a4e44d7f526a82245b0d8ae0bbb87`  
		Last Modified: Fri, 21 Aug 2026 18:55:51 GMT  
		Size: 10.8 KB (10801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55ffdec0f32ef5115602cadb78f6a5759143addb59480f4a58f05437cdde1274`  
		Last Modified: Fri, 21 Aug 2026 18:55:52 GMT  
		Size: 1.6 MB (1618204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:bec3e26358b3057e9db845b481754854af5ed0db8395e60b51a4fb9eae70a5a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3983984 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44da51234fcefd1241ee391a1458c37597b839b140c4ff5e6849ed2c2edb684f`

```dockerfile
```

-	Layers:
	-	`sha256:1d0b5303375dec356e157d3105abc3598eaf718a8ea706bb5c401d7435811cca`  
		Last Modified: Fri, 21 Aug 2026 18:55:51 GMT  
		Size: 3.9 MB (3949908 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1bce49d3a4b05bb567f1f3b27f6480f3ebb0036d2e0f6fc6839326e2b822797`  
		Last Modified: Fri, 21 Aug 2026 18:55:51 GMT  
		Size: 34.1 KB (34076 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; arm64 variant v8

```console
$ docker pull solr@sha256:3f8d5754b25ec751acdf613a2e201913f08bf6424d4c09a306efb65b338f3c83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **158.3 MB (158280542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88f5a840155f59740af636a211b9b3f6d8071ab6aa01f8198256090b52c9f6cf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:35 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:35 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:37 GMT
ADD file:c4ec32d39509d0c1acf2ddbb89cdc1fb3ceeae66ef80238f2ba7df53758fb44a in / 
# Mon, 10 Aug 2026 17:38:38 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:27:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:27:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:27:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:27:20 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:27:20 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:27:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:27:23 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:27:24 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:27:24 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:48:17 GMT
ARG SOLR_VERSION=9.10.1
# Fri, 21 Aug 2026 18:48:17 GMT
ARG SOLR_DIST=-slim
# Fri, 21 Aug 2026 18:48:17 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Fri, 21 Aug 2026 18:48:17 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Fri, 21 Aug 2026 18:48:17 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 21 Aug 2026 18:48:17 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 21 Aug 2026 18:48:17 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 21 Aug 2026 18:48:17 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 21 Aug 2026 18:48:17 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 21 Aug 2026 18:48:17 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 21 Aug 2026 18:48:17 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 21 Aug 2026 18:48:17 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 21 Aug 2026 18:48:17 GMT
LABEL org.opencontainers.image.version=9.10.1
# Fri, 21 Aug 2026 18:48:17 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 21 Aug 2026 18:48:17 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 21 Aug 2026 18:48:17 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 21 Aug 2026 18:48:17 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 21 Aug 2026 18:48:17 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 21 Aug 2026 18:48:23 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 21 Aug 2026 18:48:23 GMT
VOLUME [/var/solr]
# Fri, 21 Aug 2026 18:48:23 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 21 Aug 2026 18:48:23 GMT
WORKDIR /opt/solr
# Fri, 21 Aug 2026 18:48:23 GMT
USER 8983
# Fri, 21 Aug 2026 18:48:23 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:48:23 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:231032373bb3b10375f5940876c5c9a4a630f4e007e3aee895f8e1687b00295e`  
		Last Modified: Mon, 10 Aug 2026 20:08:48 GMT  
		Size: 27.6 MB (27620453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d270651baf2b553fdae46dce86c1f24094f5c918f29bab8f4dabbb179cfb45`  
		Last Modified: Fri, 21 Aug 2026 18:27:37 GMT  
		Size: 16.0 MB (16039341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e817ba1e32677a16a6971c59bb9374b583fffb2255a0aac78488867e795098bb`  
		Last Modified: Fri, 21 Aug 2026 18:27:38 GMT  
		Size: 47.0 MB (47002275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9315335689436874de3bf6af628f9cebb2cb16304c656840092ff6576ad0dee0`  
		Last Modified: Fri, 21 Aug 2026 18:27:36 GMT  
		Size: 156.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f344795113c28668e59776c1edc4227dd1278aee1185231a067acb9f1b2dbb7`  
		Last Modified: Fri, 21 Aug 2026 18:27:23 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a0a2da1b71c5900da1125a82a02541f4dddd5feefa65cc1c74fe689307110a`  
		Last Modified: Fri, 21 Aug 2026 18:48:36 GMT  
		Size: 66.1 MB (66125467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9016cea5222b8b56cadc05457dba56683c65005ebd71272a683aafdbe1de59d`  
		Last Modified: Fri, 21 Aug 2026 18:48:34 GMT  
		Size: 4.3 KB (4307 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0295bc86646e07e26111aa88423e05e2154aa3f171b17e13583f6290007e669`  
		Last Modified: Fri, 21 Aug 2026 18:48:34 GMT  
		Size: 213.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24ba5894ba2d659cdae54be1e95a088c1acb3c199c0a87a205d7c12b99b2668`  
		Last Modified: Fri, 21 Aug 2026 18:48:34 GMT  
		Size: 10.8 KB (10802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2985dd6da20fa8215f460364a55144c466daa6b4fe1b268cc91ef0e53f5b6b9c`  
		Last Modified: Fri, 21 Aug 2026 18:48:35 GMT  
		Size: 1.5 MB (1475032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:0f69fab643001c843f3327ef359cdd2665f80748dab72ef9fe61a8f4cb60693f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3983800 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301ee60a16e010362ee8516ff5b1c6ae811afc71287fceebcffb76aedcf877ae`

```dockerfile
```

-	Layers:
	-	`sha256:4fcd36846581145d506be5b10690660319169348666529afe76c4e767880588a`  
		Last Modified: Fri, 21 Aug 2026 18:48:34 GMT  
		Size: 3.9 MB (3949572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:209b5ad4bd39e772b70fc558f6ae9a524ce0391722839213c95913ce086d2a0a`  
		Last Modified: Fri, 21 Aug 2026 18:48:34 GMT  
		Size: 34.2 KB (34228 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; ppc64le

```console
$ docker pull solr@sha256:6339010f863a25be2013a0192464c354cc3d5a769eb87e63d5382fcf63c898ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.4 MB (167424736 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04aa5466669c8b22192806a411db13f2dbfde37d9c16813accaaaa31a5f3848a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 20:25:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 20:25:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 20:25:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 20:25:12 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 20:25:12 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 20:37:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 20:37:21 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 20:37:22 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 20:37:22 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 22:26:17 GMT
ARG SOLR_VERSION=9.10.1
# Fri, 21 Aug 2026 22:26:17 GMT
ARG SOLR_DIST=-slim
# Fri, 21 Aug 2026 22:26:17 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Fri, 21 Aug 2026 22:26:17 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Fri, 21 Aug 2026 22:26:17 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 21 Aug 2026 22:26:17 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 21 Aug 2026 22:26:17 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 21 Aug 2026 22:26:17 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 21 Aug 2026 22:26:17 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 21 Aug 2026 22:26:17 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 21 Aug 2026 22:26:17 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 21 Aug 2026 22:26:17 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 21 Aug 2026 22:26:17 GMT
LABEL org.opencontainers.image.version=9.10.1
# Fri, 21 Aug 2026 22:26:17 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 21 Aug 2026 22:26:17 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 21 Aug 2026 22:26:18 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 21 Aug 2026 22:26:18 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 21 Aug 2026 22:26:18 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 21 Aug 2026 22:26:33 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 21 Aug 2026 22:26:33 GMT
VOLUME [/var/solr]
# Fri, 21 Aug 2026 22:26:33 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 21 Aug 2026 22:26:33 GMT
WORKDIR /opt/solr
# Fri, 21 Aug 2026 22:26:33 GMT
USER 8983
# Fri, 21 Aug 2026 22:26:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 22:26:33 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4a7a0a0ff7d900bf098958aff1c055b4268f0e1ddbd0b6b097b05677ba2c3b8`  
		Last Modified: Fri, 21 Aug 2026 20:25:52 GMT  
		Size: 17.6 MB (17582935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ff2d081756b57c879dd13f7a5980b08bfb5ed7213592b974ca702629465ccc5`  
		Last Modified: Fri, 21 Aug 2026 20:37:47 GMT  
		Size: 47.4 MB (47428261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d7dcf21b18cbafffdfd3ef60c991df74f4a92c62fe307130e4b012e5d11cbc6`  
		Last Modified: Fri, 21 Aug 2026 20:37:46 GMT  
		Size: 161.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee97bd540e89d7d02844915de2b22373aa29ac436826cefe7ed816946340ff7`  
		Last Modified: Fri, 21 Aug 2026 20:37:46 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2fcaa8b77766d27290b11b4f5bfa3b690aee5a191c347fb78d34a41b782ef6b`  
		Last Modified: Fri, 21 Aug 2026 22:26:58 GMT  
		Size: 66.1 MB (66126052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae8efc2517184e7b0d0a7c95e917e9820d36ffca5d2597ea171a760a713264c`  
		Last Modified: Fri, 21 Aug 2026 22:26:56 GMT  
		Size: 4.3 KB (4273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:775bdc5dcc6ddde2d5c2fa9ddba21bea7db7025f87e082f3115a86aa37aa14dd`  
		Last Modified: Fri, 21 Aug 2026 22:26:56 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949552f77d5c6eb497f57e1a14eda319592fc0c8580a41d784d73767e945fd81`  
		Last Modified: Fri, 21 Aug 2026 22:26:56 GMT  
		Size: 10.8 KB (10800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b010f1582e9fb5f1e76b37f0aeb9fa7bccf895a89ccf83d299b5725de77f079`  
		Last Modified: Fri, 21 Aug 2026 22:26:58 GMT  
		Size: 1.6 MB (1631398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:64e8e13e38fe5be5ff40d08147027a69a0279d43bfa6ff49477f5ede69c9b83a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3988077 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b284a552cff142b1382148891c22a2a4e7b3359f759224985f01d99164f5f6a7`

```dockerfile
```

-	Layers:
	-	`sha256:7fce3bdb36d7451ae70f5afb71772d96b68c2b938a59ea8f48c2e358122f75d8`  
		Last Modified: Fri, 21 Aug 2026 22:26:57 GMT  
		Size: 4.0 MB (3953955 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d1bcb214ca6b78680beff835b3094e4dcc37a5c301b695979d8938da24d2f9a`  
		Last Modified: Fri, 21 Aug 2026 22:26:56 GMT  
		Size: 34.1 KB (34122 bytes)  
		MIME: application/vnd.in-toto+json

### `solr:9-slim` - linux; s390x

```console
$ docker pull solr@sha256:d83d49a2c229397ebdb83d6660df1bce8058857d4bf76024c999655de0e00e75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **156.5 MB (156531044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a587b54214c19c2261d96f44a9c522e8a5f0f93ca8518fa0d21ebbda8582c47e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["solr-foreground"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Fri, 21 Aug 2026 18:26:17 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 18:26:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 18:26:17 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Fri, 21 Aug 2026 18:26:17 GMT
RUN set -eux;     apt-get update;     DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends         curl         wget         gnupg         fontconfig         ca-certificates p11-kit         tzdata         locales     ;     echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen;     locale-gen en_US.UTF-8;     rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 21 Aug 2026 18:26:17 GMT
ENV JAVA_VERSION=jdk-17.0.20+8
# Fri, 21 Aug 2026 18:29:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64)          ESUM='ef491a51a46ef90cc47fbc4abb219fde32483ff91be5ec66ddc896df43524b27';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_x64_linux_hotspot_17.0.20_8.tar.gz';          ;;        arm64)          ESUM='9d14a95e07c44bc48666625162baf40db9da4dcb192bfc3e43047790693061a2';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_aarch64_linux_hotspot_17.0.20_8.tar.gz';          ;;        armhf)          ESUM='b3b1c5aa21111d9000a855008b0f08ca3f7cdd4d9ba99e2b9f0750eb82e261e5';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_arm_linux_hotspot_17.0.20_8.tar.gz';          ;;        ppc64el)          ESUM='cb3d0280a1be22db89ec81058471a8c694ea35b33d4bfc23d52c55f6be2a34f7';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_ppc64le_linux_hotspot_17.0.20_8.tar.gz';          ;;        s390x)          ESUM='6effd0a45b0ea7ee9fccc861e7bd4dcb92a6096e7cea3ed22484231c1be82736';          BINARY_URL='https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.20%2B8/OpenJDK17U-jre_s390x_linux_hotspot_17.0.20_8.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     wget --progress=dot:giga -O /tmp/openjdk.tar.gz ${BINARY_URL};     wget --progress=dot:giga -O /tmp/openjdk.tar.gz.sig ${BINARY_URL}.sig;     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys 3B04D753C9050D9A5D343F39843C48A565F8F04B;     gpg --batch --verify /tmp/openjdk.tar.gz.sig /tmp/openjdk.tar.gz;     rm -rf "${GNUPGHOME}" /tmp/openjdk.tar.gz.sig;     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p "$JAVA_HOME";     tar --extract         --file /tmp/openjdk.tar.gz         --directory "$JAVA_HOME"         --strip-components 1         --no-same-owner     ;     rm -f /tmp/openjdk.tar.gz;     find "$JAVA_HOME/lib" -name '*.so' -exec dirname '{}' ';' | sort -u > /etc/ld.so.conf.d/docker-openjdk.conf;     ldconfig;     java -Xshare:dump; # buildkit
# Fri, 21 Aug 2026 18:29:09 GMT
RUN set -eux;     echo "Verifying install ...";     echo "java --version"; java --version;     echo "Complete." # buildkit
# Fri, 21 Aug 2026 18:29:09 GMT
COPY --chmod=755 entrypoint.sh /__cacert_entrypoint.sh # buildkit
# Fri, 21 Aug 2026 18:29:09 GMT
ENTRYPOINT ["/__cacert_entrypoint.sh"]
# Fri, 21 Aug 2026 18:46:54 GMT
ARG SOLR_VERSION=9.10.1
# Fri, 21 Aug 2026 18:46:54 GMT
ARG SOLR_DIST=-slim
# Fri, 21 Aug 2026 18:46:54 GMT
ARG SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1
# Fri, 21 Aug 2026 18:46:54 GMT
ARG SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455
# Fri, 21 Aug 2026 18:46:54 GMT
ARG SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
# Fri, 21 Aug 2026 18:46:54 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   apt-get update;   apt-get -y --no-install-recommends install wget gpg gnupg dirmngr;   rm -rf /var/lib/apt/lists/*;   export SOLR_BINARY="solr-$SOLR_VERSION$SOLR_DIST.tgz";   MAX_REDIRECTS=3;   case "${SOLR_DOWNLOAD_SERVER}" in     (*"apache.org"*);;     (*)       MAX_REDIRECTS=4 &&       SKIP_GPG_CHECK=true;;   esac;   export DOWNLOAD_URL="$SOLR_DOWNLOAD_SERVER/$SOLR_VERSION/$SOLR_BINARY";   echo "downloading $DOWNLOAD_URL";   if ! wget -t 10 --max-redirect $MAX_REDIRECTS --retry-connrefused -nv "$DOWNLOAD_URL" -O "/opt/$SOLR_BINARY"; then rm -f "/opt/$SOLR_BINARY"; fi;   if [ ! -f "/opt/$SOLR_BINARY" ]; then echo "failed download attempt for $SOLR_BINARY"; exit 1; fi;   echo "$SOLR_SHA512 */opt/$SOLR_BINARY" | sha512sum -c -;   if [ -z "$SKIP_GPG_CHECK" ]; then     export GNUPGHOME="/tmp/gnupg_home";     mkdir -p "$GNUPGHOME";     chmod 700 "$GNUPGHOME";     echo "disable-ipv6" >> "$GNUPGHOME/dirmngr.conf";     if [ -n "$SOLR_KEYS" ]; then       wget -nv "https://downloads.apache.org/solr/KEYS" -O- |         gpg --batch --import --key-origin 'url,https://downloads.apache.org/solr/KEYS';       release_keys="$(gpg --batch --export -a ${SOLR_KEYS})";       rm -rf "$GNUPGHOME"/*;       echo "${release_keys}" | gpg --batch --import;     fi;     echo "downloading $DOWNLOAD_URL.asc";     wget -nv "$DOWNLOAD_URL.asc" -O "/opt/$SOLR_BINARY.asc";     (>&2 ls -l "/opt/$SOLR_BINARY" "/opt/$SOLR_BINARY.asc");     gpg --batch --verify "/opt/$SOLR_BINARY.asc" "/opt/$SOLR_BINARY";     { command -v gpgconf; gpgconf --kill all || :; };     rm -r "$GNUPGHOME";   else     echo "Skipping GPG validation due to non-Apache build";   fi;   tar -C /opt --extract --preserve-permissions --file "/opt/$SOLR_BINARY";   rm "/opt/$SOLR_BINARY"*;   apt-get -y remove gpg dirmngr && apt-get -y autoremove; # buildkit
# Fri, 21 Aug 2026 18:46:54 GMT
LABEL org.opencontainers.image.title=Apache Solr
# Fri, 21 Aug 2026 18:46:54 GMT
LABEL org.opencontainers.image.description=Solr is the blazing-fast, open source, multi-modal search platform built on Apache Lucene. It powers full-text, vector, and geospatial search at many of the world's largest organizations.
# Fri, 21 Aug 2026 18:46:54 GMT
LABEL org.opencontainers.image.authors=The Apache Solr Project
# Fri, 21 Aug 2026 18:46:54 GMT
LABEL org.opencontainers.image.url=https://solr.apache.org
# Fri, 21 Aug 2026 18:46:54 GMT
LABEL org.opencontainers.image.source=https://github.com/apache/solr
# Fri, 21 Aug 2026 18:46:54 GMT
LABEL org.opencontainers.image.documentation=https://solr.apache.org/guide/
# Fri, 21 Aug 2026 18:46:54 GMT
LABEL org.opencontainers.image.version=9.10.1
# Fri, 21 Aug 2026 18:46:54 GMT
LABEL org.opencontainers.image.licenses=Apache-2.0
# Fri, 21 Aug 2026 18:46:54 GMT
ENV SOLR_USER=solr SOLR_UID=8983 SOLR_GROUP=solr SOLR_GID=8983 PATH=/opt/solr/bin:/opt/solr/docker/scripts:/opt/solr/prometheus-exporter/bin:/opt/solr/cross-dc-manager/bin:/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin SOLR_INCLUDE=/etc/default/solr.in.sh SOLR_HOME=/var/solr/data SOLR_PID_DIR=/var/solr SOLR_LOGS_DIR=/var/solr/logs LOG4J_PROPS=/var/solr/log4j2.xml SOLR_JETTY_HOST=0.0.0.0 SOLR_ZK_EMBEDDED_HOST=0.0.0.0
# Fri, 21 Aug 2026 18:46:55 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   groupadd -r --gid "$SOLR_GID" "$SOLR_GROUP";   useradd -r --uid "$SOLR_UID" --gid "$SOLR_GID" "$SOLR_USER" # buildkit
# Fri, 21 Aug 2026 18:46:55 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   (cd /opt; ln -s solr-*/ solr);   rm -Rf /opt/solr/docs /opt/solr/docker/Dockerfile; # buildkit
# Fri, 21 Aug 2026 18:46:55 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;   mkdir -p /opt/solr/server/solr/lib /docker-entrypoint-initdb.d;   cp /opt/solr/bin/solr.in.sh /etc/default/solr.in.sh;   mv /opt/solr/bin/solr.in.sh /opt/solr/bin/solr.in.sh.orig;   mv /opt/solr/bin/solr.in.cmd /opt/solr/bin/solr.in.cmd.orig;   chmod 0664 /etc/default/solr.in.sh;   mkdir -p -m0770 /var/solr;   chown -R "$SOLR_USER:0" /var/solr;   test ! -e /opt/solr/modules || ln -s /opt/solr/modules /opt/solr/contrib;   test ! -e /opt/solr/prometheus-exporter || ln -s /opt/solr/prometheus-exporter /opt/solr/modules/prometheus-exporter; # buildkit
# Fri, 21 Aug 2026 18:46:58 GMT
# ARGS: SOLR_VERSION=9.10.1 SOLR_DIST=-slim SOLR_SHA512=8720f813f1679360f11c753ad516d4680db31afc28065626d2558fb078bd163b79107326733bee3ba6702ca2fa7ef86bd608d594a740b7dcc5475e7c8650cae1 SOLR_KEYS=E05FDF113D89E7FB4A2DF4B2684D544160392455 SOLR_DOWNLOAD_SERVER=https://www.apache.org/dyn/closer.lua?action=download&filename=/solr/solr
RUN set -ex;     apt-get update;     apt-get -y --no-install-recommends install acl lsof procps wget netcat gosu tini jattach;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 21 Aug 2026 18:46:58 GMT
VOLUME [/var/solr]
# Fri, 21 Aug 2026 18:46:58 GMT
EXPOSE map[8983/tcp:{}]
# Fri, 21 Aug 2026 18:46:58 GMT
WORKDIR /opt/solr
# Fri, 21 Aug 2026 18:46:58 GMT
USER 8983
# Fri, 21 Aug 2026 18:46:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 21 Aug 2026 18:46:58 GMT
CMD ["solr-foreground"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8b23d28370dc53545b16fabc24326384a47b51246433af58dbd6125e09b8b56`  
		Last Modified: Fri, 21 Aug 2026 18:26:45 GMT  
		Size: 16.1 MB (16103464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1cb15275ed9e145838f680bc829ff6e084e1d84aeadfcb0bad54ac55e98212b`  
		Last Modified: Fri, 21 Aug 2026 18:29:28 GMT  
		Size: 44.5 MB (44514097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b7e69b86c6740e8db3322e2ef9a07185cc694ac42b1d141fb3060ed08ecef3`  
		Last Modified: Fri, 21 Aug 2026 18:29:27 GMT  
		Size: 159.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c134e05132b49ad3c122d7875fa8c19232740eea85ae943a76b6b2628d3d308`  
		Last Modified: Fri, 21 Aug 2026 18:29:27 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26a18e3552db2b58557250b249a144a4a54b32af409ee7b9e3100b2dc413d828`  
		Last Modified: Fri, 21 Aug 2026 18:47:16 GMT  
		Size: 66.1 MB (66125272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c0d08cfd2260f3991760873d9464ae5ab88288ac54ab03c65373bc2fc5aad4`  
		Last Modified: Fri, 21 Aug 2026 18:47:15 GMT  
		Size: 4.3 KB (4301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db9824dadfd88f10c46b9733f8111a096973123d4fb62f4df9ac075112570bb9`  
		Last Modified: Fri, 21 Aug 2026 18:47:15 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e7941269dfc32cccf22fce9f02be97e912a3033417e1504f0b4db5e068ecf2c`  
		Last Modified: Fri, 21 Aug 2026 18:47:15 GMT  
		Size: 10.8 KB (10803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0620875b412589241f9cfd2870d1d7d0a84344c8cfec65e4ac3695dab25bfc9`  
		Last Modified: Fri, 21 Aug 2026 18:47:16 GMT  
		Size: 1.6 MB (1559334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `solr:9-slim` - unknown; unknown

```console
$ docker pull solr@sha256:9a30d60e393cc250dfa4153ef4ececcc8810f73306ceb0ce4423b4f93256ece6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.0 MB (3985580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d69bfadcf561dddc63898f0fddbf38c3606d4ccf39d447fe876ffcd4c2cd0db`

```dockerfile
```

-	Layers:
	-	`sha256:d0fbaab24623f4288c4b9e5c29b252d48e58abf5e6d1092bf8e1bf3b148c4c52`  
		Last Modified: Fri, 21 Aug 2026 18:47:15 GMT  
		Size: 4.0 MB (3951504 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00014ea3f8a47f352f64c03ed8691d1b185e160b7f7443a1290e984707b18462`  
		Last Modified: Fri, 21 Aug 2026 18:47:15 GMT  
		Size: 34.1 KB (34076 bytes)  
		MIME: application/vnd.in-toto+json
