## `open-liberty:beta`

```console
$ docker pull open-liberty@sha256:83eb49ae383ec9aaa5c10eb48c705867e8566fdd5ce5572d98725c5f299c5700
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

### `open-liberty:beta` - linux; amd64

```console
$ docker pull open-liberty@sha256:099ebbee2ffd1c37f02e8cf079d6b80996715942ed30ba48ca977dd55f615380
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.2 MB (487152931 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6c372f76fde4ae0298bf6951ce45b0a1c75445f955b14ae328f683b0fbb55ce`
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
# Tue, 04 Aug 2026 02:27:38 GMT
USER root
# Tue, 04 Aug 2026 02:27:38 GMT
ARG LIBERTY_VERSION=26.0.0.8-beta
# Tue, 04 Aug 2026 02:27:38 GMT
ARG LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07
# Tue, 04 Aug 2026 02:27:38 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip
# Tue, 04 Aug 2026 02:27:38 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:27:38 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:27:38 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:27:38 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 8 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.8-beta liberty.version=26.0.0.8-beta io.openliberty.version=26.0.0.8-beta
# Tue, 04 Aug 2026 02:27:38 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:27:38 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:27:38 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:27:38 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:27:54 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:27:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:27:54 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:27:54 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:28:16 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:28:16 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:28:16 GMT
USER 1001
# Tue, 04 Aug 2026 02:28:16 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:28:16 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:28:16 GMT
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
	-	`sha256:b8c1df53ba69c3e5ea750a089fdec98a52963db389f9f2c36d0820e7a655c307`  
		Last Modified: Tue, 04 Aug 2026 02:28:41 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37dce1ccf912529200ae49abb5a9d401ba4d5267c4e088a75ae7375682cb1ae8`  
		Last Modified: Tue, 04 Aug 2026 02:28:40 GMT  
		Size: 12.8 KB (12777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d9209b4b896b47ccad56c3393b80b2e1950bbd25df290ea7f35a9435c01d40c`  
		Last Modified: Tue, 04 Aug 2026 02:28:41 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8db142228ce1aa28bc0c0eaa228a11776a523cfa50f3ac45220c23e6a8976ad`  
		Last Modified: Tue, 04 Aug 2026 02:28:40 GMT  
		Size: 31.7 KB (31747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7cb5830f7dfa46f69bab56cb641a3d224d40eebc49d98f7a1dafb4cb5caa9ac`  
		Last Modified: Tue, 04 Aug 2026 02:28:49 GMT  
		Size: 369.2 MB (369248807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0901f6f77a711097ae44c9092e4d826ada1ef4c7f5c1d7b9dffe97725ab190`  
		Last Modified: Tue, 04 Aug 2026 02:28:42 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:844424fa33af559b81f1d7661bc18c0787de9b5d0b554fc26c5fefb96730119a`  
		Last Modified: Tue, 04 Aug 2026 02:28:42 GMT  
		Size: 14.2 KB (14217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b85efabc8c79a3a16221333fe45f0446cac76fcac3cd05d4210e5d86cdcb54c`  
		Last Modified: Tue, 04 Aug 2026 02:28:42 GMT  
		Size: 14.2 MB (14228256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta` - unknown; unknown

```console
$ docker pull open-liberty@sha256:6d762264733d7b8a6e4451862bc23706a2678a26932e0d62f1f0a1f23aa09e97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5266500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf1a8590fac42052382e3a8138d61acedbf12a1955a37ef624b393844c4ea0b8`

```dockerfile
```

-	Layers:
	-	`sha256:232d506ddb9baee00bd73a1afa556760c5b9a151a959f53550068a90b6784b4d`  
		Last Modified: Tue, 04 Aug 2026 02:28:41 GMT  
		Size: 5.2 MB (5227144 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:480a0cd18b222b0ae710bd1ae4bc03ce0fb325d6218df625fcec8692cfa47480`  
		Last Modified: Tue, 04 Aug 2026 02:28:40 GMT  
		Size: 39.4 KB (39356 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:3771be48427a38b3f9ed2baa8eea75da772b4bde27a254ae34a5741f9c86b192
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **483.3 MB (483284744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d7638545c770e4eed64b5aa50f053c2a64586617430360c52e108a04610a140`
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
# Tue, 04 Aug 2026 02:27:58 GMT
USER root
# Tue, 04 Aug 2026 02:27:58 GMT
ARG LIBERTY_VERSION=26.0.0.8-beta
# Tue, 04 Aug 2026 02:27:58 GMT
ARG LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07
# Tue, 04 Aug 2026 02:27:58 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip
# Tue, 04 Aug 2026 02:27:58 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:27:58 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:27:58 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:27:58 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 8 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.8-beta liberty.version=26.0.0.8-beta io.openliberty.version=26.0.0.8-beta
# Tue, 04 Aug 2026 02:27:58 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:27:58 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:27:58 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:27:58 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:28:17 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:28:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:28:17 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:28:18 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:28:43 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:28:43 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:28:43 GMT
USER 1001
# Tue, 04 Aug 2026 02:28:43 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:28:43 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:28:43 GMT
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
	-	`sha256:195dd6d51772b03d6064b438297add492549db4c4c41a5e59b79dea0b5f2068e`  
		Last Modified: Tue, 04 Aug 2026 02:29:10 GMT  
		Size: 1.0 KB (1045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8279ad109ece6e01184a86091be6d754cb3f41f7b2822cc0185e176fca8787f9`  
		Last Modified: Tue, 04 Aug 2026 02:29:10 GMT  
		Size: 12.8 KB (12770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b90817d83a0f8461f3ff3fec005a2ce2227148314150b5a9e2bb758da632750e`  
		Last Modified: Tue, 04 Aug 2026 02:29:09 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7db6974e30a9075501e4591de381fa7996762a0909e4111b9aa5f00d58e7f5a4`  
		Last Modified: Tue, 04 Aug 2026 02:29:10 GMT  
		Size: 42.3 KB (42322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10b691b6ec61faae462d7df436478be1f3177b8c9fa2c3fd6559e9b4a50d0e6f`  
		Last Modified: Tue, 04 Aug 2026 02:29:19 GMT  
		Size: 369.2 MB (369248760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8a76d5dc52d8770ca6ec88b5d9a4a5bd2a9cd24ebd1ece890b7bc22aae69e20`  
		Last Modified: Tue, 04 Aug 2026 02:29:11 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5135c8d507bdbb4d7ff9fa94b891c1fe0a1830823a40cb57809c53c91a25536`  
		Last Modified: Tue, 04 Aug 2026 02:29:11 GMT  
		Size: 14.2 KB (14222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9124b1aa5acca57f63367ffd0d8c22bfa8c4421a91c50a3bcccfbce8e345650`  
		Last Modified: Tue, 04 Aug 2026 02:29:12 GMT  
		Size: 14.1 MB (14062260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta` - unknown; unknown

```console
$ docker pull open-liberty@sha256:15c510cee5206c58876fda03ed99fbe8be2b76dad187f93a469037c3f64b2f91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5267217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c5f82edb1557a4860c5b64b24637c5dbcfec08e838fe6cdfd2d0157d1d9000`

```dockerfile
```

-	Layers:
	-	`sha256:42f672c935d359d2f4b8a6dc0155242d0fd81819fe058a0b1bd169f515aedfed`  
		Last Modified: Tue, 04 Aug 2026 02:29:10 GMT  
		Size: 5.2 MB (5227733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8fd9b2316b9067894f5a5eadd30dc23d18e581727028d4b74e5c9db6bca71e7`  
		Last Modified: Tue, 04 Aug 2026 02:29:09 GMT  
		Size: 39.5 KB (39484 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:bc80b1d3418403825579ba89aaa8aec1b9230620b09a7d06fff228d1cff5173e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.6 MB (492574333 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a436fb82c387991e2ea9813fea6c08cd1913b0fbe35a72eac13e6188383cb799`
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
ARG LIBERTY_VERSION=26.0.0.8-beta
# Tue, 04 Aug 2026 03:35:08 GMT
ARG LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07
# Tue, 04 Aug 2026 03:35:08 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip
# Tue, 04 Aug 2026 03:35:08 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 03:35:08 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 03:35:08 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 03:35:08 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 8 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.8-beta liberty.version=26.0.0.8-beta io.openliberty.version=26.0.0.8-beta
# Tue, 04 Aug 2026 03:35:08 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 03:35:09 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 03:35:09 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 03:35:10 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 03:35:34 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 03:35:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 03:35:36 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 03:35:37 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 03:36:20 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 03:36:20 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 03:36:20 GMT
USER 1001
# Tue, 04 Aug 2026 03:36:20 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 03:36:20 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 03:36:20 GMT
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
	-	`sha256:091194379cadb3d6272459f80240081fc217fbd51a5712c0f6a92ea6f9b4bb49`  
		Last Modified: Tue, 04 Aug 2026 03:37:14 GMT  
		Size: 12.8 KB (12777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1beeae8af36b74f2026713b1696681c25e9d97b97283a25cd5a10d986aee04e`  
		Last Modified: Tue, 04 Aug 2026 03:37:15 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17a61e25dd0d1c51a99370806b8ae494ed6036c00594f44192d364771c5bf844`  
		Last Modified: Tue, 04 Aug 2026 03:37:15 GMT  
		Size: 36.5 KB (36495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec34a39c766129e54e43192773e2757366dc87ad575a40c7a77caf60d6089734`  
		Last Modified: Tue, 04 Aug 2026 03:37:23 GMT  
		Size: 369.2 MB (369249113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f40c130a8d0a79d9ab5e09f6acaeaf7707bcd7ae9482167e82443f202cb142`  
		Last Modified: Tue, 04 Aug 2026 03:37:16 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446bbe79ffa9eeb4559045593b041460cc8aad45eb300ffc870d8ee3d57a975d`  
		Last Modified: Tue, 04 Aug 2026 03:37:16 GMT  
		Size: 14.2 KB (14246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a35ccda52e331e1744c5faaa5dd7193eb657ccee68b16fb09410046d203fb7d7`  
		Last Modified: Tue, 04 Aug 2026 03:37:16 GMT  
		Size: 12.9 MB (12875547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta` - unknown; unknown

```console
$ docker pull open-liberty@sha256:895abeb070688b3633fe8d4ebd4a50153e25108eededc17aff61fd1c48ee7669
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5271326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12dc00eca7e44a4522e627c1ff2a8000ad6b49fee4eb71a1cb1b665389b63cc2`

```dockerfile
```

-	Layers:
	-	`sha256:44559b8f40d449f9f61640ac157ab4378f059845fee6f0c00b4e76d766c1c029`  
		Last Modified: Tue, 04 Aug 2026 03:37:15 GMT  
		Size: 5.2 MB (5231936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9f0bb5473d8385dd06d8fffecbb7b4bb07cdb889838ca69728f08fdd6561def1`  
		Last Modified: Tue, 04 Aug 2026 03:37:14 GMT  
		Size: 39.4 KB (39390 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta` - linux; s390x

```console
$ docker pull open-liberty@sha256:50a20ef59b0611dc81ed4f2f7c576c5f9e8b0fe59f841b7454bc3e7c601ef12b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **488.9 MB (488913212 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fea3f334952ceb2b10ae88889e41952aadb9ff3c777678e0c59de52eb621388`
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
ARG LIBERTY_VERSION=26.0.0.8-beta
# Tue, 04 Aug 2026 02:25:01 GMT
ARG LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07
# Tue, 04 Aug 2026 02:25:01 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip
# Tue, 04 Aug 2026 02:25:01 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:25:01 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:25:01 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:25:01 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 8 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.8-beta liberty.version=26.0.0.8-beta io.openliberty.version=26.0.0.8-beta
# Tue, 04 Aug 2026 02:25:01 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:25:01 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:25:01 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:25:01 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:25:14 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:25:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:25:15 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:25:15 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:25:43 GMT
# ARGS: LIBERTY_VERSION=26.0.0.8-beta LIBERTY_SHA=506b19076bd2409bd4b1046f809de878f2fb0e07 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.8-beta/openliberty-runtime-26.0.0.8-beta.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:25:43 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:25:43 GMT
USER 1001
# Tue, 04 Aug 2026 02:25:43 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:25:43 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:25:43 GMT
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
	-	`sha256:1d14c7694a414fc3c518e766b8c630db1d401b72afc90b56719a774bcebc850e`  
		Last Modified: Tue, 04 Aug 2026 02:26:23 GMT  
		Size: 12.8 KB (12772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b043facf15f7487c65b0f1c1c9d92236fa1c4be7048132e206b0eb7e6c73975`  
		Last Modified: Tue, 04 Aug 2026 02:26:23 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ba39ee912eebef889e1b1535cf9c9bc82158faeee9bed20bd90d32d0c78c5a1`  
		Last Modified: Tue, 04 Aug 2026 02:26:23 GMT  
		Size: 33.1 KB (33112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a343826799f9b5d3ba8102ff3e9cd9381b959e3eb14e7d7a34169d70cd51929`  
		Last Modified: Tue, 04 Aug 2026 02:26:30 GMT  
		Size: 369.2 MB (369248506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79381c22269eb14cb04e8888702799e6261c944a61e0c9810272aeb01c610574`  
		Last Modified: Tue, 04 Aug 2026 02:26:24 GMT  
		Size: 1.1 KB (1064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e7aebe06bee11ea777fb1f2a5aa4310bc21246c0f7688bf962e3065afedfc0`  
		Last Modified: Tue, 04 Aug 2026 02:26:24 GMT  
		Size: 14.2 KB (14224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbd3c3bbf71ae5111ff758265e88a855684ce5f29c1afd2a56f6faa994903411`  
		Last Modified: Tue, 04 Aug 2026 02:26:24 GMT  
		Size: 14.6 MB (14577760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta` - unknown; unknown

```console
$ docker pull open-liberty@sha256:065d288e7f27fd190b4350018099e2b60a26b2665634ce415acdbdb88701daf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5268122 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c0999a73a2306f082be511a7918821428b2059bc559a395b0f9a5c7cd277ef93`

```dockerfile
```

-	Layers:
	-	`sha256:2053fd419d779619e284586e39160f8e0d127b6cca7645e1c99e717834e898d3`  
		Last Modified: Tue, 04 Aug 2026 02:26:23 GMT  
		Size: 5.2 MB (5228767 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbbda5c1fdf8e26294eac39b4a76e8da45bc368780130ce3f76f97b5ab64f212`  
		Last Modified: Tue, 04 Aug 2026 02:26:23 GMT  
		Size: 39.4 KB (39355 bytes)  
		MIME: application/vnd.in-toto+json
