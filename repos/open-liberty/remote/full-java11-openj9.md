## `open-liberty:full-java11-openj9`

```console
$ docker pull open-liberty@sha256:fcc9287ec502fe47b1b530697c6821702da38c9b47a48e7df14e3f9584419835
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
$ docker pull open-liberty@sha256:55024918742ebbabd0fce2c727e6611c5d679ba566d11e4726073417af2bdbd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.7 MB (485710636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94654bc942da98e8475c90ce1c34102a38203d392b72ef8c1d1984fa03f2968f`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 31 Aug 2026 19:21:09 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:21:09 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:21:09 GMT
ENV JAVA_VERSION=11.0.32.10
# Mon, 31 Aug 2026 19:21:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='87cf881a26c4813f38ce2938758cc986fae5d6602b38cf34fd7c3e463f519d6f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_aarch64_linux_11.0.32.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='548e777ec3be117af24fd5864823818cb7096aad707714324bc4edb92e2fa8f4';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_ppc64le_linux_11.0.32.10.tar.gz';          ;;        amd64|x86_64)          ESUM='3636af6794bbaf3ec6727d2446b1f23a4945de17177347f8102d1cec313fcd93';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_x64_linux_11.0.32.10.tar.gz';          ;;        s390x)          ESUM='14061dd6e46a150784a213a68a8d3a3a8ff949abdaa6eb6aac5eee06d198f8ec';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_s390x_linux_11.0.32.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:21:11 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:21:11 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 19:22:14 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 20:35:01 GMT
USER root
# Mon, 31 Aug 2026 20:35:01 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Mon, 31 Aug 2026 20:35:01 GMT
ARG LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3
# Mon, 31 Aug 2026 20:35:01 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip
# Mon, 31 Aug 2026 20:35:01 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 31 Aug 2026 20:35:01 GMT
ARG OPENJ9_SCC=true
# Mon, 31 Aug 2026 20:35:01 GMT
ARG VERBOSE=false
# Mon, 31 Aug 2026 20:35:01 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.8 liberty.version=26.0.0.8 io.openliberty.version=26.0.0.8
# Mon, 31 Aug 2026 20:35:01 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 31 Aug 2026 20:35:01 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 31 Aug 2026 20:35:01 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 31 Aug 2026 20:35:02 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 31 Aug 2026 20:35:17 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 31 Aug 2026 20:35:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 31 Aug 2026 20:35:17 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 31 Aug 2026 20:35:18 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 31 Aug 2026 20:35:33 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 31 Aug 2026 20:35:33 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 31 Aug 2026 20:35:33 GMT
USER 1001
# Mon, 31 Aug 2026 20:35:33 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 31 Aug 2026 20:35:33 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 31 Aug 2026 20:35:33 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62343964edda6faa2fcba7f19e59e5a0aa2e99d396170d84a8642184d30e522b`  
		Last Modified: Mon, 31 Aug 2026 19:22:28 GMT  
		Size: 15.2 MB (15169836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de917889943006e886effdb0295499ad6fff6f534d54b2a2d781ecf37dff20a`  
		Last Modified: Mon, 31 Aug 2026 19:22:30 GMT  
		Size: 56.4 MB (56368596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a4fd68edf7fd6daefaedd67bce30fb965e5c229be86867778efda5f92dbef9c`  
		Last Modified: Mon, 31 Aug 2026 19:22:28 GMT  
		Size: 4.5 MB (4468152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32b55c3b7107e0ea0d5f9d966c6940af3be5f58cf7a65cc9ccf89dcc21dae4ae`  
		Last Modified: Mon, 31 Aug 2026 20:35:57 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4feeff154e915bc70a375988cb2d3e81690a2fd47bc0b172916aaf914e465741`  
		Last Modified: Mon, 31 Aug 2026 20:35:57 GMT  
		Size: 12.4 KB (12432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd838e5463662b8bb93985eb3b61e04b76ca1a3561abb9e215073110cc421075`  
		Last Modified: Mon, 31 Aug 2026 20:35:57 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efea579cfe80ff19780899b2ff24a318da0522c0c639bb7113d48c890c797ce3`  
		Last Modified: Mon, 31 Aug 2026 20:35:57 GMT  
		Size: 31.7 KB (31749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8310e2be40cb4de22383ede35768137ee585ac4906825037462204b87234da67`  
		Last Modified: Mon, 31 Aug 2026 20:36:06 GMT  
		Size: 366.4 MB (366412597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735bf21f995a8307bf9fb442fd4a78cd707bd2a37cb482933a10b60b81a1100d`  
		Last Modified: Mon, 31 Aug 2026 20:35:58 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd834291e18e4cfa639caca68f3095da761454f37569a66c7d716b57998daea8`  
		Last Modified: Mon, 31 Aug 2026 20:35:58 GMT  
		Size: 13.9 KB (13888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44eb18212c0759cab781e2d4c71d1640a12575cfe11becc7de5d988b4fbb672d`  
		Last Modified: Mon, 31 Aug 2026 20:35:59 GMT  
		Size: 13.5 MB (13478236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:3268dc3bd8a6a94f5ea1890a84392e962486297fd7bca66563237f95a044069c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5234649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43fd2d79f4defa2cdc069aa672ef14b29f18f568f89ee639947b170940b59590`

```dockerfile
```

-	Layers:
	-	`sha256:bb91a389532245680f04bb21d9b5496a318925a8a84358c0d92b2bd57f296e4e`  
		Last Modified: Mon, 31 Aug 2026 20:35:57 GMT  
		Size: 5.2 MB (5195385 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08f87ead0e4517afa99a89c647f9a66bdf71896f3940eee0e5adf44b675ee5d4`  
		Last Modified: Mon, 31 Aug 2026 20:35:57 GMT  
		Size: 39.3 KB (39264 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java11-openj9` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:3eff5027eea3787e7d8c6246f19b69c532777cc064d49b0d3ac16b4f667b88e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.4 MB (482354383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2fb58478b95ef2e6ee119ef5a55c58fb944955b1f4092b3fb6388ac9a974e1ab`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 31 Aug 2026 19:37:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:37:06 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:37:06 GMT
ENV JAVA_VERSION=11.0.32.10
# Mon, 31 Aug 2026 19:38:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='87cf881a26c4813f38ce2938758cc986fae5d6602b38cf34fd7c3e463f519d6f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_aarch64_linux_11.0.32.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='548e777ec3be117af24fd5864823818cb7096aad707714324bc4edb92e2fa8f4';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_ppc64le_linux_11.0.32.10.tar.gz';          ;;        amd64|x86_64)          ESUM='3636af6794bbaf3ec6727d2446b1f23a4945de17177347f8102d1cec313fcd93';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_x64_linux_11.0.32.10.tar.gz';          ;;        s390x)          ESUM='14061dd6e46a150784a213a68a8d3a3a8ff949abdaa6eb6aac5eee06d198f8ec';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_s390x_linux_11.0.32.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:38:42 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:38:42 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 19:39:45 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 20:15:57 GMT
USER root
# Mon, 31 Aug 2026 20:15:57 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Mon, 31 Aug 2026 20:15:57 GMT
ARG LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3
# Mon, 31 Aug 2026 20:15:57 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip
# Mon, 31 Aug 2026 20:15:57 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 31 Aug 2026 20:15:57 GMT
ARG OPENJ9_SCC=true
# Mon, 31 Aug 2026 20:15:57 GMT
ARG VERBOSE=false
# Mon, 31 Aug 2026 20:15:57 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.8 liberty.version=26.0.0.8 io.openliberty.version=26.0.0.8
# Mon, 31 Aug 2026 20:15:57 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 31 Aug 2026 20:15:57 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 31 Aug 2026 20:15:57 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 31 Aug 2026 20:15:57 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 31 Aug 2026 20:16:16 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 31 Aug 2026 20:16:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 31 Aug 2026 20:16:16 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 31 Aug 2026 20:16:16 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 31 Aug 2026 20:16:36 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 31 Aug 2026 20:16:36 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 31 Aug 2026 20:16:36 GMT
USER 1001
# Mon, 31 Aug 2026 20:16:36 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 31 Aug 2026 20:16:36 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 31 Aug 2026 20:16:36 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f5ed290cca339da55ece17c693ba00a0c50189ce92f44817f2b7f649bba5b1`  
		Last Modified: Mon, 31 Aug 2026 19:38:30 GMT  
		Size: 15.1 MB (15062084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c1724690d35bef5dc198a1378893502fc9acaff29f230e5e82420b3a891f805`  
		Last Modified: Mon, 31 Aug 2026 19:39:59 GMT  
		Size: 54.6 MB (54577519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a7b7ab4f8651c01c82458b69452e8df9f8d7e5ef6ed1e5a8489cbffb06e2db`  
		Last Modified: Mon, 31 Aug 2026 19:39:58 GMT  
		Size: 4.3 MB (4256681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909ed30767ac902a86a8c0adfaf9446c2a0f0d8e2eff748a7f7a2f78f8b761ac`  
		Last Modified: Mon, 31 Aug 2026 20:17:01 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e247c4b2ed57b4b34584c3e54ecb935dfccc6a4f23e21b50cd79d6b288e69f3e`  
		Last Modified: Mon, 31 Aug 2026 20:17:01 GMT  
		Size: 12.4 KB (12434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee4bb745e6c3ad036eaa6e2f021420bfef8e6917a20ac62e6cde158340d08ac`  
		Last Modified: Mon, 31 Aug 2026 20:17:01 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43b12130640c363c95f64f6d44ec1c0e22055dca9fda598cacca255c3f2575b`  
		Last Modified: Mon, 31 Aug 2026 20:17:01 GMT  
		Size: 42.3 KB (42323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a4438d5626d8ceeaf9b61ae7b85fa301f70f6b7b199e90917ad8c2e4fbb5166`  
		Last Modified: Mon, 31 Aug 2026 20:17:09 GMT  
		Size: 366.4 MB (366412486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c898b8391fe3af858fef7744890bfca569ee891d0f57cf9ca68e7300157342`  
		Last Modified: Mon, 31 Aug 2026 20:17:02 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e7612df604e5b26a66d772ffe1fd51e7e7ad65e628d609b9f34449b50cb0b5`  
		Last Modified: Mon, 31 Aug 2026 20:17:02 GMT  
		Size: 13.9 KB (13878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6a6a6cf83a9648af38ddf472639d7b17fa571105f9778cd66d5869ed036d1f`  
		Last Modified: Mon, 31 Aug 2026 20:17:03 GMT  
		Size: 13.1 MB (13087395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:e808aa90bca812668e6ef650d42e6006d11a442fd4eaad347beebc4dfe8c0f5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3321d26856da5c771edbf945703bcdda261af16086ede1145774e840638b8ff6`

```dockerfile
```

-	Layers:
	-	`sha256:fe0f38478aa431a16328f89c5d1f8c99df0ba8a7ffaf565a39a8887c68b33625`  
		Last Modified: Mon, 31 Aug 2026 20:17:01 GMT  
		Size: 5.2 MB (5193915 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3770e69b3265b07a26d0f0176cb70848b6731a2cfc5d98cf81b5165a5e18562a`  
		Last Modified: Mon, 31 Aug 2026 20:17:01 GMT  
		Size: 39.4 KB (39392 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java11-openj9` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:d012c0d71cc0fbb8611982f2275dcd3d2e6c2a2548b8ab30d0a24a5251ffece3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **491.5 MB (491458256 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e38ca54cc00364fcc9f0e6944da24c52805bb26745a9180bfdf2cbf1aa79c9`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 19 Aug 2026 21:25:52 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 19 Aug 2026 21:25:52 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 21:25:52 GMT
ENV JAVA_VERSION=11.0.32.10
# Mon, 31 Aug 2026 22:53:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='87cf881a26c4813f38ce2938758cc986fae5d6602b38cf34fd7c3e463f519d6f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_aarch64_linux_11.0.32.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='548e777ec3be117af24fd5864823818cb7096aad707714324bc4edb92e2fa8f4';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_ppc64le_linux_11.0.32.10.tar.gz';          ;;        amd64|x86_64)          ESUM='3636af6794bbaf3ec6727d2446b1f23a4945de17177347f8102d1cec313fcd93';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_x64_linux_11.0.32.10.tar.gz';          ;;        s390x)          ESUM='14061dd6e46a150784a213a68a8d3a3a8ff949abdaa6eb6aac5eee06d198f8ec';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_s390x_linux_11.0.32.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 22:53:10 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 22:53:10 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 22:54:16 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 23:08:56 GMT
USER root
# Mon, 31 Aug 2026 23:08:56 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Mon, 31 Aug 2026 23:08:56 GMT
ARG LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3
# Mon, 31 Aug 2026 23:08:56 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip
# Mon, 31 Aug 2026 23:08:56 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 31 Aug 2026 23:08:56 GMT
ARG OPENJ9_SCC=true
# Mon, 31 Aug 2026 23:08:56 GMT
ARG VERBOSE=false
# Mon, 31 Aug 2026 23:08:56 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.8 liberty.version=26.0.0.8 io.openliberty.version=26.0.0.8
# Mon, 31 Aug 2026 23:08:56 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 31 Aug 2026 23:09:58 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 31 Aug 2026 23:09:58 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 31 Aug 2026 23:09:59 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 31 Aug 2026 23:10:19 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 31 Aug 2026 23:10:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 31 Aug 2026 23:10:20 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 31 Aug 2026 23:10:21 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 31 Aug 2026 23:10:58 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 31 Aug 2026 23:10:58 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 31 Aug 2026 23:10:58 GMT
USER 1001
# Mon, 31 Aug 2026 23:10:58 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 31 Aug 2026 23:10:58 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 31 Aug 2026 23:10:58 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:9ce277f493517cc144a5fc2f41269e529e99b662f089df362b22f62d1fbb7436`  
		Last Modified: Mon, 17 Aug 2026 14:27:41 GMT  
		Size: 34.3 MB (34311195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0821d8a28344aae1957817b1d0874ae524cba14349eb71056577895401dc11a3`  
		Last Modified: Wed, 19 Aug 2026 21:27:56 GMT  
		Size: 13.7 MB (13747277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ed4ce3f942d2ce8ad59587af466afc08c19575bf39f9159351f9694f09cd78`  
		Last Modified: Mon, 31 Aug 2026 22:54:44 GMT  
		Size: 58.3 MB (58334280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb86a84d01b221a3c287b645a71ef1fff9734a70e49a5b4853ca7400ba46041a`  
		Last Modified: Mon, 31 Aug 2026 22:54:43 GMT  
		Size: 3.5 MB (3533575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd40355757fd2030cf52d14707b33c1b861aae1b4cb902c50c1968a35adc500`  
		Last Modified: Mon, 31 Aug 2026 23:09:43 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd318c706bc0f574a453594cb0406cc4596bdb278b37d458afb50c04d3b1596c`  
		Last Modified: Mon, 31 Aug 2026 23:11:47 GMT  
		Size: 12.4 KB (12438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22057ab1e647540934182fed3c6a65ce950380f1dd00abd9aaf2ded5c78a223b`  
		Last Modified: Mon, 31 Aug 2026 23:11:47 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c56c301f70f343cca8c3153809a99fe9918c59121be932b85f306c2f2328b9`  
		Last Modified: Mon, 31 Aug 2026 23:11:47 GMT  
		Size: 36.5 KB (36494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34000dc6b4ebbedccf0925f901835f51df543bbfa6d30350a244b88a46de25cc`  
		Last Modified: Mon, 31 Aug 2026 23:11:55 GMT  
		Size: 369.5 MB (369542885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518ada0e72875f92d2109e839dc382157d058ec9f86187bbfb544bb035e687da`  
		Last Modified: Mon, 31 Aug 2026 23:11:48 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c32151d50942d97f8742dc46b02c0b79958cc13aa1d89fdc72c467bf2dd9e7`  
		Last Modified: Mon, 31 Aug 2026 23:11:48 GMT  
		Size: 13.9 KB (13879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112d4615c7cb934e4f6011365fdede4452e1ec57a1d94410b640d14f94fdafd0`  
		Last Modified: Mon, 31 Aug 2026 23:11:48 GMT  
		Size: 11.9 MB (11923885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:57761c7d4525521bb27b1c01376e36c3d4ce6441212ac8b4d882862a670fd454
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5238501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1dd13f3d899579714372ac0507ce9364e3ef7ca50a9117a87ffb536b184aca4b`

```dockerfile
```

-	Layers:
	-	`sha256:e73a7ef3618407481eb9e6c6031bd191fdad0e810b7e154b76a5cfbfd8e359c6`  
		Last Modified: Mon, 31 Aug 2026 23:11:47 GMT  
		Size: 5.2 MB (5200007 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4b6d6bedebe3046713d3d5449445cf1f2f8a88b742668f140146e803e6d85e58`  
		Last Modified: Mon, 31 Aug 2026 23:11:46 GMT  
		Size: 38.5 KB (38494 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java11-openj9` - linux; s390x

```console
$ docker pull open-liberty@sha256:fddcd5cc4749d30b090ac34cac205ebaff6645c86bc01f2f999758c263f57723
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.4 MB (488352997 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c96162048118df4921bfc30647ec406a730c3ce41eb90c51cd1f167e9341231`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 31 Aug 2026 18:33:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 18:33:21 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:33:21 GMT
ENV JAVA_VERSION=11.0.32.10
# Mon, 31 Aug 2026 23:09:01 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='87cf881a26c4813f38ce2938758cc986fae5d6602b38cf34fd7c3e463f519d6f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_aarch64_linux_11.0.32.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='548e777ec3be117af24fd5864823818cb7096aad707714324bc4edb92e2fa8f4';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_ppc64le_linux_11.0.32.10.tar.gz';          ;;        amd64|x86_64)          ESUM='3636af6794bbaf3ec6727d2446b1f23a4945de17177347f8102d1cec313fcd93';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_x64_linux_11.0.32.10.tar.gz';          ;;        s390x)          ESUM='14061dd6e46a150784a213a68a8d3a3a8ff949abdaa6eb6aac5eee06d198f8ec';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.10/ibm-semeru-open-jre_s390x_linux_11.0.32.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 23:09:01 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 23:09:01 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 23:10:04 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 23:34:49 GMT
USER root
# Mon, 31 Aug 2026 23:34:49 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Mon, 31 Aug 2026 23:34:49 GMT
ARG LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3
# Mon, 31 Aug 2026 23:34:49 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip
# Mon, 31 Aug 2026 23:34:49 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 31 Aug 2026 23:34:49 GMT
ARG OPENJ9_SCC=true
# Mon, 31 Aug 2026 23:34:49 GMT
ARG VERBOSE=false
# Mon, 31 Aug 2026 23:34:49 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.8 liberty.version=26.0.0.8 io.openliberty.version=26.0.0.8
# Mon, 31 Aug 2026 23:34:49 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 31 Aug 2026 23:34:49 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 31 Aug 2026 23:34:49 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 31 Aug 2026 23:34:50 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 31 Aug 2026 23:35:07 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 31 Aug 2026 23:35:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 31 Aug 2026 23:35:08 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 31 Aug 2026 23:35:08 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 31 Aug 2026 23:35:34 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 31 Aug 2026 23:35:34 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 31 Aug 2026 23:35:34 GMT
USER 1001
# Mon, 31 Aug 2026 23:35:34 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 31 Aug 2026 23:35:34 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 31 Aug 2026 23:35:34 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc53ad180144083eaa682c0dd4546c9c2f99db381b224d5c1c91cfe39cd4324`  
		Last Modified: Mon, 31 Aug 2026 18:34:44 GMT  
		Size: 15.2 MB (15178058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbeaca54dbc1f718effe3b5b376455a7e011390cb2446ec1faed537b2fc13f2e`  
		Last Modified: Mon, 31 Aug 2026 23:10:26 GMT  
		Size: 58.5 MB (58509738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15df83936de40597f4230711ad6bcae483c019272d16eec510ac21749611fee1`  
		Last Modified: Mon, 31 Aug 2026 23:10:25 GMT  
		Size: 4.6 MB (4649361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26dba13b5f095c299e5682c1b819c607dea7f6b02d012579b9a6b7674ec0a541`  
		Last Modified: Mon, 31 Aug 2026 23:35:26 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b173d955c6aa9f7cf9f28822a9c140f1187ede571961105078782afbe531eb`  
		Last Modified: Mon, 31 Aug 2026 23:36:15 GMT  
		Size: 12.4 KB (12437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec81999811d1cc85d24dc3f2839d7df1eb9741671b53ff71fcf83ba47ee07924`  
		Last Modified: Mon, 31 Aug 2026 23:36:15 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e15a183923a257c13bbfb8e15d9163c17d874b7b176645ad481c4d7dea55b9`  
		Last Modified: Mon, 31 Aug 2026 23:35:26 GMT  
		Size: 33.1 KB (33112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765677f47791b9dbadc4fd072cc3cd56b9307bf6705c3c48bd4797232edb4493`  
		Last Modified: Mon, 31 Aug 2026 23:36:21 GMT  
		Size: 366.4 MB (366412278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d051ecea1ff40e709fb203d610c886189c89383dc2183ea41c92b9aa2e965317`  
		Last Modified: Mon, 31 Aug 2026 23:36:15 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93a6e95a127005813879b2c1cd2e357f0ae4b250a4adb2c1f923bc91ba72e8f8`  
		Last Modified: Mon, 31 Aug 2026 23:36:16 GMT  
		Size: 13.9 KB (13872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f45a805d095512235c9ce588a77ca6f1cb0a8f75dabac21e17622c143a24084`  
		Last Modified: Mon, 31 Aug 2026 23:36:16 GMT  
		Size: 13.6 MB (13606543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:9da2a289387748dce186f5480d5c08b6e0a8f9f151e910d996a7f61bf47d9c41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5235645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d967ac702085849d0955fc7f7f81183ef296fe768aac5222c51a5f4a82ed2cf`

```dockerfile
```

-	Layers:
	-	`sha256:a420f6c6b7a64d42af2d16ad0ea8f0a66b03b478929996b27b6c7437b4690548`  
		Last Modified: Mon, 31 Aug 2026 23:36:15 GMT  
		Size: 5.2 MB (5196382 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64c9e8b0cb14c8c48e9ce7f3d7b3cd6c89079bf287cb1bc365ac9b7b7580a67c`  
		Last Modified: Mon, 31 Aug 2026 23:36:15 GMT  
		Size: 39.3 KB (39263 bytes)  
		MIME: application/vnd.in-toto+json
