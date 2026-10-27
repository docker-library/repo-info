## `open-liberty:beta-java17`

```console
$ docker pull open-liberty@sha256:a18b07645e4eff176fdbfc092365ea8617bd27e2af7a881010a5cfe8fe01c52f
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
$ docker pull open-liberty@sha256:17ab897959b08a1284c858ed6f4d6ef56eafe495c4234077c4460ed3cb754bc9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.4 MB (489419790 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ef40abdc9ea1ebe8f7750f09031885e47033b784dd6f70b2cf281bc4aff1dc9`
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
# Mon, 26 Oct 2026 23:17:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:17:08 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:17:08 GMT
ENV JAVA_VERSION=17.0.20.15
# Mon, 26 Oct 2026 23:19:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='14911694860c4ad7f1564fc567983d5105e2ad0bc875bd9657e9eb53cb5e73b2';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_aarch64_linux_17.0.20.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='da2216939e82422ed8e948f4e03e10ea52f1a26138e053554a291828e39aae8e';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_ppc64le_linux_17.0.20.15.tar.gz';          ;;        amd64|x86_64)          ESUM='9cdac54bbfc7d794ed378c88eb0e77c275e1a1548b9ee82862e46ff2e37d4ef4';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_x64_linux_17.0.20.15.tar.gz';          ;;        s390x)          ESUM='6dcd5ff294bdc5b13acc053b16473c6c53c45d17eb9318bff2cd074670b652b9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_s390x_linux_17.0.20.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:19:05 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:19:05 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:20:12 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 27 Oct 2026 00:28:33 GMT
USER root
# Tue, 27 Oct 2026 00:28:33 GMT
ARG LIBERTY_VERSION=26.0.0.10-beta
# Tue, 27 Oct 2026 00:28:33 GMT
ARG LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c
# Tue, 27 Oct 2026 00:28:33 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip
# Tue, 27 Oct 2026 00:28:33 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Tue, 27 Oct 2026 00:28:33 GMT
ARG OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:28:33 GMT
ARG VERBOSE=false
# Tue, 27 Oct 2026 00:28:33 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.10-beta liberty.version=26.0.0.10-beta io.openliberty.version=26.0.0.10-beta
# Tue, 27 Oct 2026 00:28:33 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 27 Oct 2026 00:28:33 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 27 Oct 2026 00:28:33 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 27 Oct 2026 00:28:33 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 27 Oct 2026 00:28:49 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 27 Oct 2026 00:28:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:28:50 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 27 Oct 2026 00:28:50 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 27 Oct 2026 00:29:13 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 27 Oct 2026 00:29:13 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 27 Oct 2026 00:29:13 GMT
USER 1001
# Tue, 27 Oct 2026 00:29:13 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 27 Oct 2026 00:29:13 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 27 Oct 2026 00:29:13 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d20b4789900198b1c6ab0308eb66051d2529950b7e141e4f7b76cc1f787c403`  
		Last Modified: Mon, 26 Oct 2026 23:18:51 GMT  
		Size: 12.8 MB (12792210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3dbab74ec477c5d96033d01b2a65e2dbd8027b534e3c3575184e4e04af71ab`  
		Last Modified: Mon, 26 Oct 2026 23:20:26 GMT  
		Size: 56.2 MB (56181999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c123fed57d889ff2873cb907192c8690f0d606d2ef9a9f2a6bde53cb9bde0a9`  
		Last Modified: Mon, 26 Oct 2026 23:20:24 GMT  
		Size: 5.0 MB (4991185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6e6e87624747dcb1bb1b72a5b9b69394058819a020110a74876b06ce943ba0`  
		Last Modified: Tue, 27 Oct 2026 00:29:37 GMT  
		Size: 1.0 KB (1047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e287e5223747c76891cca81fb9af711b95411cae8c3411a66307ca2eafaef0bb`  
		Last Modified: Tue, 27 Oct 2026 00:29:37 GMT  
		Size: 12.8 KB (12775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:073d138297a0ec90b88e0e26841153b4c3ded45d72eee4f39711657e7c7071f7`  
		Last Modified: Tue, 27 Oct 2026 00:29:37 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c14103066e569c19205444b5c0dcbf1c7eec493f39d1cc6759bb34942e30f629`  
		Last Modified: Tue, 27 Oct 2026 00:29:37 GMT  
		Size: 31.7 KB (31745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb677bf0d572810f7a477269652978ed30e83df75667126e980acf33bc62b9b`  
		Last Modified: Tue, 27 Oct 2026 00:29:45 GMT  
		Size: 371.0 MB (370993886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17da5dda344092cd26bbd8db84bd83db819cbeb04e31b16b6903d863ac5e7d48`  
		Last Modified: Tue, 27 Oct 2026 00:29:38 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711cac96dcdb2f1d14427f686d672215fe1c8ffa604cb0c7b5b1a2db917c7335`  
		Last Modified: Tue, 27 Oct 2026 00:29:38 GMT  
		Size: 14.2 KB (14220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f82bc191b2ed1a14e0831351ae365a73473c263f6e704a82377d6eaf9764da6`  
		Last Modified: Tue, 27 Oct 2026 00:29:39 GMT  
		Size: 14.6 MB (14631816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:366d73c353f34904e4583fb28226a69a1a2c7ab5f4e21c79ea76a208e1faee13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5249283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b57c3c05e42ed663b46cfb51e877509e2e06d534209f58b819076b33b89f5dfe`

```dockerfile
```

-	Layers:
	-	`sha256:13d1d0041d371979f0bbf9cf0f67a966d1e613df1d56366e99c3f39d41511b27`  
		Last Modified: Tue, 27 Oct 2026 00:29:37 GMT  
		Size: 5.2 MB (5209886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb2c61b6d532a46850debdfd0bf42de01380c5c0a21012210942176b858b67aa`  
		Last Modified: Tue, 27 Oct 2026 00:29:37 GMT  
		Size: 39.4 KB (39397 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta-java17` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:efb7999558da6dc05451a3f3ed362ecbb8aae0a96eca948d52881b953b79818e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.2 MB (486245054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:34c092e1f6e3939875ba59ca867338dac442f80490510b2845bbcedb6f1f24fe`
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
# Mon, 26 Oct 2026 23:23:55 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:23:55 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:23:55 GMT
ENV JAVA_VERSION=17.0.20.15
# Mon, 26 Oct 2026 23:23:57 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='14911694860c4ad7f1564fc567983d5105e2ad0bc875bd9657e9eb53cb5e73b2';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_aarch64_linux_17.0.20.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='da2216939e82422ed8e948f4e03e10ea52f1a26138e053554a291828e39aae8e';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_ppc64le_linux_17.0.20.15.tar.gz';          ;;        amd64|x86_64)          ESUM='9cdac54bbfc7d794ed378c88eb0e77c275e1a1548b9ee82862e46ff2e37d4ef4';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_x64_linux_17.0.20.15.tar.gz';          ;;        s390x)          ESUM='6dcd5ff294bdc5b13acc053b16473c6c53c45d17eb9318bff2cd074670b652b9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_s390x_linux_17.0.20.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:23:57 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:23:57 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:25:03 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 27 Oct 2026 00:28:10 GMT
USER root
# Tue, 27 Oct 2026 00:28:10 GMT
ARG LIBERTY_VERSION=26.0.0.10-beta
# Tue, 27 Oct 2026 00:28:10 GMT
ARG LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c
# Tue, 27 Oct 2026 00:28:10 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip
# Tue, 27 Oct 2026 00:28:10 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Tue, 27 Oct 2026 00:28:10 GMT
ARG OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:28:10 GMT
ARG VERBOSE=false
# Tue, 27 Oct 2026 00:28:10 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.10-beta liberty.version=26.0.0.10-beta io.openliberty.version=26.0.0.10-beta
# Tue, 27 Oct 2026 00:28:10 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 27 Oct 2026 00:28:10 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 27 Oct 2026 00:28:10 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 27 Oct 2026 00:28:10 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 27 Oct 2026 00:28:28 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 27 Oct 2026 00:28:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:28:29 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 27 Oct 2026 00:28:29 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 27 Oct 2026 00:28:56 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 27 Oct 2026 00:28:56 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 27 Oct 2026 00:28:56 GMT
USER 1001
# Tue, 27 Oct 2026 00:28:56 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 27 Oct 2026 00:28:56 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 27 Oct 2026 00:28:56 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df2402b3480e83168bd0f4552d5a9ab5c309abef10339fb2e1e060a819ef99e`  
		Last Modified: Mon, 26 Oct 2026 23:25:16 GMT  
		Size: 12.8 MB (12829950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22518b5cf06abc4818ca9459bf2fe7029beba173642629573497b0c9b703b45f`  
		Last Modified: Mon, 26 Oct 2026 23:25:17 GMT  
		Size: 54.4 MB (54351089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67abea124f3189635ed782da1c0eea74a825a0cb14081b9f48d5aaeeffb91e3`  
		Last Modified: Mon, 26 Oct 2026 23:25:16 GMT  
		Size: 4.8 MB (4780007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79530669e16e6d5f4d268489ca7b70502edd4f4ad5ea705396d0534460fbb0ed`  
		Last Modified: Tue, 27 Oct 2026 00:29:22 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e27768b073ebf4047846008fe5fc6d0c16a261f76a648133116ef212769aead`  
		Last Modified: Tue, 27 Oct 2026 00:29:22 GMT  
		Size: 12.8 KB (12774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81b0b9c51013e2660edbbd4fce8e7fee705a7cac0c2b13aa84e79587b7b7c2b`  
		Last Modified: Tue, 27 Oct 2026 00:29:22 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f042c0967e8964879495ddbf78263ae0e214fddecb1f6579af81395787baf9fd`  
		Last Modified: Tue, 27 Oct 2026 00:28:33 GMT  
		Size: 42.3 KB (42322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fa56127a52634781a1d5fadaf851ad395fe8adebb5d116d7f2914cc9952e2f7`  
		Last Modified: Tue, 27 Oct 2026 00:29:29 GMT  
		Size: 371.0 MB (370993889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1299d3dd8327b5f38a55a2392c962e941b4dbb3476d6dd3d157e0b28d62fcba6`  
		Last Modified: Tue, 27 Oct 2026 00:29:23 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5209fdcfdbd6abb8709056f304781487a9bb529fd3c26aefef7303530bcfac7`  
		Last Modified: Tue, 27 Oct 2026 00:29:23 GMT  
		Size: 14.2 KB (14213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e8c68a1e6054012ea8e03dce675627f2757d62d4086d6e32920943ed371e81c`  
		Last Modified: Tue, 27 Oct 2026 00:29:24 GMT  
		Size: 14.3 MB (14278336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:6607803c566d16ebeae1b545e8b2f8c8937083ced11db129a4207a860cd45124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5247941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0218a489e75372bfad90e85ac1588d52c68425095896a13a6c526e924d36789`

```dockerfile
```

-	Layers:
	-	`sha256:d505fd0afdf6bf06dbd446ae737c85f1deed5f560880d6296879f16a3606a7a4`  
		Last Modified: Tue, 27 Oct 2026 00:29:22 GMT  
		Size: 5.2 MB (5208416 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f834d012c1522bc5de0247001be2335da29b3c34dde2dd4fa85c93036f664c8f`  
		Last Modified: Tue, 27 Oct 2026 00:29:22 GMT  
		Size: 39.5 KB (39525 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta-java17` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:81fe68152991bb4dcb6e2ed8c2db7d567625ac220bd9f4d95e01037b18dca6ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.2 MB (494207892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c5ef7bea43a61afe573094ea4963e1ec2a1395ed8b95ce84e330b4d3ae86ec`
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
# Tue, 27 Oct 2026 05:28:57 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 05:28:57 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 05:28:57 GMT
ENV JAVA_VERSION=17.0.20.15
# Tue, 27 Oct 2026 05:32:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='14911694860c4ad7f1564fc567983d5105e2ad0bc875bd9657e9eb53cb5e73b2';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_aarch64_linux_17.0.20.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='da2216939e82422ed8e948f4e03e10ea52f1a26138e053554a291828e39aae8e';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_ppc64le_linux_17.0.20.15.tar.gz';          ;;        amd64|x86_64)          ESUM='9cdac54bbfc7d794ed378c88eb0e77c275e1a1548b9ee82862e46ff2e37d4ef4';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_x64_linux_17.0.20.15.tar.gz';          ;;        s390x)          ESUM='6dcd5ff294bdc5b13acc053b16473c6c53c45d17eb9318bff2cd074670b652b9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_s390x_linux_17.0.20.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 27 Oct 2026 05:32:49 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 05:32:49 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 27 Oct 2026 05:33:57 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 27 Oct 2026 17:31:38 GMT
USER root
# Tue, 27 Oct 2026 17:31:38 GMT
ARG LIBERTY_VERSION=26.0.0.10-beta
# Tue, 27 Oct 2026 17:31:38 GMT
ARG LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c
# Tue, 27 Oct 2026 17:31:38 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip
# Tue, 27 Oct 2026 17:31:38 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Tue, 27 Oct 2026 17:31:38 GMT
ARG OPENJ9_SCC=true
# Tue, 27 Oct 2026 17:31:38 GMT
ARG VERBOSE=false
# Tue, 27 Oct 2026 17:31:38 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.10-beta liberty.version=26.0.0.10-beta io.openliberty.version=26.0.0.10-beta
# Tue, 27 Oct 2026 17:31:38 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 27 Oct 2026 17:31:38 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 27 Oct 2026 17:31:38 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 27 Oct 2026 17:31:39 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 27 Oct 2026 17:32:11 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 27 Oct 2026 17:32:11 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 27 Oct 2026 17:32:12 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 27 Oct 2026 17:32:14 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 27 Oct 2026 17:32:56 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 27 Oct 2026 17:32:56 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 27 Oct 2026 17:32:56 GMT
USER 1001
# Tue, 27 Oct 2026 17:32:56 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 27 Oct 2026 17:32:56 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 27 Oct 2026 17:32:56 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38a404613af5c822b057ef7b5b3b53552dfe62b70307c94ddc9477011dd97d48`  
		Last Modified: Tue, 27 Oct 2026 05:32:28 GMT  
		Size: 13.8 MB (13765107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f2f8e19439dcbcc9d6c48c8103dfdb7807f1edb0f3ae704850426db7de4cea5`  
		Last Modified: Tue, 27 Oct 2026 05:34:25 GMT  
		Size: 58.1 MB (58100840 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ebbea3b2afa6e4076661b967c611f0e1c74bd77b8aff0eb405132be3ec0ab8`  
		Last Modified: Tue, 27 Oct 2026 05:34:24 GMT  
		Size: 3.9 MB (3906476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c9818661acdb5d6f9970413f942ba376351861ef8cc72aebe24f487b7790f3`  
		Last Modified: Tue, 27 Oct 2026 17:33:46 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0dafcf257318bc5995cc9891dcbf1941e39653600e579cf17c9edf94cb17d2`  
		Last Modified: Tue, 27 Oct 2026 17:33:46 GMT  
		Size: 12.8 KB (12777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:649850c179851758a240f355ae16549e0f8e7ef3334e643b1d1d2de1c3848ea5`  
		Last Modified: Tue, 27 Oct 2026 17:33:46 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:307664b599311864cd2b7b568d2ae8b91a1daca58d4e7630fd5ae5499523b478`  
		Last Modified: Tue, 27 Oct 2026 17:33:46 GMT  
		Size: 36.5 KB (36498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72891c2684ea8081b542d96e10896dd8f5fea86163a776dbc0374b0ffb20ba8f`  
		Last Modified: Tue, 27 Oct 2026 17:33:55 GMT  
		Size: 371.0 MB (370993995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7832ac180df830d67505b5a034f88c320cb4c8ac53e2723ab474467d77ca5d`  
		Last Modified: Tue, 27 Oct 2026 17:33:47 GMT  
		Size: 1.1 KB (1058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24fa90085bc4416e8359a0296282ef5aea55485de31090b4fc0e84cc345237f1`  
		Last Modified: Tue, 27 Oct 2026 17:33:47 GMT  
		Size: 14.3 KB (14251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27cd8a2eb5faa102ba4ad080ff9866d053758ac8632963ca34a9eae1bad33af`  
		Last Modified: Tue, 27 Oct 2026 17:33:48 GMT  
		Size: 13.0 MB (12997289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:488972be2d12dd1b2998467e1d0ee07cf99750ad228d3d8080de7df4926c51e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5253939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e2b4e193be73c00c8ec0000def1c34aa0e9a8f96ecfde9e9da54b3ca559ad0`

```dockerfile
```

-	Layers:
	-	`sha256:5c03688d3e24887ad129c3d42ced42791f3b2259c7b20ddff982206293557e46`  
		Last Modified: Tue, 27 Oct 2026 17:33:46 GMT  
		Size: 5.2 MB (5214508 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de5a4959eab2c8f5b31dc490e681fbfd9f9f91fae10d448f5efc76354cafcf5e`  
		Last Modified: Tue, 27 Oct 2026 17:33:46 GMT  
		Size: 39.4 KB (39431 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta-java17` - linux; s390x

```console
$ docker pull open-liberty@sha256:232d5852a8bf7769c8d459efbf10457d0acb9123c9f2ef37eeb1a7ed1e73eb1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.5 MB (492536811 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e68ef2e113310efce5098f79cbe85a2bbdd4b7185c39f056ce1bdac0e1e63f02`
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
# Mon, 26 Oct 2026 23:50:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:50:44 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:50:44 GMT
ENV JAVA_VERSION=17.0.20.15
# Mon, 26 Oct 2026 23:51:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='14911694860c4ad7f1564fc567983d5105e2ad0bc875bd9657e9eb53cb5e73b2';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_aarch64_linux_17.0.20.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='da2216939e82422ed8e948f4e03e10ea52f1a26138e053554a291828e39aae8e';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_ppc64le_linux_17.0.20.15.tar.gz';          ;;        amd64|x86_64)          ESUM='9cdac54bbfc7d794ed378c88eb0e77c275e1a1548b9ee82862e46ff2e37d4ef4';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_x64_linux_17.0.20.15.tar.gz';          ;;        s390x)          ESUM='6dcd5ff294bdc5b13acc053b16473c6c53c45d17eb9318bff2cd074670b652b9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_s390x_linux_17.0.20.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:51:42 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:51:42 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:52:48 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 27 Oct 2026 00:37:03 GMT
USER root
# Tue, 27 Oct 2026 00:37:03 GMT
ARG LIBERTY_VERSION=26.0.0.10-beta
# Tue, 27 Oct 2026 00:37:03 GMT
ARG LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c
# Tue, 27 Oct 2026 00:37:03 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip
# Tue, 27 Oct 2026 00:37:03 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Tue, 27 Oct 2026 00:37:03 GMT
ARG OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:37:03 GMT
ARG VERBOSE=false
# Tue, 27 Oct 2026 00:37:03 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.10-beta liberty.version=26.0.0.10-beta io.openliberty.version=26.0.0.10-beta
# Tue, 27 Oct 2026 00:37:03 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 27 Oct 2026 00:37:03 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 27 Oct 2026 00:37:03 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 27 Oct 2026 00:37:03 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 27 Oct 2026 00:37:15 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 27 Oct 2026 00:37:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:37:15 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 27 Oct 2026 00:37:15 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 27 Oct 2026 00:37:42 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 27 Oct 2026 00:37:42 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 27 Oct 2026 00:37:42 GMT
USER 1001
# Tue, 27 Oct 2026 00:37:42 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 27 Oct 2026 00:37:42 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 27 Oct 2026 00:37:42 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a511c64654dfe2dcc711bb918c1956d98cf75eb4d4d430e3de000f00f2d0ba6f`  
		Last Modified: Mon, 26 Oct 2026 23:52:21 GMT  
		Size: 13.1 MB (13097943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fb1e7dc938517762da11ffc21edbe8471ad40363a1adcbf4b95c205592664f`  
		Last Modified: Mon, 26 Oct 2026 23:53:10 GMT  
		Size: 58.4 MB (58400236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66e6a4eb0d4ddd3b3f34a1db00f8d4bad88b8d7338b37e5403fe84a2992f85e`  
		Last Modified: Mon, 26 Oct 2026 23:53:09 GMT  
		Size: 5.3 MB (5254049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71323b7b0d2eef37e5fba09fc8548f55b217b9a40c7c13e6acd3e24ee86483e`  
		Last Modified: Tue, 27 Oct 2026 00:38:15 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dfa5a5211062efd72af622d2270c6921cd9d30dea649545ac0ca0a5a58adb6a`  
		Last Modified: Tue, 27 Oct 2026 00:38:15 GMT  
		Size: 12.8 KB (12772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1dbecbd34436aa24fad338461dddf46c99b252c85a9dd474f4f92986264231`  
		Last Modified: Tue, 27 Oct 2026 00:38:15 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a2a54101801386ba1cd71ce408f45e5d04b8ad209231e8ea34aa5f13bf599cd`  
		Last Modified: Tue, 27 Oct 2026 00:37:26 GMT  
		Size: 33.1 KB (33109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c2dfa8f56f98d41df1e1c9aae729a7a5b1dfef7ed275eecd933b01d333fdadf`  
		Last Modified: Tue, 27 Oct 2026 00:38:21 GMT  
		Size: 371.0 MB (370993599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0b80bfdea9743fcc7a0de8a2d421f27b954907e7d52dff9b777fd5ef0abf159`  
		Last Modified: Tue, 27 Oct 2026 00:38:16 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac55eb4891276c693c03b01e225184bba44806b30fd824e01ae9869d2eb7dc31`  
		Last Modified: Tue, 27 Oct 2026 00:38:16 GMT  
		Size: 14.2 KB (14215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e272b472f3d312d7721403297d06687f71c875d9a89484fe195eb56633d80a`  
		Last Modified: Tue, 27 Oct 2026 00:38:17 GMT  
		Size: 14.8 MB (14781494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:eb622ee767925e84a7a00183e9a0eff3bbcc65d0340cf70cce88c430906945b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3561684b7cb8340e635e1e8e9c3de9cda7ef769a0f63c9fb35fe90030b8a7f15`

```dockerfile
```

-	Layers:
	-	`sha256:37ff3b737d2a202fada05fcda9e4a2c56f26ed9f5c4a772dba3eccd11c44257d`  
		Last Modified: Tue, 27 Oct 2026 00:38:16 GMT  
		Size: 5.2 MB (5210883 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2bf69d5a4d73425d10f8356240820bf7206556b4bcb4fbeaa19fd9c1bd54accc`  
		Last Modified: Tue, 27 Oct 2026 00:38:15 GMT  
		Size: 39.4 KB (39397 bytes)  
		MIME: application/vnd.in-toto+json
