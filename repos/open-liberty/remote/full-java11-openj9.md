## `open-liberty:full-java11-openj9`

```console
$ docker pull open-liberty@sha256:d1bd77761319488a9506d2cacf22c7789af4aaa0352c69f3dd6fb70f9ed0b58b
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

### `open-liberty:full-java11-openj9` - linux; amd64

```console
$ docker pull open-liberty@sha256:1af1bfe4505c6dfe2dce4b961fa6b3dbd0a30ad7b5091ed1d4dd4a3d1aeeb50b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.7 MB (486723510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07e62f407d053bac4c75531bf84df8ba8a584c058f1b7e3f887e1fb511332f3`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:45 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:45 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:45 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:17:47 GMT
ADD file:eed88e94d6aa7c9da62836e137f889e03988c1a6b237b0cedb6ca666dfaa98ea in / 
# Sun, 25 Oct 2026 14:17:47 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 23:36:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:36:10 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:36:10 GMT
ENV JAVA_VERSION=11.0.33.0
# Mon, 09 Nov 2026 23:37:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:37:43 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:37:43 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:38:46 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:49:44 GMT
USER root
# Mon, 09 Nov 2026 23:49:44 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Mon, 09 Nov 2026 23:49:44 GMT
ARG LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f
# Mon, 09 Nov 2026 23:49:44 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip
# Mon, 09 Nov 2026 23:49:44 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Mon, 09 Nov 2026 23:49:44 GMT
ARG OPENJ9_SCC=true
# Mon, 09 Nov 2026 23:49:44 GMT
ARG VERBOSE=false
# Mon, 09 Nov 2026 23:49:44 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Mon, 09 Nov 2026 23:49:44 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 09 Nov 2026 23:50:12 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 09 Nov 2026 23:50:12 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 09 Nov 2026 23:50:12 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 09 Nov 2026 23:50:24 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 09 Nov 2026 23:50:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 09 Nov 2026 23:50:25 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 09 Nov 2026 23:50:25 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 09 Nov 2026 23:50:42 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 09 Nov 2026 23:50:42 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 09 Nov 2026 23:50:42 GMT
USER 1001
# Mon, 09 Nov 2026 23:50:42 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 09 Nov 2026 23:50:42 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 09 Nov 2026 23:50:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51bc899f6ba9977578e5b75fd0acd328f6411243326c0700ea125106c33c0c5a`  
		Last Modified: Mon, 09 Nov 2026 23:37:33 GMT  
		Size: 12.8 MB (12793267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0317548eddb90fce78d410d153015246ef5d2bb2e1ea91fae1c427ee24f4c1`  
		Last Modified: Mon, 09 Nov 2026 23:39:00 GMT  
		Size: 56.5 MB (56455175 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ae836e0dfa5c9b8a548aa4cb01e115137804a9ad2072a76c75c73e8622769b3`  
		Last Modified: Mon, 09 Nov 2026 23:38:58 GMT  
		Size: 4.5 MB (4478503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d91be862d9e0008ae8c4d1c5d12fce40d0731aafeff4df71f2c15f2c9ba68d54`  
		Last Modified: Mon, 09 Nov 2026 23:50:03 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:279e35bf7839eea4d3914893c57a6fc4d243c0db44528b17703cebe98417d9ed`  
		Last Modified: Mon, 09 Nov 2026 23:51:05 GMT  
		Size: 12.4 KB (12434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7fcff70b7965189a375f790d7b43d807cc5296dfc7f082d2dcd49f52d91eb15`  
		Last Modified: Mon, 09 Nov 2026 23:51:05 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffeb759d4ac09ee65f74f35255f3447abddde4cc9140f4d1bfbd9d47c484e669`  
		Last Modified: Mon, 09 Nov 2026 23:51:05 GMT  
		Size: 31.7 KB (31749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6c1fc14474f019de1b672725e6ea444d14e75aa0b9f580dceaf07547ac93f08`  
		Last Modified: Mon, 09 Nov 2026 23:51:13 GMT  
		Size: 369.9 MB (369944760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b330d92b9619fd3eaa40207bab9ae5e7f43f0bc965081d84ef5e5ad8c610d19`  
		Last Modified: Mon, 09 Nov 2026 23:51:06 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2dff3330fd52eec22bc9c799453f659afa57cbed84e9413c2a55d1a0989e3ff`  
		Last Modified: Mon, 09 Nov 2026 23:51:07 GMT  
		Size: 13.9 KB (13875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e2730e4fcfb718960d26bdc2875f4c7f8aa4785972250c33f4781c73c2f82e4`  
		Last Modified: Mon, 09 Nov 2026 23:51:07 GMT  
		Size: 13.2 MB (13223792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:4a837b1558338999c2fcfaf73d52aa6355d2da6346e60fe577050624a79247c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5249109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ce3a6cdb53b48e4d163c4aef486e1350c73f059e7257ffff79af4bf426e6eb6`

```dockerfile
```

-	Layers:
	-	`sha256:3026518e74ed66d8819d542455fe6f6482e4c5f6c232937dd10c0d98879e2024`  
		Last Modified: Mon, 09 Nov 2026 23:51:05 GMT  
		Size: 5.2 MB (5209835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fce3a90d902e5c6a1065b8340b4b0dce8a5432b6011faab768f16f95ba3e3f98`  
		Last Modified: Mon, 09 Nov 2026 23:51:05 GMT  
		Size: 39.3 KB (39274 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java11-openj9` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:00e8e6eef98d982840e365a260981b10cead22b71342237766c0d731de3a754d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.1 MB (484082503 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc1f4e3a4111d218dd450b98a4098733ce4bf00ba8482af4695c96607f536079`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:00 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:00 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:00 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:03 GMT
ADD file:2c901e275b6c59fa9cf0fb689a9665247088dba23d45178d9aa52ec3263de265 in / 
# Sun, 25 Oct 2026 14:18:03 GMT
CMD ["/bin/bash"]
# Mon, 09 Nov 2026 23:37:38 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:37:38 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:37:38 GMT
ENV JAVA_VERSION=11.0.33.0
# Mon, 09 Nov 2026 23:37:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:37:40 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:37:40 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:38:44 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:49:00 GMT
USER root
# Mon, 09 Nov 2026 23:49:00 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Mon, 09 Nov 2026 23:49:00 GMT
ARG LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f
# Mon, 09 Nov 2026 23:49:00 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip
# Mon, 09 Nov 2026 23:49:00 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Mon, 09 Nov 2026 23:49:00 GMT
ARG OPENJ9_SCC=true
# Mon, 09 Nov 2026 23:49:00 GMT
ARG VERBOSE=false
# Mon, 09 Nov 2026 23:49:00 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Mon, 09 Nov 2026 23:49:00 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 09 Nov 2026 23:49:00 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 09 Nov 2026 23:49:00 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 09 Nov 2026 23:49:01 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 09 Nov 2026 23:49:15 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 09 Nov 2026 23:49:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 09 Nov 2026 23:49:16 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 09 Nov 2026 23:49:16 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 09 Nov 2026 23:49:38 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 09 Nov 2026 23:49:38 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 09 Nov 2026 23:49:38 GMT
USER 1001
# Mon, 09 Nov 2026 23:49:38 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 09 Nov 2026 23:49:38 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 09 Nov 2026 23:49:38 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5d5f9efe3755e6197d17a767d8bc7c107fa53a445d5ac734001fff0cad0070`  
		Last Modified: Mon, 09 Nov 2026 23:38:57 GMT  
		Size: 12.8 MB (12830317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe32a9c3405338762740f111c7ed358ad72adc9c51c36056216e220650ad776e`  
		Last Modified: Mon, 09 Nov 2026 23:38:58 GMT  
		Size: 54.7 MB (54690081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565919d54fe58f75a81dff28c6dc11bd30ce928922948fd2779463bbded84804`  
		Last Modified: Mon, 09 Nov 2026 23:38:57 GMT  
		Size: 4.4 MB (4374629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5edb901e1919ce86859020e42c9741a314e156fa9721f35dbc5a102f7e45733e`  
		Last Modified: Mon, 09 Nov 2026 23:50:04 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c07c3addd1766ff74b8b083d5c795c49ac3418cc0818c6615d8d174f533eb4f`  
		Last Modified: Mon, 09 Nov 2026 23:50:04 GMT  
		Size: 12.4 KB (12432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a629ca3bb953ca4923ac98d84fbce089b2f89d7a5437d21c00e30289890bbe`  
		Last Modified: Mon, 09 Nov 2026 23:50:04 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42ada7c22ef5717e684df2d7dc36ce370296ecbecf416dceb9043582b1d890e`  
		Last Modified: Mon, 09 Nov 2026 23:50:04 GMT  
		Size: 42.3 KB (42322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9be39ce3e1a989de103e5740ffcbe5f464eb10cb7cb72515b6ae4296be0059`  
		Last Modified: Mon, 09 Nov 2026 23:50:12 GMT  
		Size: 369.9 MB (369944817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f968508e170465c81c90f01ddaa47d8dad110dd519f347b1024691369ef618`  
		Last Modified: Mon, 09 Nov 2026 23:50:05 GMT  
		Size: 1.1 KB (1062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cddc4607aa07b01f87e913c33f07548592d8dae08a0fa99e214acd077a23fb6`  
		Last Modified: Mon, 09 Nov 2026 23:50:05 GMT  
		Size: 13.9 KB (13880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2972fc61ee29b1d12dd74ff5f7deee4e85ad04e1bd970477a41249a21949be0f`  
		Last Modified: Mon, 09 Nov 2026 23:50:06 GMT  
		Size: 13.2 MB (13231548 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:211781a300ed611b4a2ee60a601b7d24822398619a759662a9cb34043b1badbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d7c043d18275f7b57677bb13f21c598be4fd0b1d354c4b3ccd501f3deb1cf03`

```dockerfile
```

-	Layers:
	-	`sha256:5316e816c0e4d16788195cf392dc9d88deb88714c03a9c5391c1651c48f68fb7`  
		Last Modified: Mon, 09 Nov 2026 23:50:04 GMT  
		Size: 5.2 MB (5208365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2939657d6d990f258fd0808f7e1e5eddc1c76633bcc651a761e6cfa80b0fa1ac`  
		Last Modified: Mon, 09 Nov 2026 23:50:04 GMT  
		Size: 39.4 KB (39402 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java11-openj9` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:5cf74f33a8b24bc7753efa99cf39ce536781a711dcca9bcad9ee50b15f4a0a1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.5 MB (492491261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fa38523b658c620c158f55de3ae8586fd644bb30db93e565673647cd3ae3eb5`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sun, 25 Oct 2026 14:18:35 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:18:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:18:35 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:39 GMT
ADD file:ef742f6d40def62a9b4c0b916161e4ab04e1a6b83bc4e20803daa0d5ab2ea12b in / 
# Sun, 25 Oct 2026 14:18:39 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:23:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:23:18 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:23:18 GMT
ENV JAVA_VERSION=11.0.33.0
# Tue, 10 Nov 2026 03:36:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 03:36:55 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 03:36:55 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 10 Nov 2026 03:38:01 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 10 Nov 2026 04:07:24 GMT
USER root
# Tue, 10 Nov 2026 04:07:24 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Tue, 10 Nov 2026 04:07:24 GMT
ARG LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f
# Tue, 10 Nov 2026 04:07:24 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip
# Tue, 10 Nov 2026 04:07:24 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Tue, 10 Nov 2026 04:07:24 GMT
ARG OPENJ9_SCC=true
# Tue, 10 Nov 2026 04:07:24 GMT
ARG VERBOSE=false
# Tue, 10 Nov 2026 04:07:24 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Tue, 10 Nov 2026 04:07:24 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 10 Nov 2026 04:08:33 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 10 Nov 2026 04:08:33 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 10 Nov 2026 04:08:34 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 10 Nov 2026 04:08:58 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 10 Nov 2026 04:08:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 10 Nov 2026 04:08:59 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 10 Nov 2026 04:09:00 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 10 Nov 2026 04:09:42 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 10 Nov 2026 04:09:42 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 10 Nov 2026 04:09:42 GMT
USER 1001
# Tue, 10 Nov 2026 04:09:42 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 10 Nov 2026 04:09:42 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 10 Nov 2026 04:09:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b196d88b1de73420267ab2bdaf559fdd334f328a1ded832cecae1953d000625`  
		Last Modified: Wed, 04 Nov 2026 22:25:30 GMT  
		Size: 13.8 MB (13765088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff13bd71d8510d627f85e72926079e5b09e55d9f7fb8a2b18857a199debb5410`  
		Last Modified: Tue, 10 Nov 2026 03:38:28 GMT  
		Size: 58.4 MB (58414935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bca030a5aaa8136ce5965e7e02f92117a7a305f55ac68fa79e8610149792d1b8`  
		Last Modified: Tue, 10 Nov 2026 03:38:26 GMT  
		Size: 3.6 MB (3593129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee20248f47f9aa029e6cb15ae1c487bbda61a36bda52d69e3afb4951b5d4fe6a`  
		Last Modified: Tue, 10 Nov 2026 04:08:14 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea230175d85199184143bc516ab45d73c48f05fb527760658ad76af418e7fbf`  
		Last Modified: Tue, 10 Nov 2026 04:10:38 GMT  
		Size: 12.4 KB (12438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c433eaea4d2124bcc0742b1195a189d2d9821f5ed80598516c5f5b9bdcdcd6a`  
		Last Modified: Tue, 10 Nov 2026 04:10:38 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c9e2c9d88dfd5f3fe458a8e859bddaafdff464150a19411e4bd6eea2bf677f`  
		Last Modified: Tue, 10 Nov 2026 04:10:38 GMT  
		Size: 36.5 KB (36498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ceaf088035f792a4d4762abcaefd7b89d1e6632da47f26379985a501778224b`  
		Last Modified: Tue, 10 Nov 2026 04:10:46 GMT  
		Size: 369.9 MB (369944977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6605eff3479ffcf7767fe6ac5f02315aec04e1a8f8fb6825b3db259704ab7a4`  
		Last Modified: Tue, 10 Nov 2026 04:10:39 GMT  
		Size: 1.1 KB (1063 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc37b810481191cbb053df3ad12a687e4407c20a1e834b15634402fa35396290`  
		Last Modified: Tue, 10 Nov 2026 04:10:39 GMT  
		Size: 13.9 KB (13904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e148a6dfc2c2498fce3aa7abc0e4dfddae2d4f13bc3a32a08a19eff0a9748c27`  
		Last Modified: Tue, 10 Nov 2026 04:10:40 GMT  
		Size: 12.3 MB (12329629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:a8544f909d81d0578cebb281eabfa10f3861c47f01fbe5b68b69d401f41be3ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5252961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b06c1793a378ff6134705f5db5490700ed8e80de0feb0fb86ec95a681366e14`

```dockerfile
```

-	Layers:
	-	`sha256:064fd48afd4ed67396802289792b8cfde7dc7f914333cdf9fe44e5fdc3a9c5f0`  
		Last Modified: Tue, 10 Nov 2026 04:10:38 GMT  
		Size: 5.2 MB (5214457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d564085f6f1bf0ebce21b0f1b8be2f482bfc89fe4f2ea70f203c68844de7298`  
		Last Modified: Tue, 10 Nov 2026 04:10:38 GMT  
		Size: 38.5 KB (38504 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java11-openj9` - linux; s390x

```console
$ docker pull open-liberty@sha256:3b1085e7e2016204468d39cb81408e6b56a9a21390b0c9ed01145e86bd5db39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.0 MB (490003165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18a1edc810f60c295831787cb9e1bb2a230efedd9b259547fbc6f5912e74bbeb`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sun, 25 Oct 2026 14:17:59 GMT
ARG RELEASE
# Sun, 25 Oct 2026 14:17:59 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 14:17:59 GMT
LABEL org.opencontainers.image.version=24.04
# Sun, 25 Oct 2026 14:18:00 GMT
ADD file:c2156dcf753b3a0ab0d36b29087b8209a73050420505b4ce2fb173267e1306b5 in / 
# Sun, 25 Oct 2026 14:18:01 GMT
CMD ["/bin/bash"]
# Wed, 04 Nov 2026 22:27:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:27:26 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:27:26 GMT
ENV JAVA_VERSION=11.0.33.0
# Tue, 10 Nov 2026 00:01:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='bfa025a565fb64a4d73545aa2828111686d6c483dfa449b97aafef85f78be8cd';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_aarch64_linux_11.0.33.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='a1c19a487b34d1ed81505d3018b647f7bc98d508a32ae7fcce0bb7907aa878d2';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_ppc64le_linux_11.0.33.0.tar.gz';          ;;        amd64|x86_64)          ESUM='271b1e06189027d09c4cc80c964ac5e8d4bf77bfb34700e392a35ac15de7d5fb';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_x64_linux_11.0.33.0.tar.gz';          ;;        s390x)          ESUM='ea5279e211e620752918080fe4387f9ad90d35dc70004ef47523e2bb26c7a907';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.33.0/ibm-semeru-open-jre_s390x_linux_11.0.33.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 00:01:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:01:57 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 10 Nov 2026 00:03:02 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 10 Nov 2026 00:08:42 GMT
USER root
# Tue, 10 Nov 2026 00:08:42 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Tue, 10 Nov 2026 00:08:42 GMT
ARG LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f
# Tue, 10 Nov 2026 00:08:42 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip
# Tue, 10 Nov 2026 00:08:42 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Tue, 10 Nov 2026 00:08:42 GMT
ARG OPENJ9_SCC=true
# Tue, 10 Nov 2026 00:08:42 GMT
ARG VERBOSE=false
# Tue, 10 Nov 2026 00:08:42 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Tue, 10 Nov 2026 00:08:42 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 10 Nov 2026 00:10:50 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 10 Nov 2026 00:10:50 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 10 Nov 2026 00:10:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 10 Nov 2026 00:11:16 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 10 Nov 2026 00:11:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 10 Nov 2026 00:11:17 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 10 Nov 2026 00:11:18 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 10 Nov 2026 00:11:49 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 10 Nov 2026 00:11:49 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 10 Nov 2026 00:11:49 GMT
USER 1001
# Tue, 10 Nov 2026 00:11:49 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 10 Nov 2026 00:11:49 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 10 Nov 2026 00:11:49 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e758432d89a0d5e0bbe8933e849b1d7c235982f78d967da4b5ecdfe5194f2d`  
		Last Modified: Wed, 04 Nov 2026 22:29:38 GMT  
		Size: 13.1 MB (13098537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f2687c5f7b3426f3eab2313ce78bce9b085b970d75e6942069c19ba93bdeaed`  
		Last Modified: Tue, 10 Nov 2026 00:03:30 GMT  
		Size: 58.6 MB (58610780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c3f5f7cf1fec270419a97055a5f6dac7bf2024f16d5146b9f2bb699cf1b3e60`  
		Last Modified: Tue, 10 Nov 2026 00:03:28 GMT  
		Size: 4.8 MB (4756759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8604c4d21e348a82693880d8d8172ba33d5129f36201b655795ee6cbbb1c94b`  
		Last Modified: Tue, 10 Nov 2026 00:10:41 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fcdbcbbfd44a7f13d2e65e61193ca8d830195a403c3331bbac0e165489d140b`  
		Last Modified: Tue, 10 Nov 2026 00:12:41 GMT  
		Size: 12.4 KB (12435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715b737f68493f438481fb7c50e4a234a706c4ee5994f616afbff37343a22474`  
		Last Modified: Tue, 10 Nov 2026 00:12:41 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4460ced4f16e2144e7a74ad42883e98ed8f56d3f3940509d3d02fa42360465`  
		Last Modified: Tue, 10 Nov 2026 00:12:41 GMT  
		Size: 33.1 KB (33113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03f379f2b8b010bedb7152d372e0445c3c814cfad3f08ffaa10b1226f316cb0`  
		Last Modified: Tue, 10 Nov 2026 00:12:48 GMT  
		Size: 369.9 MB (369944772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ff1acb605fe8f8e90ec60c0ae74c65f7479da6bb134fb50d1742b50f12307d`  
		Last Modified: Tue, 10 Nov 2026 00:12:42 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399357511617c2e92fd0296fec37161281b8322c146d152a5da5f4d70fcfa5c5`  
		Last Modified: Tue, 10 Nov 2026 00:12:43 GMT  
		Size: 13.9 KB (13901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79129e1ce59ee7f7632416e8659f7c8056f29d9081d3970d015574ab03c4ccb0`  
		Last Modified: Tue, 10 Nov 2026 00:12:43 GMT  
		Size: 13.6 MB (13583470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:cadc5c8e4249c1c58178b0e23a2641526cca11d4d1130541084d53d962e990dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8724f25fbf6ab8b106392d93214472c749a5baa84809244114c84880f76b8c01`

```dockerfile
```

-	Layers:
	-	`sha256:e92f23780f5a75bc699547f7c85ded7354a767dcdb8817c5411f9c14a8911400`  
		Last Modified: Tue, 10 Nov 2026 00:12:41 GMT  
		Size: 5.2 MB (5210832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23abdd4bc404c2399eb0ed2f5db9bdebfb947b94e6d6a4a2ae7afc3b7c4f5808`  
		Last Modified: Tue, 10 Nov 2026 00:12:41 GMT  
		Size: 39.3 KB (39274 bytes)  
		MIME: application/vnd.in-toto+json
