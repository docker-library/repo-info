## `open-liberty:kernel-slim-java11-openj9`

```console
$ docker pull open-liberty@sha256:08ff60a626a5f6e5c2dd29dea27bed07afd16742dfb8ce226e1a0206ba5d8910
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

### `open-liberty:kernel-slim-java11-openj9` - linux; amd64

```console
$ docker pull open-liberty@sha256:316e932540593034c16b49707eb23475e4055790464077259057b9b39ed6bbbe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.6 MB (121582757 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59a838dfb1e5ddf80de16db0174c229747f9c5d4c51cee55680b34c513b6f077`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 11 Nov 2026 23:21:59 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:21:59 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:21:59 GMT
ENV JAVA_VERSION=11.0.33.0
# Wed, 11 Nov 2026 23:23:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:23:45 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:23:45 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:24:48 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 00:26:16 GMT
USER root
# Thu, 12 Nov 2026 00:26:16 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 00:26:16 GMT
ARG LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d
# Thu, 12 Nov 2026 00:26:16 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip
# Thu, 12 Nov 2026 00:26:16 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 00:26:16 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:26:16 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 00:26:16 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Thu, 12 Nov 2026 00:26:16 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Thu, 12 Nov 2026 00:26:16 GMT
COPY helpers /opt/ol/helpers # buildkit
# Thu, 12 Nov 2026 00:26:16 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Thu, 12 Nov 2026 00:26:16 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 00:26:22 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Thu, 12 Nov 2026 00:26:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:26:23 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 00:26:23 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 00:26:26 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Thu, 12 Nov 2026 00:26:26 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 00:26:26 GMT
USER 1001
# Thu, 12 Nov 2026 00:26:26 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 00:26:26 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 00:26:26 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0a87ab3d918154e155902d4baa3abc9ae677383c3f95ca650d9d3e8383c0e9`  
		Last Modified: Wed, 11 Nov 2026 23:23:26 GMT  
		Size: 12.8 MB (12793081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968a5a9024d234529c3055c89dccb9d7c746beae7368efef42fa1066878f48a9`  
		Last Modified: Wed, 11 Nov 2026 23:25:03 GMT  
		Size: 56.5 MB (56455160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccac1942f557435bfbdd9a5558ebddb40ef45b774b4f27a2862c10cbabcbb14f`  
		Last Modified: Wed, 11 Nov 2026 23:25:01 GMT  
		Size: 4.5 MB (4521316 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51d9348375be22a697f3278089f12824c713fe25f5096c3acb0a980afe36f34`  
		Last Modified: Thu, 12 Nov 2026 00:26:35 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0adc285a676b74b673609d8cc437191fd72659d4599cfd488ca26806ce552c15`  
		Last Modified: Thu, 12 Nov 2026 00:26:35 GMT  
		Size: 12.0 KB (11982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:484eacc79fa865c872ec3428ab89fb31d8d2521c02bfeb4bf716563f99308f74`  
		Last Modified: Thu, 12 Nov 2026 00:26:35 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5c56e6def76c26bbac19e6af759957f494fdc6c7ac447c1ca1d4001c2f10cb`  
		Last Modified: Thu, 12 Nov 2026 00:26:35 GMT  
		Size: 31.7 KB (31748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88c68fbd4935dc09e64978ef9e50f27241227f67e2e852627b2eea04102a70d`  
		Last Modified: Thu, 12 Nov 2026 00:26:36 GMT  
		Size: 15.3 MB (15274585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1937845bca505d2f17b68bf7400b1e8a9a403e3dbfa65cc64d8c859d30252c0`  
		Last Modified: Thu, 12 Nov 2026 00:26:36 GMT  
		Size: 742.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cb76c369e4efd6c634888b620e819cf862a44051565f957a14f8b345ad41b26`  
		Last Modified: Thu, 12 Nov 2026 00:26:36 GMT  
		Size: 13.1 KB (13089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b45ce0a50e4808e7cb35b15ca15d93259ad0bdec3480b62dd2ebc8115cf71ee`  
		Last Modified: Thu, 12 Nov 2026 00:26:36 GMT  
		Size: 2.7 MB (2686538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:77425689cb0f7f7ac4706383d88c54431954f41c012e420b9dcaee6efae791dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3343715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:83ec04c8a06c043a22451ae9f5ee16f756b076ada4eb42b9a5d5d82f8e4a3ca3`

```dockerfile
```

-	Layers:
	-	`sha256:9be6851014ab43ed11d56e2eedaf048a8ad2c86744bf65c55785d84f48bcbe04`  
		Last Modified: Thu, 12 Nov 2026 00:26:35 GMT  
		Size: 3.3 MB (3304311 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4ef4730a6b799c223f89d05525ed73dad607bfd67540d049507e28c3d10cf1f7`  
		Last Modified: Thu, 12 Nov 2026 00:26:35 GMT  
		Size: 39.4 KB (39404 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim-java11-openj9` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:ccdae2fda972cdf6810f32261fc347ec14de2846a7d2767eabcfccb5fce95ac5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.8 MB (118839410 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94e0791da255f301393d51a51c891dd2bfa60524977a7f0ac58dfaae1e191989`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 11 Nov 2026 23:27:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:27:18 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:27:18 GMT
ENV JAVA_VERSION=11.0.33.0
# Wed, 11 Nov 2026 23:27:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:27:20 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:27:20 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:28:24 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 00:41:27 GMT
USER root
# Thu, 12 Nov 2026 00:41:27 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 00:41:27 GMT
ARG LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d
# Thu, 12 Nov 2026 00:41:27 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip
# Thu, 12 Nov 2026 00:41:27 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 00:41:27 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:41:27 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 00:41:27 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Thu, 12 Nov 2026 00:41:27 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Thu, 12 Nov 2026 00:41:27 GMT
COPY helpers /opt/ol/helpers # buildkit
# Thu, 12 Nov 2026 00:41:27 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Thu, 12 Nov 2026 00:41:27 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 00:41:35 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Thu, 12 Nov 2026 00:41:35 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:41:36 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 00:41:36 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 00:41:41 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Thu, 12 Nov 2026 00:41:41 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 00:41:41 GMT
USER 1001
# Thu, 12 Nov 2026 00:41:41 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 00:41:41 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 00:41:41 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb40ae3c9c02456349d6ff9006f1b02f135f0999b2968e8266cbf948fbde9b7`  
		Last Modified: Wed, 11 Nov 2026 23:28:36 GMT  
		Size: 12.8 MB (12830426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b01aa1514fcb316844694a108e7e9d58d2cae7a72a1d47128603096cc9bd832`  
		Last Modified: Wed, 11 Nov 2026 23:28:38 GMT  
		Size: 54.7 MB (54690057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:892321d323fac007aa3713d2e6f994362ea1bbcb5ab1df91d858e764eac40c5e`  
		Last Modified: Wed, 11 Nov 2026 23:28:36 GMT  
		Size: 4.3 MB (4321091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208fce0a8bc47e10f6ad24f980c6ae082879e95a990a7135fd36ebcbe29b401e`  
		Last Modified: Thu, 12 Nov 2026 00:41:49 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48c58de9da26e01d15a4fdc83bcc1c7d830ba01c08e38f4bed32802b92f5d20`  
		Last Modified: Thu, 12 Nov 2026 00:41:49 GMT  
		Size: 12.0 KB (11984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aee3c49e761454a94aaa264c9fc70424419974d332128d80d828d2b7147f5161`  
		Last Modified: Thu, 12 Nov 2026 00:41:49 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:394251a052091bc41641c5895fc50a0d8e0af4d694685ab68173973d03ab1769`  
		Last Modified: Thu, 12 Nov 2026 00:41:49 GMT  
		Size: 42.3 KB (42321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e55270bb4e361476de51085d45c2c401f485aa42ed015e60267c93b2dd31087`  
		Last Modified: Thu, 12 Nov 2026 00:41:51 GMT  
		Size: 15.3 MB (15274741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105f75648ccd7f8aa33cd9e71a0c53861a7c58c29ecfbaa8e003d4a3d8daea23`  
		Last Modified: Thu, 12 Nov 2026 00:41:50 GMT  
		Size: 739.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d373c6e2c7c2b06ad0e7976b15ca8b724af96d24cd10c5e57b9bbfd46d3866`  
		Last Modified: Thu, 12 Nov 2026 00:41:50 GMT  
		Size: 13.1 KB (13078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f951888da9ea4336d965d46cd8db18400914bd0889b39752c1234dc9c8a800`  
		Last Modified: Thu, 12 Nov 2026 00:41:50 GMT  
		Size: 2.7 MB (2688422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:1f91258e4d3a326fdb6e89edf28d68a9402774a2c1b90df4bcda60ba5ab7cbf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3342397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bc940f4279cd2d365734eb8f298f595b6debd0b52d832d8dfc93c359aca237b`

```dockerfile
```

-	Layers:
	-	`sha256:28c4fa2e050475d547a2d0c1d0ea4d73df968a09fb7457801deac00d4b8cdd2b`  
		Last Modified: Thu, 12 Nov 2026 00:41:49 GMT  
		Size: 3.3 MB (3302853 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:26fab231b7546377c12da791a9029854b677fa76b8de891ca08b8d029b467748`  
		Last Modified: Thu, 12 Nov 2026 00:41:49 GMT  
		Size: 39.5 KB (39544 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim-java11-openj9` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:a88aebe48b98678a38107ca21cbbca406483a2c72ee603f38b0adbf71b73a406
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128221594 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02c9f69a50d2be17d4d015703e779715310bf8708f874b8f33a9b65953a58cb`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 10 Nov 2026 08:32:56 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:32:56 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:32:56 GMT
LABEL org.opencontainers.image.version=24.04
# Tue, 10 Nov 2026 08:33:00 GMT
ADD file:89eeaf81edaeaabcc6b5e0c1d26ef4eb2e89301509f4585cbcd17562fbf95198 in / 
# Tue, 10 Nov 2026 08:33:01 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 02:27:47 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Thu, 12 Nov 2026 02:27:47 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 02:27:47 GMT
ENV JAVA_VERSION=11.0.33.0
# Thu, 12 Nov 2026 10:30:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 12 Nov 2026 10:30:04 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 10:30:04 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 12 Nov 2026 10:31:12 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 11:07:37 GMT
USER root
# Thu, 12 Nov 2026 11:07:37 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 11:07:37 GMT
ARG LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d
# Thu, 12 Nov 2026 11:07:37 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip
# Thu, 12 Nov 2026 11:07:37 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 11:07:37 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 11:07:37 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 11:07:37 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Thu, 12 Nov 2026 11:07:37 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Thu, 12 Nov 2026 11:07:38 GMT
COPY helpers /opt/ol/helpers # buildkit
# Thu, 12 Nov 2026 11:07:38 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Thu, 12 Nov 2026 11:07:39 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 11:08:06 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Thu, 12 Nov 2026 11:08:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Thu, 12 Nov 2026 11:08:08 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 11:08:09 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 11:08:24 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Thu, 12 Nov 2026 11:08:24 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 11:08:24 GMT
USER 1001
# Thu, 12 Nov 2026 11:08:24 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 11:08:24 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 11:08:24 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:f78755e68daa4220d3ba6537baccb7cf864d4848b823995344317af2921d0d92`  
		Last Modified: Wed, 11 Nov 2026 23:14:15 GMT  
		Size: 34.4 MB (34406511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adbbe4994dd94b7622ea53c9b0e1fb09d374bd2c86d5e7e4af6a67b50e0a6b38`  
		Last Modified: Thu, 12 Nov 2026 02:30:01 GMT  
		Size: 13.8 MB (13766144 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625b5716ad2a5f096fb750f1300fb3c54f570bd6a397f70eaab2d0eb5ec95365`  
		Last Modified: Thu, 12 Nov 2026 10:32:11 GMT  
		Size: 58.4 MB (58414906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081f56f29a9edf23ca26dc6f73429267699a9d8fc4b2a2f74a54b081a033ec34`  
		Last Modified: Thu, 12 Nov 2026 10:32:10 GMT  
		Size: 3.6 MB (3624960 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b93a47c12f6a7169b60aa890b90fccb6b5391e54ebd997ccc50ce7c88d6dc4`  
		Last Modified: Thu, 12 Nov 2026 11:08:48 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b74cd307a8f416d90903883ada7c9ef2ff52cf0384ab242bbdadb5cc924950`  
		Last Modified: Thu, 12 Nov 2026 11:08:48 GMT  
		Size: 12.0 KB (11980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7a3455651553838c960de3818869bb6b40c0c6c26c4806bba52333925d7921`  
		Last Modified: Thu, 12 Nov 2026 11:08:48 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a4edfcce83728c1bfac1caecf165b38aa10fc77512d2989bc41a4565e7fb9b`  
		Last Modified: Thu, 12 Nov 2026 11:08:48 GMT  
		Size: 36.5 KB (36497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb6ea7f6d30318b01548639c0796119651fdb8463ebed2a354762bdd0d4cec7`  
		Last Modified: Thu, 12 Nov 2026 11:08:50 GMT  
		Size: 15.3 MB (15275216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54765a25e64ba393d556cf141b0dbf55fb87fabfa10918c07f88ab57ccc4bd55`  
		Last Modified: Thu, 12 Nov 2026 11:08:49 GMT  
		Size: 738.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207ee57e52cb0f467ff9cb8aa046c88789fac6e654e9390fab62532c42908251`  
		Last Modified: Thu, 12 Nov 2026 11:08:49 GMT  
		Size: 13.1 KB (13118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9642d6e3f933b77af967f0a19530eb68c1b67d9c238578821d4a2a2d13900eee`  
		Last Modified: Thu, 12 Nov 2026 11:08:50 GMT  
		Size: 2.7 MB (2670234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:f2ac18b92a54abb230296d41069571d01ac45b99bb5f3a387bba32effb7f8437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3347579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6172fab94e259fbc297bdae56b201935a3238cd202beea30c393838c2b9ef0ee`

```dockerfile
```

-	Layers:
	-	`sha256:3d3fec8154bff7a801d4dcfc42db4f683ab0e084235a54a3731d2b1f88fa1a44`  
		Last Modified: Thu, 12 Nov 2026 11:08:48 GMT  
		Size: 3.3 MB (3308939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d23d6c8d6cbbdf0e6952f6fd013eac956d74a5e24ab70ba6b2f677455e9dab77`  
		Last Modified: Thu, 12 Nov 2026 11:08:48 GMT  
		Size: 38.6 KB (38640 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim-java11-openj9` - linux; s390x

```console
$ docker pull open-liberty@sha256:32f2f1e3998c5db93f031559ce2af51d1bab4ab8533172ebe2f919e6aa0f60b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.6 MB (124559892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6cd43f0a597930376a714a87a3758874f037b7a8cf3e027f2bba30981c21baf`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 11 Nov 2026 23:19:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:19:05 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:19:05 GMT
ENV JAVA_VERSION=11.0.33.0
# Wed, 11 Nov 2026 23:19:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:19:06 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:19:06 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:20:10 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 00:39:36 GMT
USER root
# Thu, 12 Nov 2026 00:39:36 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 00:39:36 GMT
ARG LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d
# Thu, 12 Nov 2026 00:39:36 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip
# Thu, 12 Nov 2026 00:39:36 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 00:39:36 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:39:36 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 00:39:36 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Thu, 12 Nov 2026 00:39:36 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Thu, 12 Nov 2026 00:39:36 GMT
COPY helpers /opt/ol/helpers # buildkit
# Thu, 12 Nov 2026 00:39:37 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Thu, 12 Nov 2026 00:39:38 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 00:39:48 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Thu, 12 Nov 2026 00:39:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:39:49 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 00:39:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Thu, 12 Nov 2026 00:39:59 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 00:39:59 GMT
USER 1001
# Thu, 12 Nov 2026 00:39:59 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 00:39:59 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 00:39:59 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f9b7990f10daaf474e83ccd2a525e7b4c76b857b054e76380c42a2ddad6bdb4`  
		Last Modified: Wed, 11 Nov 2026 23:20:30 GMT  
		Size: 13.1 MB (13098103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de6a03e6964a0c2bca717b1a9857760f41020bb500307dc79894a5d45baabd7`  
		Last Modified: Wed, 11 Nov 2026 23:20:31 GMT  
		Size: 58.6 MB (58610780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c25b3af1b779d3424bc225debeb07f0d71dc6a1dc3cc6deb367b530f7ab51f`  
		Last Modified: Wed, 11 Nov 2026 23:20:30 GMT  
		Size: 4.7 MB (4734958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb29f1f5f1fcc4a8df0d60c680a4f20945d3669c14d358646a65c60e43463935`  
		Last Modified: Thu, 12 Nov 2026 00:40:36 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2b19b36237f086e6c95bd25250ac6a062cc7aec164607c1826776937b4857c`  
		Last Modified: Thu, 12 Nov 2026 00:40:36 GMT  
		Size: 12.0 KB (11979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd1a4441e3b093f9f3aac9b4afb7fe6f9357f405ffd36ea57a7e6d2ed2b7c05`  
		Last Modified: Thu, 12 Nov 2026 00:40:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77c15572b9805a4f53c3af664b98e58b4dcff5b2d218c756bad4730ae975787c`  
		Last Modified: Thu, 12 Nov 2026 00:40:36 GMT  
		Size: 33.1 KB (33112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce068921518b8fa0a6241aa6b9a64073e68648d8b4080cb1102d4623a36f9860`  
		Last Modified: Thu, 12 Nov 2026 00:40:38 GMT  
		Size: 15.3 MB (15274365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e39f420e8e5102acd39296d69cc508632612e3c9cfc4a6a9fc3a6e3d3087bf8`  
		Last Modified: Thu, 12 Nov 2026 00:40:37 GMT  
		Size: 737.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87e83bb400b780f8213470ea81894e1a6cfb86f1a59943e3e0d74dfdc07f11f5`  
		Last Modified: Thu, 12 Nov 2026 00:40:37 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c998c81d611337c8d3b594a563c14b00b7bd67b723dbb895923c6d3b55bde1e2`  
		Last Modified: Thu, 12 Nov 2026 00:40:38 GMT  
		Size: 2.8 MB (2813873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:be61fb22300161d6b7855d6a4ddc1d8dbbc008e7a63b018f939587ca169f7947
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3344712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3399a266f0ae29be296a26ea2473ec1a49edf8aacaf31dad9482baef0b22ebf3`

```dockerfile
```

-	Layers:
	-	`sha256:dc7fb52c66fa78137f0d02515ae9d79516371389cb2f22ca4865a861731073c1`  
		Last Modified: Thu, 12 Nov 2026 00:40:36 GMT  
		Size: 3.3 MB (3305308 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3407ecf6a796dc3985f69e94cacd8b347a9e87add16b96a7d805d2c8b8eb7d97`  
		Last Modified: Thu, 12 Nov 2026 00:40:36 GMT  
		Size: 39.4 KB (39404 bytes)  
		MIME: application/vnd.in-toto+json
