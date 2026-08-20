## `websphere-liberty:full-java11-openj9`

```console
$ docker pull websphere-liberty@sha256:2d40af4c93a9af9869288a2612c021ccbd166a2b49215009ea6df877dd330743
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

### `websphere-liberty:full-java11-openj9` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:8dd282bf2273eca07ea0b54626a8c1f493b43a37c6fe9198039ec265c929d663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **527.3 MB (527331767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c656cab3c1709fd95118d3b827d6004ce16ee7929092969ea635dc224b18ef2`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 18 Aug 2026 19:19:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:19:07 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:19:07 GMT
ENV JAVA_VERSION=11.0.32.0
# Tue, 18 Aug 2026 19:19:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='40b6f31ea010ea8367f10e0da35811fa29be71f4ce52be99186ff23f5804fe71';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_aarch64_linux_11.0.32.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f8be2c88024f15b17f382c5d08d5a85e0155717b2d8698d429f5ebe33b09155f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_ppc64le_linux_11.0.32.0.tar.gz';          ;;        amd64|x86_64)          ESUM='2aa0aad217a1816630df86b4a74eff0ab3a9f2a57643ab1f1718240bf9384bb1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_x64_linux_11.0.32.0.tar.gz';          ;;        s390x)          ESUM='235198518725ded38b30e05559d756a2f02305ca7d84dd87608c265c8b639669';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_s390x_linux_11.0.32.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 18 Aug 2026 19:19:09 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:19:09 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 18 Aug 2026 19:20:22 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 18 Aug 2026 20:38:59 GMT
USER root
# Tue, 18 Aug 2026 20:38:59 GMT
ARG VERBOSE=false
# Tue, 18 Aug 2026 20:38:59 GMT
ARG OPENJ9_SCC=true
# Tue, 18 Aug 2026 20:38:59 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Tue, 18 Aug 2026 20:38:59 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Tue, 18 Aug 2026 20:38:59 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Tue, 18 Aug 2026 20:38:59 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Tue, 18 Aug 2026 20:38:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Tue, 18 Aug 2026 20:38:59 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Tue, 18 Aug 2026 20:38:59 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 18 Aug 2026 20:38:59 GMT
ARG LIBERTY_URL
# Tue, 18 Aug 2026 20:38:59 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 18 Aug 2026 20:39:08 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:39:08 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Tue, 18 Aug 2026 20:39:08 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 18 Aug 2026 20:39:08 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Tue, 18 Aug 2026 20:39:08 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Tue, 18 Aug 2026 20:39:08 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Tue, 18 Aug 2026 20:39:08 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 18 Aug 2026 20:39:12 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Tue, 18 Aug 2026 20:39:12 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 18 Aug 2026 20:39:12 GMT
USER 1001
# Tue, 18 Aug 2026 20:39:12 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 18 Aug 2026 20:39:12 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Tue, 18 Aug 2026 20:39:12 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 18 Aug 2026 21:27:49 GMT
ARG VERBOSE=false
# Tue, 18 Aug 2026 21:27:49 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 18 Aug 2026 21:27:49 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Tue, 18 Aug 2026 21:27:49 GMT
COPY --chown=1001:0 server.xml /config/ # buildkit
# Tue, 18 Aug 2026 21:28:07 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
```

-	Layers:
	-	`sha256:0926a8eb0e608a5c6888d1cd5594184bdf3ed3aa311dba5b42a547caefdc6f2e`  
		Last Modified: Mon, 17 Aug 2026 14:27:19 GMT  
		Size: 29.8 MB (29752807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1126fd0c109e81fd9040d1c4caeb6f17968eeb5a2af5d28e711be5fb25cb0ea`  
		Last Modified: Tue, 18 Aug 2026 19:20:35 GMT  
		Size: 12.8 MB (12769512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7c682cd92c59d3d0a2135735a711482dfa280f645a7689a676339dad03111f`  
		Last Modified: Tue, 18 Aug 2026 19:20:36 GMT  
		Size: 56.4 MB (56366722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e0d82ec81676c1b81f6073894df184838c551b9f7e3426417774e03b5c6c5e`  
		Last Modified: Tue, 18 Aug 2026 19:20:35 GMT  
		Size: 4.4 MB (4436151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9865049c0dd56da548a3ea8885235011e32a6d8739d7f4ed85875cdd75ce9c51`  
		Last Modified: Tue, 18 Aug 2026 20:39:20 GMT  
		Size: 31.7 KB (31748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93572da8f1160f9b565f01ea44864f4008db62b976eb5bdd371dab70ea40de1`  
		Last Modified: Tue, 18 Aug 2026 20:39:20 GMT  
		Size: 17.9 MB (17944258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7a8b471d85a6da04e7ae80ecde475bfc321a8a426bd2eb0a2c0772f95973c2`  
		Last Modified: Tue, 18 Aug 2026 20:39:20 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873dbd404ab57ac2f9ed8303c35e14b4f32db13c6d1c7c48794e362a784c2243`  
		Last Modified: Tue, 18 Aug 2026 20:39:20 GMT  
		Size: 1.5 KB (1517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96fc3b89697ac9d87e91e933aaa5bec24f340a28b96dde9bbd59492044851a7`  
		Last Modified: Tue, 18 Aug 2026 20:39:21 GMT  
		Size: 14.3 KB (14266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029b58077fbd9a3046794c188d8aba5993b9cc93c31299a13226dbba09a9947a`  
		Last Modified: Tue, 18 Aug 2026 20:39:21 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c27cea49fbcfd4d976bfae19cb6783281af7d0237131ddb4cb8fc6e32c74ba`  
		Last Modified: Tue, 18 Aug 2026 20:39:21 GMT  
		Size: 15.1 KB (15131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb19e923ddefbc7069dae2ec881110f6255ce8e45d1da35545188a5c17d211e4`  
		Last Modified: Tue, 18 Aug 2026 20:39:22 GMT  
		Size: 2.7 MB (2716765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a8b17845a8f35fad9d21689d6af7610403b3e05ccb362cc6332b7537ade712`  
		Last Modified: Tue, 18 Aug 2026 21:28:42 GMT  
		Size: 387.9 MB (387882871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45db57a15671c42b7052ba59eac2243de5fa93deabf4423491150806a7fac70a`  
		Last Modified: Tue, 18 Aug 2026 21:28:33 GMT  
		Size: 941.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a9704a5645e2c2c3a6de92ba652cad58ec3232a3e8086ce73f99c78d0843dff`  
		Last Modified: Tue, 18 Aug 2026 21:28:34 GMT  
		Size: 15.4 MB (15398350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:2d8e276f6e484078c4f65dc822f98d97aaaf92ca155fa9ad05d99409e230329d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5443950 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c689ccba13af7ae3c89da00b8ba3591f7b3203993af82aa7ed1f94414a223f08`

```dockerfile
```

-	Layers:
	-	`sha256:974b6b715126ddc0a0e69bd919efaf05b604a6663756ac91807d4a75612b1478`  
		Last Modified: Tue, 18 Aug 2026 21:28:33 GMT  
		Size: 5.4 MB (5424355 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8af05d79ebe5515898da3cf53955147f2b93350206f8f0656ee9257880ee6862`  
		Last Modified: Tue, 18 Aug 2026 21:28:33 GMT  
		Size: 19.6 KB (19595 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:full-java11-openj9` - linux; arm64 variant v8

```console
$ docker pull websphere-liberty@sha256:52b6a4b1f82083cdf04ccc35253abc0e0a5039d03df7be7024756b9d6cd1c6f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **524.3 MB (524282481 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb21dffe3fb633ccbc5fe11b05df637904dff1752c547a9fd7b00ab8e9284116`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 18 Aug 2026 19:19:10 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:19:10 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:19:10 GMT
ENV JAVA_VERSION=11.0.32.0
# Tue, 18 Aug 2026 19:19:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='40b6f31ea010ea8367f10e0da35811fa29be71f4ce52be99186ff23f5804fe71';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_aarch64_linux_11.0.32.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f8be2c88024f15b17f382c5d08d5a85e0155717b2d8698d429f5ebe33b09155f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_ppc64le_linux_11.0.32.0.tar.gz';          ;;        amd64|x86_64)          ESUM='2aa0aad217a1816630df86b4a74eff0ab3a9f2a57643ab1f1718240bf9384bb1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_x64_linux_11.0.32.0.tar.gz';          ;;        s390x)          ESUM='235198518725ded38b30e05559d756a2f02305ca7d84dd87608c265c8b639669';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_s390x_linux_11.0.32.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 18 Aug 2026 19:19:13 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 18 Aug 2026 19:19:13 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 18 Aug 2026 19:20:28 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 18 Aug 2026 20:39:08 GMT
USER root
# Tue, 18 Aug 2026 20:39:08 GMT
ARG VERBOSE=false
# Tue, 18 Aug 2026 20:39:08 GMT
ARG OPENJ9_SCC=true
# Tue, 18 Aug 2026 20:39:08 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Tue, 18 Aug 2026 20:39:08 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Tue, 18 Aug 2026 20:39:08 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Tue, 18 Aug 2026 20:39:08 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Tue, 18 Aug 2026 20:39:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Tue, 18 Aug 2026 20:39:08 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Tue, 18 Aug 2026 20:39:08 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 18 Aug 2026 20:39:08 GMT
ARG LIBERTY_URL
# Tue, 18 Aug 2026 20:39:08 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 18 Aug 2026 20:39:17 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 20:39:17 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Tue, 18 Aug 2026 20:39:17 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 18 Aug 2026 20:39:17 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Tue, 18 Aug 2026 20:39:17 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Tue, 18 Aug 2026 20:39:17 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Tue, 18 Aug 2026 20:39:18 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 18 Aug 2026 20:39:22 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Tue, 18 Aug 2026 20:39:22 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 18 Aug 2026 20:39:22 GMT
USER 1001
# Tue, 18 Aug 2026 20:39:22 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 18 Aug 2026 20:39:22 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Tue, 18 Aug 2026 20:39:22 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 18 Aug 2026 21:27:50 GMT
ARG VERBOSE=false
# Tue, 18 Aug 2026 21:27:50 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 18 Aug 2026 21:27:50 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Tue, 18 Aug 2026 21:27:50 GMT
COPY --chown=1001:0 server.xml /config/ # buildkit
# Tue, 18 Aug 2026 21:28:13 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
```

-	Layers:
	-	`sha256:0b613318ea879878918380aa3aeb220dfe824e311b83bc955cb8a1d4319650ab`  
		Last Modified: Mon, 17 Aug 2026 14:27:26 GMT  
		Size: 28.9 MB (28887235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b985f8646432c0ba1779bf21f70b4d0d868ed5bec6c8e1ce1a8ace891729ccde`  
		Last Modified: Tue, 18 Aug 2026 19:20:41 GMT  
		Size: 12.8 MB (12804275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa58a7d90731736dbfaaaf4327bdb4a9b22cb2a56b90503d842d2f7f37f2bf0`  
		Last Modified: Tue, 18 Aug 2026 19:20:42 GMT  
		Size: 54.6 MB (54576141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae9263eea5f757f6feaa64756074cdae96d335430aedc525250830d1830a408`  
		Last Modified: Tue, 18 Aug 2026 19:20:41 GMT  
		Size: 4.3 MB (4299642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba640c1b2e462e3c972f1c1dc31fd767b512ea060a5b9d5ad7f30691285cdfad`  
		Last Modified: Tue, 18 Aug 2026 20:39:31 GMT  
		Size: 42.3 KB (42324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebf517948adff634b810ca54e05c1267cdaf32b3ac0069893cc7e84cfeccfa8`  
		Last Modified: Tue, 18 Aug 2026 20:39:32 GMT  
		Size: 17.9 MB (17944241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ecfd94677d70154b9fb885abb055d7cecacfcd4e40a2e7b3017d9b6a30fdf3b`  
		Last Modified: Tue, 18 Aug 2026 20:39:31 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55c35d095257f80bbc2def78e188d1897ed5c72aa3c4d8719bbcd4a7e89325f`  
		Last Modified: Tue, 18 Aug 2026 20:39:31 GMT  
		Size: 1.5 KB (1517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37668e2db52190657e9cea0b956de499b40223cbbefe338694a46a20f985e1ac`  
		Last Modified: Tue, 18 Aug 2026 20:39:32 GMT  
		Size: 14.3 KB (14264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164ead3c2c1d55dc689f60f380f5943bf21249dda9133858f09ddce67b00e0d8`  
		Last Modified: Tue, 18 Aug 2026 20:39:33 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:012153e1fd4bb473ef0a5db6e7910e6f72b6f00e16ef168edb04ed49fff6a60e`  
		Last Modified: Tue, 18 Aug 2026 20:39:33 GMT  
		Size: 15.1 KB (15143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6df9b03676ec94737b62ce766c4dd6dde13b3315af18ecb700c568dbad79b473`  
		Last Modified: Tue, 18 Aug 2026 20:39:34 GMT  
		Size: 2.8 MB (2778217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f07ae09f2948572c6b62dd227e93b3cc93c28f84dbdc5ffaa6ff5c79874aa6f`  
		Last Modified: Tue, 18 Aug 2026 21:28:48 GMT  
		Size: 387.9 MB (387883039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17200e1a75a132942d8b2780abebb51a2c9483ddd904b7a7d5a4b95f8e36b143`  
		Last Modified: Tue, 18 Aug 2026 21:28:41 GMT  
		Size: 942.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9d1f5d001eccbff7e8e65512c98bd3e67678e2952abd49584443498fc0f235`  
		Last Modified: Tue, 18 Aug 2026 21:28:42 GMT  
		Size: 15.0 MB (15034773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:992ad9605d547beecbad6118dcbc3ea4e5368979560ae22e5c6289e25a120aeb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5442563 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e9b0a2ffdd88e4c02151c49a05c2ebb76cb6a4eb3f167672380054b744c2a2e`

```dockerfile
```

-	Layers:
	-	`sha256:e84efd1f8a9d8f8b8629c208369940f5720122ed44bdb4c1069fa411dde7e744`  
		Last Modified: Tue, 18 Aug 2026 21:28:41 GMT  
		Size: 5.4 MB (5422885 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b5a6e9bb61a7261ce92e94e33c322e42810aaeeefc8dcfbac990267837013df`  
		Last Modified: Tue, 18 Aug 2026 21:28:41 GMT  
		Size: 19.7 KB (19678 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:full-java11-openj9` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:2c3fadaf09c692c1a9c2e6196b94bee2cb628b1563bfb63acd3d982058796762
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **532.2 MB (532224724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ecac4e0f9a355668b5fd0fbf5178405f26fdd7cd8881994cefb2d9e470312fe4`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
ENV JAVA_VERSION=11.0.32.0
# Thu, 20 Aug 2026 03:31:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='40b6f31ea010ea8367f10e0da35811fa29be71f4ce52be99186ff23f5804fe71';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_aarch64_linux_11.0.32.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f8be2c88024f15b17f382c5d08d5a85e0155717b2d8698d429f5ebe33b09155f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_ppc64le_linux_11.0.32.0.tar.gz';          ;;        amd64|x86_64)          ESUM='2aa0aad217a1816630df86b4a74eff0ab3a9f2a57643ab1f1718240bf9384bb1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_x64_linux_11.0.32.0.tar.gz';          ;;        s390x)          ESUM='235198518725ded38b30e05559d756a2f02305ca7d84dd87608c265c8b639669';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_s390x_linux_11.0.32.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Thu, 20 Aug 2026 03:31:06 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 20 Aug 2026 03:31:06 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Thu, 20 Aug 2026 03:32:33 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 20 Aug 2026 10:55:45 GMT
USER root
# Thu, 20 Aug 2026 10:55:45 GMT
ARG VERBOSE=false
# Thu, 20 Aug 2026 10:55:45 GMT
ARG OPENJ9_SCC=true
# Thu, 20 Aug 2026 10:55:45 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Thu, 20 Aug 2026 10:55:45 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Thu, 20 Aug 2026 10:55:45 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Thu, 20 Aug 2026 10:55:45 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Thu, 20 Aug 2026 10:55:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 20 Aug 2026 10:55:45 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Thu, 20 Aug 2026 10:55:45 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 20 Aug 2026 10:55:45 GMT
ARG LIBERTY_URL
# Thu, 20 Aug 2026 10:55:45 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 20 Aug 2026 10:56:00 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 20 Aug 2026 10:56:00 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Thu, 20 Aug 2026 10:56:00 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 20 Aug 2026 10:56:01 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 20 Aug 2026 10:56:01 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Thu, 20 Aug 2026 10:56:01 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 20 Aug 2026 10:56:01 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 20 Aug 2026 10:56:11 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 20 Aug 2026 10:56:11 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 20 Aug 2026 10:56:11 GMT
USER 1001
# Thu, 20 Aug 2026 10:56:11 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 20 Aug 2026 10:56:11 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 20 Aug 2026 10:56:11 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 20 Aug 2026 11:24:24 GMT
ARG VERBOSE=false
# Thu, 20 Aug 2026 11:24:24 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 20 Aug 2026 11:24:24 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Thu, 20 Aug 2026 11:24:25 GMT
COPY --chown=1001:0 server.xml /config/ # buildkit
# Thu, 20 Aug 2026 11:25:14 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
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
	-	`sha256:e333721e648a25f0adc069af8042786956adca1f27745c7ca3e5ccf9e5b9d1d8`  
		Last Modified: Thu, 20 Aug 2026 03:32:59 GMT  
		Size: 58.3 MB (58329817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae735f043de00a36377dee53685789d8fcf366c8d55f7a14f229fa464f03f0fb`  
		Last Modified: Thu, 20 Aug 2026 03:32:57 GMT  
		Size: 3.6 MB (3565556 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df2017362f5406ccb5d01ac33a3d3eb9c973d5b7529707052bb8a795ba11ad5`  
		Last Modified: Thu, 20 Aug 2026 10:56:30 GMT  
		Size: 36.5 KB (36494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3417ee7937754981edf526bbae14fc7d6a47724c8dd92c7c58ab9a244004242b`  
		Last Modified: Thu, 20 Aug 2026 10:56:30 GMT  
		Size: 17.9 MB (17944582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f16c21b1f6f5c12723a8fe2f7e6767b46c003b1150562b8d3931fbad7fd67297`  
		Last Modified: Thu, 20 Aug 2026 10:56:30 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413a7812ef4f544e96b5ac5be7b3db23c4d478ecb131fdcd6be182ef753845e7`  
		Last Modified: Thu, 20 Aug 2026 10:56:30 GMT  
		Size: 1.5 KB (1520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a8cc2e3422b07d9409323f0b1d44d2426ab6b0defdbdddd25fc5c9c83fbc93`  
		Last Modified: Thu, 20 Aug 2026 10:56:31 GMT  
		Size: 14.3 KB (14267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d069f917f066a0a4d9a6a7db0fb31a052bc5cb770b41b7913b7e5f00c1e7da8`  
		Last Modified: Thu, 20 Aug 2026 10:56:31 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620cd6ea85c1e839105eca02d16ddbc50a0997961b502ff881bd325061b05841`  
		Last Modified: Thu, 20 Aug 2026 10:56:31 GMT  
		Size: 15.1 KB (15148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dedf143d15d9773ffbae4dc6bbbb99b1079815231b5cf010289b47bc7f4a731`  
		Last Modified: Thu, 20 Aug 2026 10:56:32 GMT  
		Size: 2.7 MB (2677660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081217857c94e3406bf7ff676bfa1ffa0b87f29b243ffccbdc238e9f52fb28b9`  
		Last Modified: Thu, 20 Aug 2026 11:26:16 GMT  
		Size: 387.9 MB (387883250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e076877be2f8b066f33cf28ff5fc6c18b96ad4149d3e42fa79e5d6a91f5c77c`  
		Last Modified: Thu, 20 Aug 2026 11:26:08 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3290a4cf080d64c761725eb3023243c6aeccd9e18ca768e4dcb6dec44131ba77`  
		Last Modified: Thu, 20 Aug 2026 11:26:09 GMT  
		Size: 13.7 MB (13696278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:66261601b753e134c7100099b51d51f33f6d11d112c90867a753123be80aaa25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5448600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12c1ec5ffa3545c507d13296ed84bb7bbbb85693a635dd86ef62cb6fb76b34c6`

```dockerfile
```

-	Layers:
	-	`sha256:672f40f1f9521e8cedb21411ecef0b8c4cbfbed1ef742c1d6d791fac6db4915e`  
		Last Modified: Thu, 20 Aug 2026 11:26:08 GMT  
		Size: 5.4 MB (5428977 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f88b29fdf78ffb10cc7e4aca5623bbadec0b30c5acea4ac02aa442d0d83312bf`  
		Last Modified: Thu, 20 Aug 2026 11:26:08 GMT  
		Size: 19.6 KB (19623 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:full-java11-openj9` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:29d9a1a4ee244e1736c9aadff7bd84054b99661c6cb13724e7a477a0deb9167a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.5 MB (530484667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b8fe310686008e0c142eccb6907a839b8fae7de62d1bdc42a15b2cb0943de9c`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 18 Aug 2026 19:16:53 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 18 Aug 2026 19:16:53 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 19:16:53 GMT
ENV JAVA_VERSION=11.0.32.0
# Wed, 19 Aug 2026 03:19:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='40b6f31ea010ea8367f10e0da35811fa29be71f4ce52be99186ff23f5804fe71';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_aarch64_linux_11.0.32.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f8be2c88024f15b17f382c5d08d5a85e0155717b2d8698d429f5ebe33b09155f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_ppc64le_linux_11.0.32.0.tar.gz';          ;;        amd64|x86_64)          ESUM='2aa0aad217a1816630df86b4a74eff0ab3a9f2a57643ab1f1718240bf9384bb1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_x64_linux_11.0.32.0.tar.gz';          ;;        s390x)          ESUM='235198518725ded38b30e05559d756a2f02305ca7d84dd87608c265c8b639669';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_s390x_linux_11.0.32.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 19 Aug 2026 03:19:45 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 19 Aug 2026 03:19:45 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 19 Aug 2026 03:20:53 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Wed, 19 Aug 2026 04:10:54 GMT
USER root
# Wed, 19 Aug 2026 04:10:54 GMT
ARG VERBOSE=false
# Wed, 19 Aug 2026 04:10:54 GMT
ARG OPENJ9_SCC=true
# Wed, 19 Aug 2026 04:10:54 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Wed, 19 Aug 2026 04:10:54 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Wed, 19 Aug 2026 04:10:54 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Wed, 19 Aug 2026 04:10:54 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Wed, 19 Aug 2026 04:10:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Wed, 19 Aug 2026 04:10:54 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Wed, 19 Aug 2026 04:10:54 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Wed, 19 Aug 2026 04:10:54 GMT
ARG LIBERTY_URL
# Wed, 19 Aug 2026 04:10:54 GMT
ARG DOWNLOAD_OPTIONS=
# Wed, 19 Aug 2026 04:11:01 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 19 Aug 2026 04:11:01 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Wed, 19 Aug 2026 04:11:02 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Wed, 19 Aug 2026 04:11:02 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Wed, 19 Aug 2026 04:11:02 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Wed, 19 Aug 2026 04:11:02 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Wed, 19 Aug 2026 04:11:03 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Wed, 19 Aug 2026 04:11:09 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Wed, 19 Aug 2026 04:11:09 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Wed, 19 Aug 2026 04:11:09 GMT
USER 1001
# Wed, 19 Aug 2026 04:11:09 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Wed, 19 Aug 2026 04:11:09 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Wed, 19 Aug 2026 04:11:09 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Wed, 19 Aug 2026 05:18:34 GMT
ARG VERBOSE=false
# Wed, 19 Aug 2026 05:18:34 GMT
ARG REPOSITORIES_PROPERTIES=
# Wed, 19 Aug 2026 05:18:34 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Wed, 19 Aug 2026 05:18:34 GMT
COPY --chown=1001:0 server.xml /config/ # buildkit
# Wed, 19 Aug 2026 05:18:56 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
```

-	Layers:
	-	`sha256:5d1d3f92cfa6f52fd8d52857915fa3c3464dbd12014bfc03e5e163fc72a4de1d`  
		Last Modified: Mon, 17 Aug 2026 14:27:57 GMT  
		Size: 29.9 MB (29935255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b2048506693e54be93ee99aef41f21368ae18424bd2843f55f42fb05c388548`  
		Last Modified: Tue, 18 Aug 2026 19:18:50 GMT  
		Size: 13.1 MB (13078551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d58f0a88ca6a8c78515bce97630f4a7a886950d68fe0078c3fe5d6045d3d80`  
		Last Modified: Wed, 19 Aug 2026 03:21:15 GMT  
		Size: 58.5 MB (58508338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b6ac57aea45dad4be1874aa01eb8e7d2580b7711713e419e338c26cf99eaf65`  
		Last Modified: Wed, 19 Aug 2026 03:21:14 GMT  
		Size: 4.7 MB (4687384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b171b261f2bc80d29ea0dc408e4a97727ea1faf4762d0e8b179dd2ffd2c0332`  
		Last Modified: Wed, 19 Aug 2026 04:11:23 GMT  
		Size: 33.1 KB (33113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386b797dbe11acafa91757c542774b865aa07ffa0ed401aa3c7f9de90bc321f0`  
		Last Modified: Wed, 19 Aug 2026 04:11:24 GMT  
		Size: 17.9 MB (17943965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29f277390323fa82fa2031dfa1e38b36061e2a38ebe22173a03f244e163f76d4`  
		Last Modified: Wed, 19 Aug 2026 04:11:24 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79666b2194e41bb683f72d45cd5dd5e554e5fec1f85879ac4f13a6f9c53e911`  
		Last Modified: Wed, 19 Aug 2026 04:11:23 GMT  
		Size: 1.5 KB (1519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5348370af1fcf5a1d174e5dc4e9c29b56bab0ec5b1d21ce702115da0032744f6`  
		Last Modified: Wed, 19 Aug 2026 04:11:24 GMT  
		Size: 14.3 KB (14263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:460457f97a3a2b64972cb2bec14b0298f76d1b972c45885418854e90e579e555`  
		Last Modified: Wed, 19 Aug 2026 04:11:24 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5059042f689cbceded765fa32592d803ee858599418eadf8dde290628d0cbe`  
		Last Modified: Wed, 19 Aug 2026 04:11:25 GMT  
		Size: 15.1 KB (15141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a80c0e741538a652345bcaadb33d2b3c51aeefb7960efebedd4a4d36a5f450b8`  
		Last Modified: Wed, 19 Aug 2026 04:11:25 GMT  
		Size: 2.8 MB (2839942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b45a2690d2a794e77bf628df64d60c804ec6e2911ab44d4a36c9ca60262c64c`  
		Last Modified: Wed, 19 Aug 2026 05:19:42 GMT  
		Size: 387.9 MB (387884128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69d74bd79b2436306f3820d5197e88e69bd02624cd191f92ac202b522628b628`  
		Last Modified: Wed, 19 Aug 2026 05:19:35 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53016811def94bfb67d8fa98d440b705e069c6388d7bc033a3fd0ee5cd66e4e1`  
		Last Modified: Wed, 19 Aug 2026 05:19:36 GMT  
		Size: 15.5 MB (15541394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:5539b7df4e99fc157e7ed7d08613b2e545e0c7d82f4edb34cd10f0ffd5c68039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.4 MB (5444947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa631354f5dab56c3985887b8774387ccb336f6f87e46126a7eead051a70ed38`

```dockerfile
```

-	Layers:
	-	`sha256:4ac03c5a39d9b9b6a4c7bf4699090ede2ff837feeb830824d80a7b93beefdee4`  
		Last Modified: Wed, 19 Aug 2026 05:19:36 GMT  
		Size: 5.4 MB (5425352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6781e02aacddae3f4745cdd94c43d6cca91e3bea529ce9a67bfa9ea51f29a2fe`  
		Last Modified: Wed, 19 Aug 2026 05:19:36 GMT  
		Size: 19.6 KB (19595 bytes)  
		MIME: application/vnd.in-toto+json
