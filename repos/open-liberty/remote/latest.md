## `open-liberty:latest`

```console
$ docker pull open-liberty@sha256:38e217fe6fd32477d8174be1d2b39699cb1411cc0505ac4df1cc9bb401cdacd9
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

### `open-liberty:latest` - linux; amd64

```console
$ docker pull open-liberty@sha256:c5457e4d22db1be5f19b3325dd0d872be4bb808e8c6adf5f92f3bcc4dd0d081e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.5 MB (484535178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73c9e6dd0d230fc7a3d04522b026d8d46798ab42abcc21896ee59df6118bd187`
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
# Wed, 11 Nov 2026 23:22:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:22:09 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:22:09 GMT
ENV JAVA_VERSION=8.0.512.0
# Wed, 11 Nov 2026 23:22:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='449fae1d8de853aed2e5e07526487c7b6b83065cb57e408adc554a2d073896f2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='942dd89c2180fabe6e6c411c9ee76ae69a7548a9dcbe2ced6cb03bb520768434';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='a83ea13d6e79f7dc089e4ab54cd7cb4c271fcccf9794f2fe2b4afb86e1586dd9';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='9dc10dd03097c79e4322f5eddeccc3755b3bf6368939b435d4b6851991c9ffc8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:22:12 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:22:12 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:23:15 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 00:26:39 GMT
USER root
# Thu, 12 Nov 2026 00:26:39 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 00:26:39 GMT
ARG LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f
# Thu, 12 Nov 2026 00:26:39 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip
# Thu, 12 Nov 2026 00:26:39 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 00:26:39 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:26:39 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 00:26:39 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Thu, 12 Nov 2026 00:26:39 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Thu, 12 Nov 2026 00:26:39 GMT
COPY helpers /opt/ol/helpers # buildkit
# Thu, 12 Nov 2026 00:26:39 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Thu, 12 Nov 2026 00:26:39 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 00:26:53 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Thu, 12 Nov 2026 00:26:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:26:53 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 00:26:53 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 00:27:10 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Thu, 12 Nov 2026 00:27:10 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 00:27:10 GMT
USER 1001
# Thu, 12 Nov 2026 00:27:10 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 00:27:10 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 00:27:10 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1173ef4ecd4491e81af8185220aa51b88a6a12d17d391bc2325a3e2bfb03e9`  
		Last Modified: Wed, 11 Nov 2026 23:23:28 GMT  
		Size: 12.8 MB (12793090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecb1b078835750786b1af72ef5a3ad7609e0809a65af78cb20180c4f5fc14948`  
		Last Modified: Wed, 11 Nov 2026 23:23:29 GMT  
		Size: 54.5 MB (54478686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a66c0f4dbd496beba389b53b4c34fc22f2545c44a37a1e7bb8bb02d8719ca6`  
		Last Modified: Wed, 11 Nov 2026 23:23:28 GMT  
		Size: 4.3 MB (4273121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c703c2551f6beed414b61100631c9c46d7518983b882f1cdfe9bfc80a10d1af`  
		Last Modified: Thu, 12 Nov 2026 00:27:35 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f88ea913fefadc45faf469b1b8d17bf293aafa271a61693fc76c3a7eed5395`  
		Last Modified: Thu, 12 Nov 2026 00:27:35 GMT  
		Size: 12.4 KB (12438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bd0ce3af2093c127031d2944be4f97ab3f2943b4301c08c5464ea7e0d912c4`  
		Last Modified: Thu, 12 Nov 2026 00:27:35 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d494987787fd2b56503fadbb08ec0b96424be6a7654266a5b41370b79f07ba44`  
		Last Modified: Thu, 12 Nov 2026 00:27:35 GMT  
		Size: 31.7 KB (31748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bad4464b9364fb253a0d0f55bef681f854890bbf974794c1d2d41995f585d05`  
		Last Modified: Thu, 12 Nov 2026 00:27:46 GMT  
		Size: 369.9 MB (369944697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86dfecbb444670a75dc90568467302323c1f64fefe827983f29124846ee2d9a2`  
		Last Modified: Thu, 12 Nov 2026 00:27:36 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b18eff4156584fea2a0a9b76f196bf549a862371da3145c65d61a747ba1708`  
		Last Modified: Thu, 12 Nov 2026 00:27:36 GMT  
		Size: 13.9 KB (13875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d50d049467385221472215f6680ceb96f7f955457840d44f7352d313642c08e`  
		Last Modified: Thu, 12 Nov 2026 00:27:37 GMT  
		Size: 13.2 MB (13191953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:latest` - unknown; unknown

```console
$ docker pull open-liberty@sha256:e935a86f8f48dc8593a775de1fee85be47791ddaf0742f6f78a22cc9cc1ac3c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5264837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f914850b110054f0d8e5ce48a5d7c08eeea87bc6607f15f5cc0dd44792df655c`

```dockerfile
```

-	Layers:
	-	`sha256:2c77d1b33d495e9f4fd6c0f66046979da2029f5d5be32f05d37d4ffbb817144c`  
		Last Modified: Thu, 12 Nov 2026 00:27:35 GMT  
		Size: 5.2 MB (5224952 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:10a339ed5acd3758583acc60c68ecb3e3af275408ee34fb7344165ae1100e2f5`  
		Last Modified: Thu, 12 Nov 2026 00:27:35 GMT  
		Size: 39.9 KB (39885 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:latest` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:3ed48074f4a99fccf2868f8af7c0bd5c46aa123673358747c76f68fcfa2f0a23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **483.4 MB (483361657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2e9c82dc8ab87f5340de150af82468adb4b9fc637510971c6d0cfca7998bb9e`
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
# Wed, 11 Nov 2026 23:25:48 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:25:48 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:25:48 GMT
ENV JAVA_VERSION=8.0.512.0
# Wed, 11 Nov 2026 23:25:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='449fae1d8de853aed2e5e07526487c7b6b83065cb57e408adc554a2d073896f2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='942dd89c2180fabe6e6c411c9ee76ae69a7548a9dcbe2ced6cb03bb520768434';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='a83ea13d6e79f7dc089e4ab54cd7cb4c271fcccf9794f2fe2b4afb86e1586dd9';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='9dc10dd03097c79e4322f5eddeccc3755b3bf6368939b435d4b6851991c9ffc8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:25:49 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:25:49 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:26:53 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 00:41:38 GMT
USER root
# Thu, 12 Nov 2026 00:41:38 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 00:41:38 GMT
ARG LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f
# Thu, 12 Nov 2026 00:41:38 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip
# Thu, 12 Nov 2026 00:41:38 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 00:41:38 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:41:38 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 00:41:38 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Thu, 12 Nov 2026 00:41:38 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Thu, 12 Nov 2026 00:41:39 GMT
COPY helpers /opt/ol/helpers # buildkit
# Thu, 12 Nov 2026 00:41:39 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Thu, 12 Nov 2026 00:41:39 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 00:41:54 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Thu, 12 Nov 2026 00:41:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:41:54 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 00:41:54 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 00:42:15 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Thu, 12 Nov 2026 00:42:15 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 00:42:15 GMT
USER 1001
# Thu, 12 Nov 2026 00:42:15 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 00:42:15 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 00:42:15 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:764fd22acf93d865c617d02868eac138c011ed4ee61973bf4c45232d2379cb15`  
		Last Modified: Wed, 11 Nov 2026 23:27:05 GMT  
		Size: 12.8 MB (12830382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c11f13a962ee2285b271c67949430d7dc8243cb9584afa6e2c249d4342626fb`  
		Last Modified: Wed, 11 Nov 2026 23:27:06 GMT  
		Size: 54.1 MB (54127198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe6f1042ac5fb52cc56ff10e819ae90804a0cfd07fa606dd98af93a57ee0b74`  
		Last Modified: Wed, 11 Nov 2026 23:27:05 GMT  
		Size: 4.1 MB (4144731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13509a2cdc56a02895bb847dc50b761183a1b65719b132d64c11919c594432ec`  
		Last Modified: Thu, 12 Nov 2026 00:42:42 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d074b749112b52ef74bcf33696a5ae19536998ed01d31b10fef789acc1a2dc00`  
		Last Modified: Thu, 12 Nov 2026 00:42:42 GMT  
		Size: 12.4 KB (12433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eccdb3e6c8a0bd7de0b78eff0687d8e4867b2274d1db650629dd30bc1329e42`  
		Last Modified: Thu, 12 Nov 2026 00:42:42 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec775d24a07a9558f330f637afea1bdf7221ab85f0865c7cbfcc2c22b86574c`  
		Last Modified: Thu, 12 Nov 2026 00:42:42 GMT  
		Size: 42.3 KB (42323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c96d1255aacb5540af39f0812a50a8eff7218c4fdcabd4294e6fe6251388daaf`  
		Last Modified: Thu, 12 Nov 2026 00:42:50 GMT  
		Size: 369.9 MB (369944854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:105d387356f9ed80121251df79f118aa37d0718bb0334270ba2bad8e787402bc`  
		Last Modified: Thu, 12 Nov 2026 00:42:43 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6165dbb8ba536e330316dfb5d98c0ecc6b37eb9548f9f7fb07ef813539f97e5`  
		Last Modified: Thu, 12 Nov 2026 00:42:43 GMT  
		Size: 13.9 KB (13870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea61cbeb53d7344ae82d28c4eaa35732b92f5de5638bdbdd322646b28765b31e`  
		Last Modified: Thu, 12 Nov 2026 00:42:44 GMT  
		Size: 13.3 MB (13278263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:latest` - unknown; unknown

```console
$ docker pull open-liberty@sha256:ce8f807600fc7b9f2c4b9ecf573395709de5b6184ba69e738e764624570b3a38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5265602 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1781a94d91f68075f532dc6a1774963ed16264aaa6966e6b57faef219cc82943`

```dockerfile
```

-	Layers:
	-	`sha256:a17ade92855de20e841b2bb7e4ff61a56c96599bcab4e3492c5e94a66bd3d5ba`  
		Last Modified: Thu, 12 Nov 2026 00:42:42 GMT  
		Size: 5.2 MB (5225565 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a0d0b5de8e5090636e2db71baa878c069a3eacba902c6652eb78141817c2ea2`  
		Last Modified: Thu, 12 Nov 2026 00:42:42 GMT  
		Size: 40.0 KB (40037 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:latest` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:21c94006468aa96ce97974f1137778edb9e51adf448d201e17cf5875ca492ae9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.2 MB (490243308 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbe055ce0b972b4b05a8f3fef304d442c7288634fa1784188f99f9fda21945e4`
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
ENV JAVA_VERSION=8.0.512.0
# Thu, 12 Nov 2026 02:32:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='449fae1d8de853aed2e5e07526487c7b6b83065cb57e408adc554a2d073896f2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='942dd89c2180fabe6e6c411c9ee76ae69a7548a9dcbe2ced6cb03bb520768434';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='a83ea13d6e79f7dc089e4ab54cd7cb4c271fcccf9794f2fe2b4afb86e1586dd9';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='9dc10dd03097c79e4322f5eddeccc3755b3bf6368939b435d4b6851991c9ffc8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 12 Nov 2026 02:32:09 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 12 Nov 2026 02:32:09 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 12 Nov 2026 02:33:17 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 05:47:10 GMT
USER root
# Thu, 12 Nov 2026 05:47:10 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 05:47:10 GMT
ARG LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f
# Thu, 12 Nov 2026 05:47:10 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip
# Thu, 12 Nov 2026 05:47:10 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 05:47:10 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 05:47:10 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 05:47:10 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Thu, 12 Nov 2026 05:47:10 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Thu, 12 Nov 2026 05:52:12 GMT
COPY helpers /opt/ol/helpers # buildkit
# Thu, 12 Nov 2026 05:52:12 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Thu, 12 Nov 2026 05:52:13 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 05:52:46 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Thu, 12 Nov 2026 05:52:46 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Thu, 12 Nov 2026 05:52:52 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 05:52:53 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 05:53:37 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Thu, 12 Nov 2026 05:53:37 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 05:53:37 GMT
USER 1001
# Thu, 12 Nov 2026 05:53:37 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 05:53:37 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 05:53:37 GMT
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
	-	`sha256:b009ed13a2eda0403642d4d894499d4c188c533a01106f7e417c7f71577badce`  
		Last Modified: Thu, 12 Nov 2026 02:33:58 GMT  
		Size: 56.2 MB (56200766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd5f95d24bdc0cea38807c15f977676f99f9d78a2774981c6f4ea2a6a8c5df7`  
		Last Modified: Thu, 12 Nov 2026 02:33:57 GMT  
		Size: 3.7 MB (3670771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f2ae6fe09404b81d881267a9318d76b1024ecaad00d73ca3fe662360e542528`  
		Last Modified: Thu, 12 Nov 2026 05:50:04 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b9612ac2b8acd5437a28522d21e2fe6fec93129ba95e9d1e5d5083b6e63525`  
		Last Modified: Thu, 12 Nov 2026 05:54:47 GMT  
		Size: 12.4 KB (12439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0beb1f19a6f11c2d418bf4e7c87991b042a17b8a54ef0eeb2c7d8239cd849d4`  
		Last Modified: Thu, 12 Nov 2026 05:54:47 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3725db541754a39ea5fc277c56b0fd8b5da49d915fd19524121923b78a1b689`  
		Last Modified: Thu, 12 Nov 2026 05:54:47 GMT  
		Size: 36.5 KB (36497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a4e208a62458754f42c743e5cff9055b864c98666c88bd5231e490f563c6dd`  
		Last Modified: Thu, 12 Nov 2026 05:54:57 GMT  
		Size: 369.9 MB (369945365 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa0085b952a847eb68583d85f8d4602ae705569270c9b019efc0d259d657a84`  
		Last Modified: Thu, 12 Nov 2026 05:54:48 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d14d0498794f92978e41172c0946c04fd5d7fb19425799029dcc401cfc1801`  
		Last Modified: Thu, 12 Nov 2026 05:54:48 GMT  
		Size: 13.9 KB (13883 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1f1fa967dc1a9483b234494354cbb5920c59c8259e303549c01085285ed26c`  
		Last Modified: Thu, 12 Nov 2026 05:54:49 GMT  
		Size: 12.2 MB (12188580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:latest` - unknown; unknown

```console
$ docker pull open-liberty@sha256:99d1fdf939684e3be1c7d3ab0d7a2ce4e9bb5ae1d5f45620223fed12c55bea97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5269686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c28616899721083f6e379ef192030d27c44cbcd416dd896db2950187c6fab6a`

```dockerfile
```

-	Layers:
	-	`sha256:e0e8f5d54c4c2d9c715530e8375d5f376e15102c0014ab97b4ed5121d9189feb`  
		Last Modified: Thu, 12 Nov 2026 05:54:47 GMT  
		Size: 5.2 MB (5229756 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7ac8712091b901d3ec41a70cfc18ffa7440c361bfb2344c7bcfb6ed28818e1b`  
		Last Modified: Thu, 12 Nov 2026 05:54:47 GMT  
		Size: 39.9 KB (39930 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:latest` - linux; s390x

```console
$ docker pull open-liberty@sha256:d2d6c273065f83b404715d7670ed837204de49e33ef1c5700f8bfc28bd6c5cc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.6 MB (488621581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:954043d85a9f535a6873147caf2764ca0df8e83ef29b1c45797954f7b36d8524`
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
# Wed, 11 Nov 2026 23:17:31 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:17:31 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:17:31 GMT
ENV JAVA_VERSION=8.0.512.0
# Wed, 11 Nov 2026 23:17:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='449fae1d8de853aed2e5e07526487c7b6b83065cb57e408adc554a2d073896f2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='942dd89c2180fabe6e6c411c9ee76ae69a7548a9dcbe2ced6cb03bb520768434';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='a83ea13d6e79f7dc089e4ab54cd7cb4c271fcccf9794f2fe2b4afb86e1586dd9';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='9dc10dd03097c79e4322f5eddeccc3755b3bf6368939b435d4b6851991c9ffc8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:17:32 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:17:32 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:18:36 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 00:39:03 GMT
USER root
# Thu, 12 Nov 2026 00:39:03 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 00:39:03 GMT
ARG LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f
# Thu, 12 Nov 2026 00:39:03 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip
# Thu, 12 Nov 2026 00:39:03 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 00:39:03 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:39:03 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 00:39:03 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Thu, 12 Nov 2026 00:39:03 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Thu, 12 Nov 2026 00:40:17 GMT
COPY helpers /opt/ol/helpers # buildkit
# Thu, 12 Nov 2026 00:40:17 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Thu, 12 Nov 2026 00:40:18 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 00:40:37 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Thu, 12 Nov 2026 00:40:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:40:38 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 00:40:39 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 00:41:10 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=bd05075449e6a3464c9514967ee0c1f83725485f LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.11/openliberty-runtime-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Thu, 12 Nov 2026 00:41:10 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 00:41:10 GMT
USER 1001
# Thu, 12 Nov 2026 00:41:10 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 00:41:10 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 00:41:10 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:bd74e3675913208a1119a54d3789c9fc5c9abdb19b714ce963adc875d0495d64`  
		Last Modified: Wed, 11 Nov 2026 22:58:51 GMT  
		Size: 30.0 MB (29967584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91c9967c8d1d1a0b372c4f98c4fd2c2cf747bbe659bbf91bbc44b05ec20247b2`  
		Last Modified: Wed, 11 Nov 2026 23:18:57 GMT  
		Size: 13.1 MB (13098261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1a97aa1f18008e5ea14981491045c0cf809cea3b1a3dff5fb8ce5be98a6c21`  
		Last Modified: Wed, 11 Nov 2026 23:18:58 GMT  
		Size: 57.6 MB (57614238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9a5d279213e538cdb46ddcc6286bea8d164c4316e57cfeada03b2bf36369de`  
		Last Modified: Wed, 11 Nov 2026 23:18:57 GMT  
		Size: 4.4 MB (4396530 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f453fb29753f1792af6dd41f86c03a982e477484b4a7d1a8e02bb37e041b14`  
		Last Modified: Thu, 12 Nov 2026 00:39:51 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43d0e8cf3731856b311904c82a05846c042567f474a8461e6b4368750dad72de`  
		Last Modified: Thu, 12 Nov 2026 00:42:19 GMT  
		Size: 12.4 KB (12438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7125ba64a564e9d4d110aa34468b1a2c439738ec609c81e7351807e0a29b5f09`  
		Last Modified: Thu, 12 Nov 2026 00:42:19 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90731ebe36795c45e3db630482d6995ff4eada9a28f864196a88661494dab7e2`  
		Last Modified: Thu, 12 Nov 2026 00:42:19 GMT  
		Size: 33.1 KB (33112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:177db732e242d9ea883e14a2defa8d7ec01b89298960fff297ddf50026b75f07`  
		Last Modified: Thu, 12 Nov 2026 00:42:28 GMT  
		Size: 369.9 MB (369944536 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0cec5d2503bfc38523d8596bda04695c310fbc90a1313a10edef83cceb9bab`  
		Last Modified: Thu, 12 Nov 2026 00:42:20 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1a8be87ea69ae4646aa59ce0e9f65571be882deac049923f8a278d6a44101c`  
		Last Modified: Thu, 12 Nov 2026 00:42:21 GMT  
		Size: 13.9 KB (13880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d02167d8ece0927f6387b3d8dc3f2684b3213f6e4fb8a21cd0d12621275a47e6`  
		Last Modified: Thu, 12 Nov 2026 00:42:22 GMT  
		Size: 13.5 MB (13538650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:latest` - unknown; unknown

```console
$ docker pull open-liberty@sha256:cc29cf80809e31534f485041eb58e4c28320257e7dd057875535ba97dd3f53fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5266460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c58d4dadfd05428faa82c92eef15de829a32f03f21a178f413f3fa6f644538`

```dockerfile
```

-	Layers:
	-	`sha256:c57eee2cf3158730b54a0fa1d770b12b4c6f5510fd367dd866f9102a724a5ca4`  
		Last Modified: Thu, 12 Nov 2026 00:42:19 GMT  
		Size: 5.2 MB (5226575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1728b3ec62a240c6742875aa7550ef2bcf7fa4c36084176940091050d4e0f265`  
		Last Modified: Thu, 12 Nov 2026 00:42:18 GMT  
		Size: 39.9 KB (39885 bytes)  
		MIME: application/vnd.in-toto+json
