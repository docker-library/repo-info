## `open-liberty:full`

```console
$ docker pull open-liberty@sha256:a36f007ee8bafc723aab9df3ae98c62a29160e280b1d1c4b6a5f8848adab8119
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

### `open-liberty:full` - linux; amd64

```console
$ docker pull open-liberty@sha256:1d81863d05dea0fab1e3e7dbda8018772613e3c5120c3a6dee328a26a766476f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **482.8 MB (482760465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22ff4ac958abb0fccfcbcf395ae3965084f996b98b7cc8f7764ed32893a35d76`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 31 Jul 2026 20:37:20 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:37:20 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:37:20 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:37:22 GMT
ADD file:d938ff3d4eee15d8600de84bf85eac6ecd0f20bc92dfe305dafbff0bdc974c0f in / 
# Fri, 31 Jul 2026 20:37:23 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:33:41 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:33:41 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:33:41 GMT
ENV JAVA_VERSION=8.0.502.0
# Tue, 04 Aug 2026 01:33:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='c27dad4c6a022a92da7d460cc6cde7c3c15f8c394fa39bc4a92367ad1bdf2b3c';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_aarch64_linux_8.0.502.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='d749bfae17430eeb556e9402b6493ef8d1326fe700f091b83019d080932e95c8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_ppc64le_linux_8.0.502.0.tar.gz';          ;;        amd64|x86_64)          ESUM='ce0c488682b5fa209c3592c3b367ffe1a990b84e490e323bd45dd131ed754985';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_x64_linux_8.0.502.0.tar.gz';          ;;        s390x)          ESUM='17833ae503b8780e4be83adb3638a2863555389f6785d515a3684043c47550cc';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_s390x_linux_8.0.502.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:33:43 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:33:43 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:34:46 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 02:28:19 GMT
USER root
# Tue, 04 Aug 2026 02:28:19 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 02:28:19 GMT
ARG LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11
# Tue, 04 Aug 2026 02:28:19 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip
# Tue, 04 Aug 2026 02:28:19 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:28:19 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:28:19 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:28:19 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 02:28:19 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:28:19 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:28:19 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:28:20 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:28:36 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:28:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:28:36 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:28:36 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:28:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:28:51 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:28:51 GMT
USER 1001
# Tue, 04 Aug 2026 02:28:51 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:28:51 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:28:51 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d90a2c04df4b24a58ebe0e0ef2731796f34321de6641964f21024e32f43294`  
		Last Modified: Tue, 04 Aug 2026 01:34:57 GMT  
		Size: 15.2 MB (15172498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68303785335a80f8fabc26aa748997227848bb387d1915aa30bdf9aa5951e64`  
		Last Modified: Tue, 04 Aug 2026 01:34:58 GMT  
		Size: 54.4 MB (54433591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c92f5e1723d7269c3c051169b967f6d47a20ea44d475bd267b43f5e392aafbe`  
		Last Modified: Tue, 04 Aug 2026 01:34:57 GMT  
		Size: 4.3 MB (4257583 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ea896d88ec12835fbdd48d6ec27a7009b40c3f8aab29f3c4d62cd5f4a040a78`  
		Last Modified: Tue, 04 Aug 2026 02:29:16 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2fa96e7305b199919036bf8d6b1967077a9dc1374348d5414c45aaaf06d1666`  
		Last Modified: Tue, 04 Aug 2026 02:29:16 GMT  
		Size: 12.3 KB (12344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e21b5b5bfa5c88db010ff346467a298dca8f8c90a88108c6079cd0803fca20c`  
		Last Modified: Tue, 04 Aug 2026 02:29:16 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689fc2ccf5f338a8f46ed7816ec9e116303012919b37d7a3ee885ba73ad54a50`  
		Last Modified: Tue, 04 Aug 2026 02:29:16 GMT  
		Size: 31.7 KB (31748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c62b1abf06c364e605aee1b748be26acb33332bf20942cac10da0588ebf9ce`  
		Last Modified: Tue, 04 Aug 2026 02:29:24 GMT  
		Size: 366.1 MB (366052415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f56479237fc809d14d6601e88085125238b1a4607d67c71e1791d694eccbab`  
		Last Modified: Tue, 04 Aug 2026 02:29:17 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0efcdc61d3468c033d68a67465936984ad442d50c84a92b7f46c58bfc3ac8b10`  
		Last Modified: Tue, 04 Aug 2026 02:29:17 GMT  
		Size: 13.8 KB (13785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7be8d97391e93c327f26b63fedc38be7822dc1bde79346bd25c88ec51a4866d7`  
		Last Modified: Tue, 04 Aug 2026 02:29:18 GMT  
		Size: 13.0 MB (13033049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full` - unknown; unknown

```console
$ docker pull open-liberty@sha256:2975cc9b88348897744f9bf057613ac7c603fc5ce4fb6014f7152058681cc2d9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5249761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da6382372d999f1e63a5b1ce3262eb4492b2d3fda3098a02642d813be86ffef1`

```dockerfile
```

-	Layers:
	-	`sha256:921ac1f0c9b5350fc106147135d13e8254350c54e64d6f516820d34860c46d28`  
		Last Modified: Tue, 04 Aug 2026 02:29:16 GMT  
		Size: 5.2 MB (5209892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d1b8278d153c4d01d276b5f6fecf49b11481ba5f38d16037253b277b931d6ddd`  
		Last Modified: Tue, 04 Aug 2026 02:29:16 GMT  
		Size: 39.9 KB (39869 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:d7e786c2c04c18a8028feb1e793f3271297e522664839959ce138c01de9cb4ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **478.9 MB (478928731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3781064d125a52f2d3d4cc0bddaa8f876be74b0b5684cefc4b7e6cc18e2ba0a2`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 31 Jul 2026 20:45:33 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:45:33 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:45:33 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:45:37 GMT
ADD file:695c79b2217675519eeed9028b8e5d7ae9915817a49f5bf34e80ad57197f07f6 in / 
# Fri, 31 Jul 2026 20:45:37 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:34:04 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:34:04 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:34:04 GMT
ENV JAVA_VERSION=8.0.502.0
# Tue, 04 Aug 2026 01:34:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='c27dad4c6a022a92da7d460cc6cde7c3c15f8c394fa39bc4a92367ad1bdf2b3c';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_aarch64_linux_8.0.502.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='d749bfae17430eeb556e9402b6493ef8d1326fe700f091b83019d080932e95c8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_ppc64le_linux_8.0.502.0.tar.gz';          ;;        amd64|x86_64)          ESUM='ce0c488682b5fa209c3592c3b367ffe1a990b84e490e323bd45dd131ed754985';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_x64_linux_8.0.502.0.tar.gz';          ;;        s390x)          ESUM='17833ae503b8780e4be83adb3638a2863555389f6785d515a3684043c47550cc';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_s390x_linux_8.0.502.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:34:05 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:34:05 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:35:08 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 02:28:43 GMT
USER root
# Tue, 04 Aug 2026 02:28:43 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 02:28:43 GMT
ARG LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11
# Tue, 04 Aug 2026 02:28:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip
# Tue, 04 Aug 2026 02:28:43 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:28:43 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:28:43 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:28:43 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 02:28:43 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:28:43 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:28:43 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:28:43 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:28:59 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:28:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:29:00 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:29:00 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:29:18 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:29:18 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:29:18 GMT
USER 1001
# Tue, 04 Aug 2026 02:29:18 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:29:18 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:29:18 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4739ccfaeba4639baf326ff1c4cd80e9b09a104f70031b54fbea49e1c15ed3d7`  
		Last Modified: Tue, 04 Aug 2026 01:35:21 GMT  
		Size: 12.8 MB (12804023 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b612df7d386e6128d5500391f8954f5f4afa106c5777262375898e30f292ee`  
		Last Modified: Tue, 04 Aug 2026 01:35:22 GMT  
		Size: 54.1 MB (54076826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8253855cbcff09960a0dfa7cd27bbba7ea97c16414ae77fd763c292aa7e4bea7`  
		Last Modified: Tue, 04 Aug 2026 01:35:20 GMT  
		Size: 4.1 MB (4134404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:391ccf34feaa0c51198b636c21a04d2ded948f0bb770ced5addc5b7d8b7bc5a7`  
		Last Modified: Tue, 04 Aug 2026 02:29:45 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e33a0923c5d6c3348af3e6e9e1b3b99d0738a13753aa279ce22cdef0558237`  
		Last Modified: Tue, 04 Aug 2026 02:29:44 GMT  
		Size: 12.3 KB (12349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99e6273fa56baae4293aa021ec4c5b3cf46945c03539270ad570b4c2a638c3a`  
		Last Modified: Tue, 04 Aug 2026 02:29:45 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd0a96404c49e9415707ce79602c85acfb9df0d0a9079b34f1b8a7d2866f0255`  
		Last Modified: Tue, 04 Aug 2026 02:29:06 GMT  
		Size: 42.3 KB (42323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:405574951667a691e4f80068b784246317b7fce2f19623d419989457b3651fb7`  
		Last Modified: Tue, 04 Aug 2026 02:29:52 GMT  
		Size: 366.1 MB (366052460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73130f0fdab28aa536c9ab6a5c78bef6f9bb9a270c4910fe6ed864852df4d582`  
		Last Modified: Tue, 04 Aug 2026 02:29:46 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1299c1bd5bf534105932b665075d27f50a24d6a1de9009b2c08fda03a0cd1d4c`  
		Last Modified: Tue, 04 Aug 2026 02:29:46 GMT  
		Size: 13.8 KB (13786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7a3421dbef48389ead3f82c4d6d518aa5632ac15abfb403f655b3a369b70a4b`  
		Last Modified: Tue, 04 Aug 2026 02:29:46 GMT  
		Size: 12.9 MB (12903396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full` - unknown; unknown

```console
$ docker pull open-liberty@sha256:0526b55c56d23638e1c41fc77eabdc5dd20f833073d865bd074fa0f59c2644bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250526 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7521867ad9be470a10f3eefbf3d2d9c2273b704b95049d6c79b47f9059f765df`

```dockerfile
```

-	Layers:
	-	`sha256:abf85e57575f103bf06796b5215630ae9a11337b2853dbfa7a64aa12dfd90352`  
		Last Modified: Tue, 04 Aug 2026 02:29:45 GMT  
		Size: 5.2 MB (5210505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47086c681a1991a1a0d7be8e8db73f7c61c2c64da481d6c61587eb9b632cdbf6`  
		Last Modified: Tue, 04 Aug 2026 02:29:45 GMT  
		Size: 40.0 KB (40021 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:bd65207ac2076158518ff7fb2a7de3f1a8d0267a55e998a8fa7c64177a7b18c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.3 MB (488288013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f90f7690e3389f916c443e490f70780e45515449dc8a8c73e2cdc786560c7ab5`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 31 Jul 2026 20:44:29 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:44:29 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:44:29 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:44:32 GMT
ADD file:de84028a58b37b343ef7acd8f4c9a3bfde61683d6c522e683a978115b04d031b in / 
# Fri, 31 Jul 2026 20:44:33 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:37:50 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:37:50 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:37:50 GMT
ENV JAVA_VERSION=8.0.502.0
# Tue, 04 Aug 2026 01:41:17 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='c27dad4c6a022a92da7d460cc6cde7c3c15f8c394fa39bc4a92367ad1bdf2b3c';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_aarch64_linux_8.0.502.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='d749bfae17430eeb556e9402b6493ef8d1326fe700f091b83019d080932e95c8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_ppc64le_linux_8.0.502.0.tar.gz';          ;;        amd64|x86_64)          ESUM='ce0c488682b5fa209c3592c3b367ffe1a990b84e490e323bd45dd131ed754985';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_x64_linux_8.0.502.0.tar.gz';          ;;        s390x)          ESUM='17833ae503b8780e4be83adb3638a2863555389f6785d515a3684043c47550cc';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_s390x_linux_8.0.502.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:41:17 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:41:17 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:42:22 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 03:35:08 GMT
USER root
# Tue, 04 Aug 2026 03:35:08 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 03:35:08 GMT
ARG LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11
# Tue, 04 Aug 2026 03:35:08 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip
# Tue, 04 Aug 2026 03:35:08 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 03:35:08 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 03:35:08 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 03:35:08 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 03:35:08 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 03:40:28 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 03:40:29 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 03:40:29 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 03:40:53 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 03:40:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 03:40:54 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 03:40:55 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 03:41:30 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 03:41:30 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 03:41:30 GMT
USER 1001
# Tue, 04 Aug 2026 03:41:30 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 03:41:30 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 03:41:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:9d1bffbd46bb5cede430c07896855e38e8bfe397bbc67fe1808f03623a4aad12`  
		Last Modified: Fri, 31 Jul 2026 22:22:43 GMT  
		Size: 34.3 MB (34310673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c967ded22275eade4e2b1136ce66ad9a3c064c868631ab9494a9ee9bbe278e7`  
		Last Modified: Tue, 04 Aug 2026 01:39:42 GMT  
		Size: 16.4 MB (16376661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dd398aa000b21d60d9dcc3f3bc7e3ec4362a16011ad97e077a56c4ce390640f`  
		Last Modified: Tue, 04 Aug 2026 01:42:46 GMT  
		Size: 56.2 MB (56153703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e12af5170cadb3866f6657d3fecc3d62646aed97237ba37d9dc7b851596c81`  
		Last Modified: Tue, 04 Aug 2026 01:42:44 GMT  
		Size: 3.5 MB (3542769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6579b09e7a3a19abdd748ffc30c6e575470de1e6036f97705f907568b77b1f31`  
		Last Modified: Tue, 04 Aug 2026 03:37:15 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c35b7d3596774b41b74564d14eb58c68e2fe985d1c019a57800d955ee6df297`  
		Last Modified: Tue, 04 Aug 2026 03:42:23 GMT  
		Size: 12.3 KB (12347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b4d92962958a551bcc888f06d1944e3f5d3b7fa43b93391bfdd21e591cf8c1a`  
		Last Modified: Tue, 04 Aug 2026 03:42:23 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fa7cc7eee9243262893482214d8d7bc3ce75d69ad27fc5c63657f3cd2dbd97a`  
		Last Modified: Tue, 04 Aug 2026 03:42:23 GMT  
		Size: 36.5 KB (36496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13c9f022b48c9f15b0d020e32742f53e247ada4c30effc9e40008709355e680`  
		Last Modified: Tue, 04 Aug 2026 03:42:30 GMT  
		Size: 366.1 MB (366052486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5a708998d5c915b4c093429235fd054d01679cb398293815001cd75f9bedee`  
		Last Modified: Tue, 04 Aug 2026 03:42:24 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28c257b8aa0d401bf995cf7759393c0f61f9db1427d063081438d2ab1a457f0c`  
		Last Modified: Tue, 04 Aug 2026 03:42:24 GMT  
		Size: 13.8 KB (13818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6a4ecee025c52301469505f5ce26fbdd188e3e1d8e1a711787f4166a0f05d0`  
		Last Modified: Tue, 04 Aug 2026 03:42:24 GMT  
		Size: 11.8 MB (11786705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full` - unknown; unknown

```console
$ docker pull open-liberty@sha256:13882df6d2616a3a83005f7d4028c4e31bd7d50304668bef1ffb97682c95c9aa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:03a7e65f15d52202f570e436c527d32fe663587b2ababc4c5cfbd5957348bb16`

```dockerfile
```

-	Layers:
	-	`sha256:e338e5a63f21726564da8d150441294984a1eb92e9ece4a2389841e4b165b1e2`  
		Last Modified: Tue, 04 Aug 2026 03:42:23 GMT  
		Size: 5.2 MB (5214696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4990293317a85dccc7bd46604e04cbe8fc1db38c639e7a95bfb66d4cc7ccf08b`  
		Last Modified: Tue, 04 Aug 2026 03:42:23 GMT  
		Size: 39.9 KB (39916 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full` - linux; s390x

```console
$ docker pull open-liberty@sha256:aa02104fa48996ee479ce65b059ab86eced43e9cd4ba57729739b01d50efda5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.7 MB (484749001 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55a6891bdc06684d21b080e43f49c25ae0c3bcbddbca5885f715fe5d547303a`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 31 Jul 2026 20:38:37 GMT
ARG RELEASE
# Fri, 31 Jul 2026 20:38:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 20:38:37 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 31 Jul 2026 20:38:39 GMT
ADD file:6086e70240c95f713e06ab2c1f53baed9645134bf0319a771ee83e6caa6fe818 in / 
# Fri, 31 Jul 2026 20:38:39 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:19:21 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:19:21 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:19:21 GMT
ENV JAVA_VERSION=8.0.502.0
# Tue, 04 Aug 2026 01:40:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='c27dad4c6a022a92da7d460cc6cde7c3c15f8c394fa39bc4a92367ad1bdf2b3c';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_aarch64_linux_8.0.502.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='d749bfae17430eeb556e9402b6493ef8d1326fe700f091b83019d080932e95c8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_ppc64le_linux_8.0.502.0.tar.gz';          ;;        amd64|x86_64)          ESUM='ce0c488682b5fa209c3592c3b367ffe1a990b84e490e323bd45dd131ed754985';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_x64_linux_8.0.502.0.tar.gz';          ;;        s390x)          ESUM='17833ae503b8780e4be83adb3638a2863555389f6785d515a3684043c47550cc';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.502.0/ibm-semeru-open-jre_s390x_linux_8.0.502.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:40:46 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:40:46 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:41:49 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 02:25:01 GMT
USER root
# Tue, 04 Aug 2026 02:25:01 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 02:25:01 GMT
ARG LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11
# Tue, 04 Aug 2026 02:25:01 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip
# Tue, 04 Aug 2026 02:25:01 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:25:01 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:25:01 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:25:01 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 02:25:01 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:27:08 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:27:08 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:27:09 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:27:23 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:27:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:27:24 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:27:24 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:27:44 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:27:44 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:27:44 GMT
USER 1001
# Tue, 04 Aug 2026 02:27:44 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:27:44 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:27:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6bb1e92e6c04f8404c596df473b847d14a4cc2ca1d4734e5353b4b54d37b3338`  
		Last Modified: Fri, 31 Jul 2026 22:22:57 GMT  
		Size: 29.9 MB (29935711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a01ecad39b28be8c3b0b35514c2d215149a3ce2af2685b44b9e1558cfd5944b7`  
		Last Modified: Tue, 04 Aug 2026 01:20:51 GMT  
		Size: 13.1 MB (13079189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0abfa184c71ad09df026068980b99abe194af7376059678af256a615d6e778ff`  
		Last Modified: Tue, 04 Aug 2026 01:42:09 GMT  
		Size: 57.6 MB (57564326 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31e6326aa78380f7d969ab5c730b4047abfbbb5a5aa5380f3b0c7190e715a15e`  
		Last Modified: Tue, 04 Aug 2026 01:42:08 GMT  
		Size: 4.4 MB (4445259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec775e4556531f71eeba64d8260f7a1438df1509847f7ca4ec4fb8dd235e5f3c`  
		Last Modified: Tue, 04 Aug 2026 02:26:23 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7210282ce28c86ce7350fe75b3d97c2f49116780e686e2c58ecc45c44d598c95`  
		Last Modified: Tue, 04 Aug 2026 02:28:21 GMT  
		Size: 12.3 KB (12347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86b4da4308179730e6637e331d633cc0ad1176366773e83eef5df8e7568f0cd9`  
		Last Modified: Tue, 04 Aug 2026 02:28:21 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17791ee0412468162809d8166752e27daf0ef07250d31cb2cdb1eae3f5be0816`  
		Last Modified: Tue, 04 Aug 2026 02:28:21 GMT  
		Size: 33.1 KB (33112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3208bec8df9868b310db19db600031910a55cf1cebe5bd0dc9742a06273837a5`  
		Last Modified: Tue, 04 Aug 2026 02:28:27 GMT  
		Size: 366.1 MB (366052050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c92f4757694d3630958a6ed678cdaef282bcd143ed0a1eeb4e5aafeb877f2d`  
		Last Modified: Tue, 04 Aug 2026 02:28:22 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c859ea4b4235946c06050b2f618ff815f52d4c535fbbc9c21e73cbbaaed17d0`  
		Last Modified: Tue, 04 Aug 2026 02:28:22 GMT  
		Size: 13.8 KB (13794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018da5748609f719ed5209f84257167b2a25704bc4797224c06564cf585657da`  
		Last Modified: Tue, 04 Aug 2026 02:28:23 GMT  
		Size: 13.6 MB (13610866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full` - unknown; unknown

```console
$ docker pull open-liberty@sha256:10e31f968f2459565f4950aa3d1441202bca3cd4026541f02be3c0703041de8e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5251385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1cf9cd470b47ceab8ebb942d8d00f330572e8bca5f10561b26baabf9004d4fc`

```dockerfile
```

-	Layers:
	-	`sha256:4dc15e3b4efacd5e48d5bd9b41ddfd127cf985cc4cc49ac76149f428f899a3f9`  
		Last Modified: Tue, 04 Aug 2026 02:28:21 GMT  
		Size: 5.2 MB (5211515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fbe3feb5abf951b817568b023013eea38bb536ecbed23adefde30ad173ea2a7b`  
		Last Modified: Tue, 04 Aug 2026 02:28:21 GMT  
		Size: 39.9 KB (39870 bytes)  
		MIME: application/vnd.in-toto+json
