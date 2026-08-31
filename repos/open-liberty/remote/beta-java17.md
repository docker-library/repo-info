## `open-liberty:beta-java17`

```console
$ docker pull open-liberty@sha256:96abbdcb9ed6b9c7c7ea2c65ff5fbe5ea78c6b72b53a1e6396072a1e6582b38a
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

### `open-liberty:beta-java17` - linux; amd64

```console
$ docker pull open-liberty@sha256:37f1a609e6baa7585b3ec8c3236a5950124e25be7e253caf3a1cef4e823f545b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **487.9 MB (487913506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6804d4e6b8a69067257d6852f34371d45b05c223022600f615e2bc63acc379f4`
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
# Tue, 18 Aug 2026 19:18:54 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:18:54 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:18:54 GMT
ENV JAVA_VERSION=17.0.20.0
# Tue, 18 Aug 2026 19:20:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d1f7b72b7172276b3e9f9a720535441e0479c4334fa5b4baba991fede87a65b';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_aarch64_linux_17.0.20.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='44233d7f4f7c34322c374786c819a27522d2990f49b92e5ca5afc21ce43ea637';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_ppc64le_linux_17.0.20.0.tar.gz';          ;;        amd64|x86_64)          ESUM='ab02e45b38724d16ecca928d179f98b0189adf5a9782d3adfbcedffc5db2a45f';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_x64_linux_17.0.20.0.tar.gz';          ;;        s390x)          ESUM='648b95437dedc9cbe56b5dd2495dca63ac910f8db5ed14ca206aee96d9ef7a4d';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_s390x_linux_17.0.20.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 18 Aug 2026 19:20:31 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:20:31 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 18 Aug 2026 19:21:37 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 18 Aug 2026 20:20:38 GMT
USER root
# Tue, 18 Aug 2026 20:20:38 GMT
ARG LIBERTY_VERSION=26.0.0.9-beta
# Tue, 18 Aug 2026 20:20:38 GMT
ARG LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac
# Tue, 18 Aug 2026 20:20:38 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip
# Tue, 18 Aug 2026 20:20:38 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Tue, 18 Aug 2026 20:20:38 GMT
ARG OPENJ9_SCC=true
# Tue, 18 Aug 2026 20:20:38 GMT
ARG VERBOSE=false
# Tue, 18 Aug 2026 20:20:38 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.9-beta liberty.version=26.0.0.9-beta io.openliberty.version=26.0.0.9-beta
# Tue, 18 Aug 2026 20:20:38 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 18 Aug 2026 20:20:38 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 18 Aug 2026 20:20:38 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 18 Aug 2026 20:20:38 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 18 Aug 2026 20:20:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 18 Aug 2026 20:20:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 18 Aug 2026 20:20:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 18 Aug 2026 20:20:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 18 Aug 2026 20:21:13 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 18 Aug 2026 20:21:13 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 18 Aug 2026 20:21:13 GMT
USER 1001
# Tue, 18 Aug 2026 20:21:13 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 18 Aug 2026 20:21:13 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 18 Aug 2026 20:21:13 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8736614e8ed0fe734b75af9dbfe5f19f34f5254a90b981b0dac6df0aa226aaec`  
		Last Modified: Tue, 18 Aug 2026 19:20:20 GMT  
		Size: 12.8 MB (12769528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93994ef6bc992da6bac06d5655376fbe5b1a53ed544ebd4eab3b717d4a7d12fc`  
		Last Modified: Tue, 18 Aug 2026 19:21:51 GMT  
		Size: 56.2 MB (56171890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1eda988203564650edc4b7ac3717494c8ece68d3e8221b012e57dc0cf9bd422`  
		Last Modified: Tue, 18 Aug 2026 19:21:49 GMT  
		Size: 5.0 MB (5044234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4435db65011734d5e810e1eb23a6716d2f0f808ed980c9d9c8586c2c68ff4718`  
		Last Modified: Tue, 18 Aug 2026 20:21:36 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18330a1a2b6dc3bf1d6d19164f0c6a862e20313373c131f9d21f8d5e1f4fd0ee`  
		Last Modified: Tue, 18 Aug 2026 20:21:36 GMT  
		Size: 12.8 KB (12774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b327ce01293ae4e9fda5af5d4b57742e6919ddbefbdcde06fd790ff67231f1`  
		Last Modified: Tue, 18 Aug 2026 20:21:36 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc12923702edcf63231db0e39dc855022d6c198cc26f9fb5b52ff7f9b0e19cf0`  
		Last Modified: Tue, 18 Aug 2026 20:21:36 GMT  
		Size: 31.7 KB (31749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c765f682aa3caa02e7b1e430ba47bf4f1b7518bd8384b79af950d55c58eb3d4`  
		Last Modified: Tue, 18 Aug 2026 20:21:45 GMT  
		Size: 369.6 MB (369621027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fce1e5121b47c58636495ee4d5a34df5222da4f674de0886b280c86a032fd3`  
		Last Modified: Tue, 18 Aug 2026 20:21:37 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb8377d3566ff9dfd43c7a61133a68bb2095baf36944c6c832c163c4cf1170f2`  
		Last Modified: Tue, 18 Aug 2026 20:21:37 GMT  
		Size: 14.2 KB (14218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bce5490f77c37769df44316db210a7475078ef56d975a8d9cf03135eac32cfe`  
		Last Modified: Tue, 18 Aug 2026 20:21:38 GMT  
		Size: 14.5 MB (14492931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:02185756fcb1e373cee524af65f822f1afaa8bb17055c06b0b9b779ff2c12d83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5242900 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b10b493079b76b6e40eb8799f2e6d30ba5165de9ecace7152d3cabc70224ce42`

```dockerfile
```

-	Layers:
	-	`sha256:0fdeb8eb8db79a6299322620af3524e8ba4d9e8ad91488131687bae889c47193`  
		Last Modified: Tue, 18 Aug 2026 20:21:36 GMT  
		Size: 5.2 MB (5203523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3d34c1d059657640216b766a76ff7ead93188149ef6b4c4d2aef41c130e492d`  
		Last Modified: Tue, 18 Aug 2026 20:21:36 GMT  
		Size: 39.4 KB (39377 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta-java17` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:f9f465f8e768901dcead6cc37d6abd487e8fb61f7e450be0582f4e91b56d224c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **484.8 MB (484806557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b246103e3850038449bf98802d705e00ee2a0a049f5507de6588c68765ec485`
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
# Tue, 18 Aug 2026 19:20:36 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:20:36 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:20:36 GMT
ENV JAVA_VERSION=17.0.20.0
# Tue, 18 Aug 2026 19:20:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d1f7b72b7172276b3e9f9a720535441e0479c4334fa5b4baba991fede87a65b';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_aarch64_linux_17.0.20.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='44233d7f4f7c34322c374786c819a27522d2990f49b92e5ca5afc21ce43ea637';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_ppc64le_linux_17.0.20.0.tar.gz';          ;;        amd64|x86_64)          ESUM='ab02e45b38724d16ecca928d179f98b0189adf5a9782d3adfbcedffc5db2a45f';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_x64_linux_17.0.20.0.tar.gz';          ;;        s390x)          ESUM='648b95437dedc9cbe56b5dd2495dca63ac910f8db5ed14ca206aee96d9ef7a4d';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_s390x_linux_17.0.20.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 18 Aug 2026 19:20:38 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:20:38 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 18 Aug 2026 19:21:45 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 18 Aug 2026 20:20:48 GMT
USER root
# Tue, 18 Aug 2026 20:20:48 GMT
ARG LIBERTY_VERSION=26.0.0.9-beta
# Tue, 18 Aug 2026 20:20:48 GMT
ARG LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac
# Tue, 18 Aug 2026 20:20:48 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip
# Tue, 18 Aug 2026 20:20:48 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Tue, 18 Aug 2026 20:20:48 GMT
ARG OPENJ9_SCC=true
# Tue, 18 Aug 2026 20:20:48 GMT
ARG VERBOSE=false
# Tue, 18 Aug 2026 20:20:48 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.9-beta liberty.version=26.0.0.9-beta io.openliberty.version=26.0.0.9-beta
# Tue, 18 Aug 2026 20:20:48 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 18 Aug 2026 20:20:48 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 18 Aug 2026 20:20:48 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 18 Aug 2026 20:20:48 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 18 Aug 2026 20:21:02 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 18 Aug 2026 20:21:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 18 Aug 2026 20:21:02 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 18 Aug 2026 20:21:03 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 18 Aug 2026 20:21:29 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 18 Aug 2026 20:21:29 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 18 Aug 2026 20:21:29 GMT
USER 1001
# Tue, 18 Aug 2026 20:21:29 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 18 Aug 2026 20:21:29 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 18 Aug 2026 20:21:29 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e056ced2c80c673104eee4c017e165395b910469e649b76dff72a5bd9990f8`  
		Last Modified: Tue, 18 Aug 2026 19:21:58 GMT  
		Size: 12.8 MB (12804281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9dabcddacef6c965853fb27b2cf524ea62170d64771cb78086ad45b8da9d2b4`  
		Last Modified: Tue, 18 Aug 2026 19:21:59 GMT  
		Size: 54.3 MB (54346078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2880cb1b3ca015c4c5f014c9e5b4ea2dffa19d7a864d5192a32b3868b41a63ce`  
		Last Modified: Tue, 18 Aug 2026 19:21:57 GMT  
		Size: 4.8 MB (4764448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d92df2c19369db8323aa01695f564a09b8ff8ceb1e1db629a08243735e09e3b`  
		Last Modified: Tue, 18 Aug 2026 20:21:55 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c8476b33e6a12cde4655b5a5852078bf20a8997fa6ff8d7bf07a16dd6c787fa`  
		Last Modified: Tue, 18 Aug 2026 20:21:54 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae590c1786b3f2d4b6d4252214af3d4763fc24ed2ee8e21cf5e1e3ff200e22a2`  
		Last Modified: Tue, 18 Aug 2026 20:21:55 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b68ea7a079c3f35030dc350d7a0c9acd4207e0cb69527c12fe53de0ff7a3ac0e`  
		Last Modified: Tue, 18 Aug 2026 20:21:54 GMT  
		Size: 42.3 KB (42325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4eb64f5f6da5c7212350bf69c03ca1e88caff03f4ef4e494275095cdc6827e`  
		Last Modified: Tue, 18 Aug 2026 20:22:03 GMT  
		Size: 369.6 MB (369620955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5261f9a1db0515c1ea67a1c95301bfabaa4392c66faaf5958e12bb345946d12`  
		Last Modified: Tue, 18 Aug 2026 20:21:56 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60c00c6292e0d343c8c6f2c09a272e26c751b9d846dd28f8516628a915b7c9da`  
		Last Modified: Tue, 18 Aug 2026 20:21:56 GMT  
		Size: 14.2 KB (14220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08b48506af3b432ed25e65b6b42d2be851b91b927f6c7910ed38d8def3caf33`  
		Last Modified: Tue, 18 Aug 2026 20:21:56 GMT  
		Size: 14.3 MB (14311887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:e039419b3fbb323fd2907eeaa421019c66e879b2697dc40610a0fd831d635e8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5241557 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fd8b19cd355828479545c0d3c2faa6945abe647330b536e2c97ced81845a1d53`

```dockerfile
```

-	Layers:
	-	`sha256:e94be2c9b0cbee6df8c47c001e5b894cdffa43ab8553c5f5662dc93609a65cd3`  
		Last Modified: Tue, 18 Aug 2026 20:21:55 GMT  
		Size: 5.2 MB (5202053 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53af5d19678dfac174ca44e49062ad33b6ad2ea3f5e3cdd96a776210bc63ca32`  
		Last Modified: Tue, 18 Aug 2026 20:21:54 GMT  
		Size: 39.5 KB (39504 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta-java17` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:37092492d726dc6742c65ebee8737b7a87d534b2a8cad9a2c4aed0fe458fdbc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.8 MB (492794621 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de2900c46a2355d82245a8a4eaac4279c658452dc5a11119bcc0be73f5e0e564`
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
ENV JAVA_VERSION=17.0.20.0
# Wed, 19 Aug 2026 21:34:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0d1f7b72b7172276b3e9f9a720535441e0479c4334fa5b4baba991fede87a65b';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_aarch64_linux_17.0.20.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='44233d7f4f7c34322c374786c819a27522d2990f49b92e5ca5afc21ce43ea637';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_ppc64le_linux_17.0.20.0.tar.gz';          ;;        amd64|x86_64)          ESUM='ab02e45b38724d16ecca928d179f98b0189adf5a9782d3adfbcedffc5db2a45f';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_x64_linux_17.0.20.0.tar.gz';          ;;        s390x)          ESUM='648b95437dedc9cbe56b5dd2495dca63ac910f8db5ed14ca206aee96d9ef7a4d';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.0/ibm-semeru-open-jre_s390x_linux_17.0.20.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 19 Aug 2026 21:34:37 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 21:34:37 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 19 Aug 2026 21:35:44 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 20 Aug 2026 00:14:19 GMT
USER root
# Thu, 20 Aug 2026 00:14:19 GMT
ARG LIBERTY_VERSION=26.0.0.9-beta
# Thu, 20 Aug 2026 00:14:19 GMT
ARG LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac
# Thu, 20 Aug 2026 00:14:19 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip
# Thu, 20 Aug 2026 00:14:19 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Thu, 20 Aug 2026 00:14:19 GMT
ARG OPENJ9_SCC=true
# Thu, 20 Aug 2026 00:14:19 GMT
ARG VERBOSE=false
# Thu, 20 Aug 2026 00:14:19 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.9-beta liberty.version=26.0.0.9-beta io.openliberty.version=26.0.0.9-beta
# Thu, 20 Aug 2026 00:14:19 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Thu, 20 Aug 2026 00:14:19 GMT
COPY helpers /opt/ol/helpers # buildkit
# Thu, 20 Aug 2026 00:14:19 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Thu, 20 Aug 2026 00:14:20 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 20 Aug 2026 00:14:38 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Thu, 20 Aug 2026 00:14:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Thu, 20 Aug 2026 00:14:39 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 20 Aug 2026 00:14:40 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 20 Aug 2026 00:15:24 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Thu, 20 Aug 2026 00:15:24 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 20 Aug 2026 00:15:24 GMT
USER 1001
# Thu, 20 Aug 2026 00:15:24 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 20 Aug 2026 00:15:24 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Thu, 20 Aug 2026 00:15:24 GMT
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
	-	`sha256:a7a0ef9f47f0a1461e164b76b275c3cd7016fe37eeb87f11d245c76fbb750ac4`  
		Last Modified: Wed, 19 Aug 2026 21:36:11 GMT  
		Size: 58.1 MB (58103047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c94f32c1f3d319ad9c3b15a10ab76d9037f92da5e15d4c0a436fec024b0c02f3`  
		Last Modified: Wed, 19 Aug 2026 21:36:09 GMT  
		Size: 3.9 MB (3931331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ac56f5e076e96ce39cfde1aa8ea8f5a2f013eb8157a69fcbeb47b2a0964cb`  
		Last Modified: Thu, 20 Aug 2026 00:16:12 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a342fcae03dc102db6d62c1a7f3a6f5635083959015f8999cd73f4bbec6d240`  
		Last Modified: Thu, 20 Aug 2026 00:16:12 GMT  
		Size: 12.8 KB (12775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c186d1e1e655418abc12bb45b0149c99eb4a84f6a6e36faa6f472d8e3d323ceb`  
		Last Modified: Thu, 20 Aug 2026 00:16:12 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eeff77853c150a14c3b3ed4186d570c640ccaec89f596ae3e6d165fe27fc86`  
		Last Modified: Thu, 20 Aug 2026 00:16:12 GMT  
		Size: 36.5 KB (36494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:516e479c76be1df6873ce57a67928094465eda36225842217226faca3c882b7f`  
		Last Modified: Thu, 20 Aug 2026 00:16:21 GMT  
		Size: 369.6 MB (369621329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:419a8c64735f5341b5b6efbbdc2b2a601b49adfbd7c722d97382cdb11f090105`  
		Last Modified: Thu, 20 Aug 2026 00:16:13 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa4bc471cf941d8cd42e7c453e272581a459d5cfdb62d8dfce41dfa6d1679c4`  
		Last Modified: Thu, 20 Aug 2026 00:16:13 GMT  
		Size: 14.2 KB (14244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae07429230a9dd30eb37eeb0eca956f0c289a0203078a95e050d04813fe0bda8`  
		Last Modified: Thu, 20 Aug 2026 00:16:14 GMT  
		Size: 13.0 MB (13014581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:424303ee45a67e6c573d0ab8e62001f3913a70678bb7a9dd12aa167f1115f12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247556 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3023b95156d4490871cd6ad575576eeb49df2aca64ebd75c1c9cfc73072d0536`

```dockerfile
```

-	Layers:
	-	`sha256:99ec81b7896f47e6c7053eaf8f553660942cbd9bcfc8550e4982c5a36efb4392`  
		Last Modified: Thu, 20 Aug 2026 00:16:12 GMT  
		Size: 5.2 MB (5208145 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9cf60bb166b5f7a4c092723b3bb2cb588618c6743f96a607c9f08d4d133c78c3`  
		Last Modified: Thu, 20 Aug 2026 00:16:11 GMT  
		Size: 39.4 KB (39411 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta-java17` - linux; s390x

```console
$ docker pull open-liberty@sha256:b389940cb6213b2b5f32039cb9c37927ffad921479e43981ec279d324720fa0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **493.3 MB (493299807 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a316b3de747573f59e88b897e90638b8328db33c22c0d7db5f486650137ed65f`
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
# Mon, 31 Aug 2026 18:32:29 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 31 Aug 2026 18:32:29 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 18:32:29 GMT
ENV JAVA_VERSION=17.0.20.10
# Mon, 31 Aug 2026 18:37:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='aa55793708c448a90e9223ad3e0e7a4a9f737d6eea7e88ae5b164a67733e085b';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jre_aarch64_linux_17.0.20.10.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='ccd5c9b8ee3f2425b4121e12ac063536a3fb0932382b14f369822c66254ac76d';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jre_ppc64le_linux_17.0.20.10.tar.gz';          ;;        amd64|x86_64)          ESUM='fddbc4cbd086c9fb507ced27e8a9061d1da45c0dfd188d2dd2360392e4614d3d';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jre_x64_linux_17.0.20.10.tar.gz';          ;;        s390x)          ESUM='4dc1b92f27c6499cb8595b7fa60b24f6ca07dc0ef87676a65115fef6204939f6';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.10/ibm-semeru-open-jre_s390x_linux_17.0.20.10.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 31 Aug 2026 18:37:00 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 31 Aug 2026 18:37:00 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 31 Aug 2026 18:38:04 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 31 Aug 2026 18:46:04 GMT
USER root
# Mon, 31 Aug 2026 18:46:04 GMT
ARG LIBERTY_VERSION=26.0.0.9-beta
# Mon, 31 Aug 2026 18:46:04 GMT
ARG LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac
# Mon, 31 Aug 2026 18:46:04 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip
# Mon, 31 Aug 2026 18:46:04 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 31 Aug 2026 18:46:04 GMT
ARG OPENJ9_SCC=true
# Mon, 31 Aug 2026 18:46:04 GMT
ARG VERBOSE=false
# Mon, 31 Aug 2026 18:46:04 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.9-beta liberty.version=26.0.0.9-beta io.openliberty.version=26.0.0.9-beta
# Mon, 31 Aug 2026 18:46:04 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 31 Aug 2026 18:46:04 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 31 Aug 2026 18:46:04 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 31 Aug 2026 18:46:04 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 31 Aug 2026 18:46:19 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 31 Aug 2026 18:46:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 31 Aug 2026 18:46:19 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 31 Aug 2026 18:46:19 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 31 Aug 2026 18:46:48 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9-beta LIBERTY_SHA=52af30086cb86dca8d028182eaf4091e83362fac LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.9-beta/openliberty-runtime-26.0.0.9-beta.zip LIBERTY_BUILD_LABEL=cl260820260725-1102 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 31 Aug 2026 18:46:48 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 31 Aug 2026 18:46:48 GMT
USER 1001
# Mon, 31 Aug 2026 18:46:48 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 31 Aug 2026 18:46:48 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 31 Aug 2026 18:46:48 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0515f78e3efa42d97d65248f6c9e1d89eac93d88d4d0f56efe8a2f63e077d57`  
		Last Modified: Mon, 31 Aug 2026 18:33:57 GMT  
		Size: 15.2 MB (15177974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7389a67068d0a4c4c9955743fe8ccc9f1bd7653cd6306a7d642b10e6d57cb0a`  
		Last Modified: Mon, 31 Aug 2026 18:38:25 GMT  
		Size: 58.4 MB (58399356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:946ac193a06806da8ec6e298e4f0efb26d8818d3fb6877dab8cd3a6c4179d60d`  
		Last Modified: Mon, 31 Aug 2026 18:38:24 GMT  
		Size: 5.2 MB (5244024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa7254f154d13ac5d34e844b5baedc3e735ca26d2719082be45f0d9a0ba15e35`  
		Last Modified: Mon, 31 Aug 2026 18:47:21 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7920322be1989c89cd4b3486f0165d3a349110a0cf6c0b027bd58e368d050688`  
		Last Modified: Mon, 31 Aug 2026 18:47:21 GMT  
		Size: 12.8 KB (12772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7142f1b2fceb132646b8ea2d56390aa1b304db1a3f3d54bc85a80b90ff6dee16`  
		Last Modified: Mon, 31 Aug 2026 18:47:21 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e0275c98d6ff4534b7d5156d960ae6cf8a4dc36c84384a48c36f528cbb4e86f`  
		Last Modified: Mon, 31 Aug 2026 18:47:21 GMT  
		Size: 33.1 KB (33113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c2cb6bbfc402ccb62aa02c7afd6f01c7d4b60522d8135e7304eee2ecc7bc8b6`  
		Last Modified: Mon, 31 Aug 2026 18:47:30 GMT  
		Size: 369.6 MB (369620819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ad83b4614e040b76b8b8e2e1e6c672b5e22b41b4eed379180477a0706426ada`  
		Last Modified: Mon, 31 Aug 2026 18:47:23 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d04c1e3422b8b787034b86d7740680ee8c1e2b0b21bed4bc14cc6fe70766533`  
		Last Modified: Mon, 31 Aug 2026 18:47:23 GMT  
		Size: 14.2 KB (14216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4615c6428aa0947f98e19c2b14c756bd8a6e37f9a6842882b21aef84f2c395d3`  
		Last Modified: Mon, 31 Aug 2026 18:47:23 GMT  
		Size: 14.9 MB (14859932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:f8524fe458ec4a6ef67775548cb67f7a357759173fe8efb834c74a4adab93b38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5243910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8480d848f26a51ee60dd42b9fed446b9dd03c3eef7837ff3f611b8c61e670cef`

```dockerfile
```

-	Layers:
	-	`sha256:7a3a1766858a1e3db6192e413b145cf42acd667489bd62196568a6e5c4e00f7f`  
		Last Modified: Mon, 31 Aug 2026 18:47:22 GMT  
		Size: 5.2 MB (5204528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa478b7ae8f49fd95fecb3e743fdd08f59b71407398dda9835f42e5fb1f8b948`  
		Last Modified: Mon, 31 Aug 2026 18:47:21 GMT  
		Size: 39.4 KB (39382 bytes)  
		MIME: application/vnd.in-toto+json
