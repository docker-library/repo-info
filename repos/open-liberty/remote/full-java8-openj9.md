## `open-liberty:full-java8-openj9`

```console
$ docker pull open-liberty@sha256:07070b6143adfa8cea824424d2821fe951039adb42466802ccc50209777756bc
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

### `open-liberty:full-java8-openj9` - linux; amd64

```console
$ docker pull open-liberty@sha256:760cebc84b53d269f13a4a0d59a8d5edd8b8b680f1d8a11a2e1bd92b3035ed80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **483.2 MB (483203679 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:877abcdae82e5b2533dc0025c0d677a67185793cec82e68c6a0ee679ef82c23d`
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
# Mon, 31 Aug 2026 19:20:14 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:20:14 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:20:14 GMT
ENV JAVA_VERSION=8.0.504.0
# Mon, 31 Aug 2026 19:20:16 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='69d7c62f8ecfd9ef8c7a2815509e264d9816cddb9ff41cca729e4e96cce42187';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_aarch64_linux_8.0.504.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='4cadcb9a5158afc3fb80184c230da6021c9f7f3a26a72fc55504ce4ba5a62ee8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_ppc64le_linux_8.0.504.0.tar.gz';          ;;        amd64|x86_64)          ESUM='c2bf4b2e06ab4476fdbea4bc27eb26d61ad5afa6b4980a1373ec049fa3e441ca';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_x64_linux_8.0.504.0.tar.gz';          ;;        s390x)          ESUM='e0185244a811fb120e8735decf37ec1183f7065da4a898b9598c9d3fa4a52eaa';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_s390x_linux_8.0.504.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:20:16 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:20:16 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 19:21:19 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 20:34:35 GMT
USER root
# Mon, 31 Aug 2026 20:34:35 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Mon, 31 Aug 2026 20:34:35 GMT
ARG LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3
# Mon, 31 Aug 2026 20:34:35 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip
# Mon, 31 Aug 2026 20:34:35 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 31 Aug 2026 20:34:35 GMT
ARG OPENJ9_SCC=true
# Mon, 31 Aug 2026 20:34:35 GMT
ARG VERBOSE=false
# Mon, 31 Aug 2026 20:34:35 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.8 liberty.version=26.0.0.8 io.openliberty.version=26.0.0.8
# Mon, 31 Aug 2026 20:34:35 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 31 Aug 2026 20:34:35 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 31 Aug 2026 20:34:35 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 31 Aug 2026 20:34:35 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 31 Aug 2026 20:34:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 31 Aug 2026 20:34:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 31 Aug 2026 20:34:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 31 Aug 2026 20:34:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 31 Aug 2026 20:35:05 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 31 Aug 2026 20:35:05 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 31 Aug 2026 20:35:05 GMT
USER 1001
# Mon, 31 Aug 2026 20:35:05 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 31 Aug 2026 20:35:05 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 31 Aug 2026 20:35:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2862c2f4f09621a56b873d61123af557f243cff747c1fb9ad4f2b89e21f375`  
		Last Modified: Mon, 31 Aug 2026 19:21:32 GMT  
		Size: 15.2 MB (15169823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cc1e2ffc87c62809158384f9b74c966dd29fa5152932c14b7288515e441a488`  
		Last Modified: Mon, 31 Aug 2026 19:21:33 GMT  
		Size: 54.4 MB (54434748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4d1ef2a05d51478c37fb25646229675b480eae09eaa5f4b959859bb339eba1`  
		Last Modified: Mon, 31 Aug 2026 19:21:31 GMT  
		Size: 4.2 MB (4223117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdf06a3c31bd9bc85034f879779707da44ff7781ef716ff72f518f63429564c7`  
		Last Modified: Mon, 31 Aug 2026 20:35:28 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837856f0ed1362fb102632479ab4548bc5c33dbcff0b738c1970fa203bca52f1`  
		Last Modified: Mon, 31 Aug 2026 20:35:28 GMT  
		Size: 12.4 KB (12436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:259c92551c5a4d3d2db46a63046670be28a892ff8d3b45224f37b43000c0ac50`  
		Last Modified: Mon, 31 Aug 2026 20:35:28 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eb6c0212dd833ae7cc85e510fdd96cbf2e1be4203645a81a1416ca138f6cbcd`  
		Last Modified: Mon, 31 Aug 2026 20:35:28 GMT  
		Size: 31.7 KB (31749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf1514e1d671e5e27f24ffd5f8e1bfd8e135e823ca2b4f9fe71a5edefe6d8f5`  
		Last Modified: Mon, 31 Aug 2026 20:35:37 GMT  
		Size: 366.4 MB (366412657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55cb9a13d93863559123249a15c9dcbce04a83b56aab97860bbdfbc75cd0a609`  
		Last Modified: Mon, 31 Aug 2026 20:35:30 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74de7895737c27ec089789cc4cd79282564cd1dec33f89b4604374179c390ce`  
		Last Modified: Mon, 31 Aug 2026 20:35:30 GMT  
		Size: 13.9 KB (13871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b06225e7b73a10f90dae3285b7d25fa4abf84974928aea62fd16d4233f7cf6`  
		Last Modified: Mon, 31 Aug 2026 20:35:30 GMT  
		Size: 13.2 MB (13150125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java8-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:d097ac5b4fbf292564673ddd1538e74f0f3a18aed222bbc8a3a57b6774140aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5249761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bad24698b9445816be2b88b6b5feacf03916f1b6e871d3b611e3ccf93f74654b`

```dockerfile
```

-	Layers:
	-	`sha256:55585050b54bce0718433ed06932bd9bd95606ff2c121fb69b6e65ce94d09154`  
		Last Modified: Mon, 31 Aug 2026 20:35:29 GMT  
		Size: 5.2 MB (5209892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bf71531610297e75117c65dfc2cf824e86c74f846fac8ca4e4c3fa5bad898e6`  
		Last Modified: Mon, 31 Aug 2026 20:35:28 GMT  
		Size: 39.9 KB (39869 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java8-openj9` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:7a03a115fce2a2fca842839d69ac58e7ddc12055e39ec4bc9237e6d0a28b79e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **481.8 MB (481830653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18592dfbb766641e3a79ea1c3a2d09f61bd79d368e7546675eb77ed2e47d4052`
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
# Mon, 31 Aug 2026 19:37:27 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 19:37:27 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:37:27 GMT
ENV JAVA_VERSION=8.0.504.0
# Mon, 31 Aug 2026 19:37:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='69d7c62f8ecfd9ef8c7a2815509e264d9816cddb9ff41cca729e4e96cce42187';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_aarch64_linux_8.0.504.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='4cadcb9a5158afc3fb80184c230da6021c9f7f3a26a72fc55504ce4ba5a62ee8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_ppc64le_linux_8.0.504.0.tar.gz';          ;;        amd64|x86_64)          ESUM='c2bf4b2e06ab4476fdbea4bc27eb26d61ad5afa6b4980a1373ec049fa3e441ca';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_x64_linux_8.0.504.0.tar.gz';          ;;        s390x)          ESUM='e0185244a811fb120e8735decf37ec1183f7065da4a898b9598c9d3fa4a52eaa';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_s390x_linux_8.0.504.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 19:37:29 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 19:37:29 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 19:38:32 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 20:15:44 GMT
USER root
# Mon, 31 Aug 2026 20:15:44 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Mon, 31 Aug 2026 20:15:44 GMT
ARG LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3
# Mon, 31 Aug 2026 20:15:44 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip
# Mon, 31 Aug 2026 20:15:44 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 31 Aug 2026 20:15:44 GMT
ARG OPENJ9_SCC=true
# Mon, 31 Aug 2026 20:15:44 GMT
ARG VERBOSE=false
# Mon, 31 Aug 2026 20:15:44 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.8 liberty.version=26.0.0.8 io.openliberty.version=26.0.0.8
# Mon, 31 Aug 2026 20:15:44 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 31 Aug 2026 20:15:44 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 31 Aug 2026 20:15:44 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 31 Aug 2026 20:15:44 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 31 Aug 2026 20:16:05 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 31 Aug 2026 20:16:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 31 Aug 2026 20:16:05 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 31 Aug 2026 20:16:06 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 31 Aug 2026 20:16:25 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 31 Aug 2026 20:16:25 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 31 Aug 2026 20:16:25 GMT
USER 1001
# Mon, 31 Aug 2026 20:16:25 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 31 Aug 2026 20:16:25 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 31 Aug 2026 20:16:25 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f96e0326a2c65eabfb827aaff96e4ae3c7d74316a4a5b170709cc3f8d4ce4de5`  
		Last Modified: Mon, 31 Aug 2026 19:38:45 GMT  
		Size: 15.1 MB (15062037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71caa9d2291ec5db867760b3ca4c3df75389182ecdb14e1c98f299d11f6a76ce`  
		Last Modified: Mon, 31 Aug 2026 19:38:46 GMT  
		Size: 54.1 MB (54078895 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c709752e75fe69b7fb05a9c67fb96471f2d7e307f61af494b17c7d8777e2a5d`  
		Last Modified: Mon, 31 Aug 2026 19:38:44 GMT  
		Size: 4.1 MB (4122133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343bfb3ab51def3c582cf461adc758716163965c7ee43e44542c1cbb57a5eea5`  
		Last Modified: Mon, 31 Aug 2026 20:16:52 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559529042fbdbc3fa55dab3678ad21dfa1c4e6a37d6fb51541dc8539fa59f38d`  
		Last Modified: Mon, 31 Aug 2026 20:16:52 GMT  
		Size: 12.4 KB (12439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ff1525629970d750d77f76a4f9f41ea4e5ef91653ec0d514faaae9afef90c0`  
		Last Modified: Mon, 31 Aug 2026 20:16:52 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b805f51b2acb49632366c3e1fd7a1c560a5d3525eb330c82b95386b4ddaec1ab`  
		Last Modified: Mon, 31 Aug 2026 20:16:52 GMT  
		Size: 42.3 KB (42324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c21b8a72977a159cbcbf82c1670cc81ca29ed9e09660fb2cd48d23f97621630`  
		Last Modified: Mon, 31 Aug 2026 20:17:01 GMT  
		Size: 366.4 MB (366412499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72db3408408203a64c9aa63ddb3525789450e563e2bdfd42a7914fc8862eaa3a`  
		Last Modified: Mon, 31 Aug 2026 20:16:53 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7118a2b62dbdb5acf55dd7d52102bc77b5f0c00af321cc0a5ace399544e8f91f`  
		Last Modified: Mon, 31 Aug 2026 20:16:53 GMT  
		Size: 13.9 KB (13881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284e7d05f42fa016afe0f87313aec1de6d4dd67c8771f4fc164c182c7b35632c`  
		Last Modified: Mon, 31 Aug 2026 20:16:54 GMT  
		Size: 13.2 MB (13196863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java8-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:f655a96922ad0c9b4801363b2508e5730cc41e2a903022b32459a8a35ec6f10f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c1a1c49e5b505e08a8d9e1dc81627d512d5700b241e381d1d0eb1c0a144eaf8`

```dockerfile
```

-	Layers:
	-	`sha256:883647863fc16e17865e48ca15c2f1e4d9bd0c0d8f885f82086354ce270245fa`  
		Last Modified: Mon, 31 Aug 2026 20:16:52 GMT  
		Size: 5.2 MB (5210505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0969883bf7db17adc00743d67ce495eb2e54fdae69757d464c3cfe6d3b8a5806`  
		Last Modified: Mon, 31 Aug 2026 20:16:52 GMT  
		Size: 40.0 KB (40022 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java8-openj9` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:7f35fbf27511a5dc7c1387aba10a8fb15fe275da38b2d0b2927944457a890a45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.1 MB (489138691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8735907bbae00ad055b6abb8b7b6be95c59ac09f977719c8dfc6b84632211e55`
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
ENV JAVA_VERSION=8.0.504.0
# Mon, 31 Aug 2026 21:17:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='69d7c62f8ecfd9ef8c7a2815509e264d9816cddb9ff41cca729e4e96cce42187';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_aarch64_linux_8.0.504.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='4cadcb9a5158afc3fb80184c230da6021c9f7f3a26a72fc55504ce4ba5a62ee8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_ppc64le_linux_8.0.504.0.tar.gz';          ;;        amd64|x86_64)          ESUM='c2bf4b2e06ab4476fdbea4bc27eb26d61ad5afa6b4980a1373ec049fa3e441ca';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_x64_linux_8.0.504.0.tar.gz';          ;;        s390x)          ESUM='e0185244a811fb120e8735decf37ec1183f7065da4a898b9598c9d3fa4a52eaa';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_s390x_linux_8.0.504.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 21:17:03 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 21:17:03 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 21:18:12 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 22:22:52 GMT
USER root
# Mon, 31 Aug 2026 22:22:52 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Mon, 31 Aug 2026 22:22:52 GMT
ARG LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3
# Mon, 31 Aug 2026 22:22:52 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip
# Mon, 31 Aug 2026 22:22:52 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 31 Aug 2026 22:22:52 GMT
ARG OPENJ9_SCC=true
# Mon, 31 Aug 2026 22:22:52 GMT
ARG VERBOSE=false
# Mon, 31 Aug 2026 22:22:52 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.8 liberty.version=26.0.0.8 io.openliberty.version=26.0.0.8
# Mon, 31 Aug 2026 22:22:52 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 31 Aug 2026 22:26:37 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 31 Aug 2026 22:26:37 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 31 Aug 2026 22:26:37 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 31 Aug 2026 22:26:59 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 31 Aug 2026 22:26:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 31 Aug 2026 22:27:00 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 31 Aug 2026 22:27:00 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 31 Aug 2026 22:27:36 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 31 Aug 2026 22:27:36 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 31 Aug 2026 22:27:36 GMT
USER 1001
# Mon, 31 Aug 2026 22:27:36 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 31 Aug 2026 22:27:36 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 31 Aug 2026 22:27:36 GMT
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
	-	`sha256:5d6e8fa3975e91f53234dfc22703e0bf3b0cd61632f0198041f30a42047c04ff`  
		Last Modified: Mon, 31 Aug 2026 21:18:39 GMT  
		Size: 56.2 MB (56155426 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47a3bd4a9aa3f0f0b3aa0eeda7445b86caabcb49d0a88d07ba25034d0c6f60c`  
		Last Modified: Mon, 31 Aug 2026 21:18:37 GMT  
		Size: 3.5 MB (3530367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55e9b8c66f5798fd14d4b32c34fc0ecea97fc970b4c2f4a19ed2b0cae5c4480`  
		Last Modified: Mon, 31 Aug 2026 22:25:08 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49210d9d32c62600047372562a1626a7131a03ad1669c75b0e3f3c0d2e356c0d`  
		Last Modified: Mon, 31 Aug 2026 22:28:30 GMT  
		Size: 12.4 KB (12435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f854483c37c0d3b1573badc23fedc7953cf40353e6e86fbdba7477c588d9671`  
		Last Modified: Mon, 31 Aug 2026 22:28:30 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a0eed0e4dc4061dbb3f3b15a9f9f11616a6cb44d33764a80d3485cf4217e50`  
		Last Modified: Mon, 31 Aug 2026 22:28:30 GMT  
		Size: 36.5 KB (36493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d497818cc3b6498f59dcb0f4915696ecadd657447f645518a0dd3efbfb804ba`  
		Last Modified: Mon, 31 Aug 2026 22:28:39 GMT  
		Size: 369.5 MB (369543019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d044d689740a4ed254357ae909a21b860101c5c74e9cd81600338c4cb607cd`  
		Last Modified: Mon, 31 Aug 2026 22:28:32 GMT  
		Size: 1.1 KB (1056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b8899abd8ef151435dace4c15231fd0ccc45efcafd440749bc00320d79f32a`  
		Last Modified: Mon, 31 Aug 2026 22:28:32 GMT  
		Size: 13.9 KB (13876 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da1a2618c56526396830af4b95c8660b320c159d79ebbf058d952b52e5f7fd65`  
		Last Modified: Mon, 31 Aug 2026 22:28:32 GMT  
		Size: 11.8 MB (11786253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java8-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:fac8d48d6f0f8254d300ae226d99c41227cbd7a4bd39ea88cfe1b5cdb0c2b636
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea3b5ff74ecfed330d3d2fab7842b4284bc26de46f46f88041cb0f21933f7428`

```dockerfile
```

-	Layers:
	-	`sha256:06c7b9b4b6d515b94d1c0025d5b0bc2a26eb9a53c49ce6fb753f8153449acd9b`  
		Last Modified: Mon, 31 Aug 2026 22:28:31 GMT  
		Size: 5.2 MB (5214696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2d6246f7d4df51909ca0666ecca8a3d850b2b3bb847fd4d5d311b5b265c41ab9`  
		Last Modified: Mon, 31 Aug 2026 22:28:30 GMT  
		Size: 39.9 KB (39916 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java8-openj9` - linux; s390x

```console
$ docker pull open-liberty@sha256:bd9319775ce05e56f4d0b7daa7455b6937eeaa0376d7f131ea1c30e5b19f7230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.0 MB (487013656 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72f7d7a88904b8453339b339ff19745d9250aebde6a8b06cf266041597658a3a`
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
ENV JAVA_VERSION=8.0.504.0
# Mon, 31 Aug 2026 18:33:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='69d7c62f8ecfd9ef8c7a2815509e264d9816cddb9ff41cca729e4e96cce42187';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_aarch64_linux_8.0.504.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='4cadcb9a5158afc3fb80184c230da6021c9f7f3a26a72fc55504ce4ba5a62ee8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_ppc64le_linux_8.0.504.0.tar.gz';          ;;        amd64|x86_64)          ESUM='c2bf4b2e06ab4476fdbea4bc27eb26d61ad5afa6b4980a1373ec049fa3e441ca';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_x64_linux_8.0.504.0.tar.gz';          ;;        s390x)          ESUM='e0185244a811fb120e8735decf37ec1183f7065da4a898b9598c9d3fa4a52eaa';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.0/ibm-semeru-open-jre_s390x_linux_8.0.504.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 18:33:22 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 18:33:22 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 18:34:26 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 18:46:07 GMT
USER root
# Mon, 31 Aug 2026 18:46:07 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Mon, 31 Aug 2026 18:46:07 GMT
ARG LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3
# Mon, 31 Aug 2026 18:46:07 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip
# Mon, 31 Aug 2026 18:46:07 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 31 Aug 2026 18:46:07 GMT
ARG OPENJ9_SCC=true
# Mon, 31 Aug 2026 18:46:07 GMT
ARG VERBOSE=false
# Mon, 31 Aug 2026 18:46:07 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.8 liberty.version=26.0.0.8 io.openliberty.version=26.0.0.8
# Mon, 31 Aug 2026 18:46:07 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 31 Aug 2026 18:46:54 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 31 Aug 2026 18:46:55 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 31 Aug 2026 18:46:55 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 31 Aug 2026 18:47:14 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 31 Aug 2026 18:47:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 31 Aug 2026 18:47:14 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 31 Aug 2026 18:47:15 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 31 Aug 2026 18:47:34 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8 LIBERTY_SHA=dd39c3c17fbb2bb5117bafec353f3c06b99716d3 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.8/openliberty-runtime-26.0.0.8.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 31 Aug 2026 18:47:34 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 31 Aug 2026 18:47:34 GMT
USER 1001
# Mon, 31 Aug 2026 18:47:34 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 31 Aug 2026 18:47:34 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 31 Aug 2026 18:47:34 GMT
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
	-	`sha256:9e8e34087ffe200a04432cabce2c8cb2aeb29d0d6cad581b9da470d0d0b68749`  
		Last Modified: Mon, 31 Aug 2026 18:34:45 GMT  
		Size: 57.6 MB (57565882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ccf7b8d58e900ecc8ef79c284eb03458994f124e4128bacca79ebcf485ea0d8`  
		Last Modified: Mon, 31 Aug 2026 18:34:44 GMT  
		Size: 4.4 MB (4390638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425dd8f73d97dc10283f590cae303374fbacf79d33423993b0c1b6bf03f5fb1a`  
		Last Modified: Mon, 31 Aug 2026 18:46:34 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd29286b26f67cc48d9e4230c413c54f14b9b464b9490576e2a6f0cf3c3176b6`  
		Last Modified: Mon, 31 Aug 2026 18:48:08 GMT  
		Size: 12.4 KB (12435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c75bf20e6b82393c3225cf6750de2bb924bc1411ed1ec1055e6200151914ef`  
		Last Modified: Mon, 31 Aug 2026 18:48:08 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7630dceec26710ebee85db44b1d7945c4deafc523858a155f6fb5947e0c20cea`  
		Last Modified: Mon, 31 Aug 2026 18:48:08 GMT  
		Size: 33.1 KB (33113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:305d6210837140a6e64f32c373ce60b3c0371c65e0de050944f7d4b2440f8efa`  
		Last Modified: Mon, 31 Aug 2026 18:48:14 GMT  
		Size: 366.4 MB (366412140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d73eca7a31a6b236b3ad39bbec9262b9e43719c1d610dda554c812e1db620fdf`  
		Last Modified: Mon, 31 Aug 2026 18:48:09 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1958ae8e688a5a008a39253d1dcacd51e12c524bdc5747970f6f7dcf473be1c6`  
		Last Modified: Mon, 31 Aug 2026 18:48:09 GMT  
		Size: 13.9 KB (13898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d217a479b338c2a8c9b7e67bf11eb94d4a3ce2a87caa3153bc790b81d53a8b94`  
		Last Modified: Mon, 31 Aug 2026 18:48:10 GMT  
		Size: 13.5 MB (13469888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java8-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:0c50934cbbd551da5ebb0f6b5fa117cbfb1f6f9685919211cbff3ed738620f0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5251384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56a92dfc6a3d7e55fb72b13ff11a0cb18e0a3cda33b29f08603bcd3a0f1e28f8`

```dockerfile
```

-	Layers:
	-	`sha256:f663eb15dba4f179b6ea2abaa391754be4b57f484f8984e7141425302dcce8ab`  
		Last Modified: Mon, 31 Aug 2026 18:48:08 GMT  
		Size: 5.2 MB (5211515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bad872d24e87626ad8514cb319eebbe617e6a0a9d3784160db7e45bc507e6e88`  
		Last Modified: Mon, 31 Aug 2026 18:48:08 GMT  
		Size: 39.9 KB (39869 bytes)  
		MIME: application/vnd.in-toto+json
