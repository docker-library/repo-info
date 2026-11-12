## `websphere-liberty:full-java11-openj9`

```console
$ docker pull websphere-liberty@sha256:db46dde4019aa890a8c4916dbcc148dbd9bac830a394ad9c978a25f029f6aecf
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
$ docker pull websphere-liberty@sha256:1d4a82556aa996c248d8652cebe76649d7e8b273abe7dfa3ef2490a473040bc7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **530.7 MB (530735134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8391592b87e695a296dcc02ceb79a87ead23db3232c78efe680f9343238911e5`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Mon, 09 Nov 2026 23:54:42 GMT
USER root
# Mon, 09 Nov 2026 23:54:42 GMT
ARG VERBOSE=false
# Mon, 09 Nov 2026 23:54:42 GMT
ARG OPENJ9_SCC=true
# Mon, 09 Nov 2026 23:54:42 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Mon, 09 Nov 2026 23:54:42 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Mon, 09 Nov 2026 23:54:42 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Mon, 09 Nov 2026 23:54:42 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Mon, 09 Nov 2026 23:54:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Mon, 09 Nov 2026 23:54:42 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Mon, 09 Nov 2026 23:54:42 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 09 Nov 2026 23:54:42 GMT
ARG LIBERTY_URL
# Mon, 09 Nov 2026 23:54:42 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 09 Nov 2026 23:54:53 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:54:53 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Mon, 09 Nov 2026 23:54:54 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 09 Nov 2026 23:54:54 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Mon, 09 Nov 2026 23:54:54 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Mon, 09 Nov 2026 23:54:54 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Mon, 09 Nov 2026 23:54:54 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 09 Nov 2026 23:54:58 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Mon, 09 Nov 2026 23:54:58 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 09 Nov 2026 23:54:58 GMT
USER 1001
# Mon, 09 Nov 2026 23:54:58 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 09 Nov 2026 23:54:58 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Mon, 09 Nov 2026 23:54:58 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 10 Nov 2026 00:24:39 GMT
ARG VERBOSE=false
# Tue, 10 Nov 2026 00:24:39 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 10 Nov 2026 00:24:39 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Tue, 10 Nov 2026 00:24:39 GMT
COPY --chown=1001:0 server-http-port-enabled.xml /config/server.xml # buildkit
# Tue, 10 Nov 2026 00:24:58 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
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
	-	`sha256:6521ad62668dd945b3b95aa59366c9054f987f018e16b4cc19ae2afe30546800`  
		Last Modified: Mon, 09 Nov 2026 23:55:06 GMT  
		Size: 31.7 KB (31749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bc74a04f477e43a02b2f0f7e2c8aa3358245f76fe9ac412ef16c7bb89d8fb6f`  
		Last Modified: Mon, 09 Nov 2026 23:55:07 GMT  
		Size: 18.1 MB (18123988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:986095ba5c6fb2775aaeb9544a210e6ed1bf5bc142aef2d198f8fa4cb38b7e3f`  
		Last Modified: Mon, 09 Nov 2026 23:55:06 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d070ff052b090973793dd77af1a5136d55d67ff5abe01c3f7bd6c6b32007244`  
		Last Modified: Mon, 09 Nov 2026 23:55:06 GMT  
		Size: 1.5 KB (1517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41efdfbf123fcd3ed21f60e8bdb89ebd78ed1b8667c705032ef197003d17e5bf`  
		Last Modified: Mon, 09 Nov 2026 23:55:07 GMT  
		Size: 14.8 KB (14784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e63e21c82093f6be54b98d3be4dd080265f4369692d1fa3564487e96d0469d`  
		Last Modified: Mon, 09 Nov 2026 23:55:07 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b8fa7b87c131a003bd8df5a337a2159e116f68bc62c37cb465d02992cadb84`  
		Last Modified: Mon, 09 Nov 2026 23:55:08 GMT  
		Size: 15.6 KB (15647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd359f9d4d7c02f2df037974c270de689aedd91c75fa280eba36ea31c5ae1df5`  
		Last Modified: Mon, 09 Nov 2026 23:55:08 GMT  
		Size: 2.7 MB (2707185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bae70f0d574813ef61c1fd076bbbfaeffccd2d0cbf9721678a35efc3a22c0845`  
		Last Modified: Tue, 10 Nov 2026 00:25:32 GMT  
		Size: 391.2 MB (391240684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a3e3b81fc2ef03c58f234be48857a20cac2f62006e44ca39ee12450e4ad239`  
		Last Modified: Tue, 10 Nov 2026 00:25:24 GMT  
		Size: 942.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccdbb9345494b7c86affba9d7cb901cc0eb29815dbeb2e75067fc4fc7978ae75`  
		Last Modified: Tue, 10 Nov 2026 00:25:25 GMT  
		Size: 15.1 MB (15103353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:47ac1973c9be74b241ac738515f5f49bda7e7f54c06e06aa9f7dd2f2407f829d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5456407 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a67fb183ff091180b7bfacad88c6e137014dc33064a4bfae3954695d426cbb25`

```dockerfile
```

-	Layers:
	-	`sha256:2c47eb394723afd0c2782c603d5ffcd8bd278c7ef948d51549f1915f89d91c61`  
		Last Modified: Tue, 10 Nov 2026 00:25:24 GMT  
		Size: 5.4 MB (5436696 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4875f32b82c8ee5de5e75c170f20aa10fdb3ad1d762aee1d50ea236fbc77b6ed`  
		Last Modified: Tue, 10 Nov 2026 00:25:24 GMT  
		Size: 19.7 KB (19711 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:full-java11-openj9` - linux; arm64 variant v8

```console
$ docker pull websphere-liberty@sha256:1a11eb76869e7dd62934a50be8142a30a4006c57251bef90299970bc7c3bee58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **528.2 MB (528190277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a884628cbdfa051d31d881840a633da96cc3edc6b1929c320882ecc4e8871695`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Thu, 12 Nov 2026 00:59:05 GMT
USER root
# Thu, 12 Nov 2026 00:59:05 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 00:59:05 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:59:05 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 00:59:05 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 00:59:05 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Thu, 12 Nov 2026 00:59:05 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Thu, 12 Nov 2026 00:59:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 12 Nov 2026 00:59:05 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Thu, 12 Nov 2026 00:59:05 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 00:59:05 GMT
ARG LIBERTY_URL
# Thu, 12 Nov 2026 00:59:05 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 12 Nov 2026 00:59:19 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:59:19 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Thu, 12 Nov 2026 00:59:19 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 00:59:19 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 12 Nov 2026 00:59:19 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Thu, 12 Nov 2026 00:59:19 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 12 Nov 2026 00:59:19 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 00:59:24 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 12 Nov 2026 00:59:24 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 00:59:24 GMT
USER 1001
# Thu, 12 Nov 2026 00:59:24 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 00:59:24 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 00:59:24 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Thu, 12 Nov 2026 01:46:12 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 01:46:12 GMT
ARG REPOSITORIES_PROPERTIES=
# Thu, 12 Nov 2026 01:46:12 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Thu, 12 Nov 2026 01:46:12 GMT
COPY --chown=1001:0 server-http-port-enabled.xml /config/server.xml # buildkit
# Thu, 12 Nov 2026 01:46:36 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
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
	-	`sha256:a6da7c78702707f3697b198e99db58827228847f4e0fdc3cd8d466daa69062fa`  
		Last Modified: Thu, 12 Nov 2026 00:59:35 GMT  
		Size: 42.3 KB (42323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d92ede7e707866b03d74b2f0e57d0d9e673b3b74c14caa09adedaf89d914cf6`  
		Last Modified: Thu, 12 Nov 2026 00:59:35 GMT  
		Size: 18.1 MB (18124170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3a7999f4c25461f279608204f0b6944cdcfc53f63366ec519d0317b91566ce`  
		Last Modified: Thu, 12 Nov 2026 00:59:35 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95219423d3d0fcf845ef60063329f0a836ba770c5d9f169f379f4988a1ddef8d`  
		Last Modified: Thu, 12 Nov 2026 00:59:35 GMT  
		Size: 1.5 KB (1518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47bf8edf8d4f40957f18f9c228f840bade0d7f23592ac35eee41731ed23d1fba`  
		Last Modified: Thu, 12 Nov 2026 00:59:36 GMT  
		Size: 14.8 KB (14783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aad99202f18ef53bb46534e83fb87d3253c1c4b7c48fd79cfdec7478a4d28c16`  
		Last Modified: Thu, 12 Nov 2026 00:59:36 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66e3cccf90f71a409feacb601daf7ad80e07b62e9a2c619c2e040f38814cfb28`  
		Last Modified: Thu, 12 Nov 2026 00:59:36 GMT  
		Size: 15.6 KB (15648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c3c419aa265ebb34be5a17b44d9c78ae36e9eaff9c5c59082115e2a165a4cc`  
		Last Modified: Thu, 12 Nov 2026 00:59:37 GMT  
		Size: 2.7 MB (2745712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6e599724a6c6958bd0495ac56cf774abfffcab99300a529bc0c0e4c531665d`  
		Last Modified: Thu, 12 Nov 2026 01:47:15 GMT  
		Size: 391.2 MB (391240438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70fafd5af3c44a514a8d69a0ab6bbd9421e903d8dd2d57d5feaf08daf6bb30e3`  
		Last Modified: Thu, 12 Nov 2026 01:47:06 GMT  
		Size: 944.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a155c241fad26d92a7b30993d148a44aa4ecceb352fb16d990aef2d0d86b93`  
		Last Modified: Thu, 12 Nov 2026 01:47:07 GMT  
		Size: 15.2 MB (15197180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:5fb14de91b3ce604f2bc2cf3aec498ca6d5a7bc9a514feea61bba0e7611462a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5455624 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17f3f5c7a715a361407e4bfb4c40f629236ff87b705b6c4c48999c695999e3d2`

```dockerfile
```

-	Layers:
	-	`sha256:6b983e24e8f6813fd8b7eafda0e95ca1d3c57822a7fefd4bd743238ead708eba`  
		Last Modified: Thu, 12 Nov 2026 01:47:06 GMT  
		Size: 5.4 MB (5435830 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7e1eac7abe7d4ab06035d82194be462dafa0006acd101dc99c187b1cdbac27a4`  
		Last Modified: Thu, 12 Nov 2026 01:47:06 GMT  
		Size: 19.8 KB (19794 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:full-java11-openj9` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:21b23bb1c38eaafa7db62bff47ea071c35aad7b2d6852dcfe2e2b7e8f69413a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **536.3 MB (536296711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7400f0c8d2a05ea23a98f5f8940dfeb0590e5d34e608d3a81118438e735c9b6`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 10 Nov 2026 04:16:53 GMT
USER root
# Tue, 10 Nov 2026 04:16:53 GMT
ARG VERBOSE=false
# Tue, 10 Nov 2026 04:16:53 GMT
ARG OPENJ9_SCC=true
# Tue, 10 Nov 2026 04:16:53 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Tue, 10 Nov 2026 04:16:53 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Tue, 10 Nov 2026 04:16:53 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Tue, 10 Nov 2026 04:16:53 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Tue, 10 Nov 2026 04:16:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Tue, 10 Nov 2026 04:16:53 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Tue, 10 Nov 2026 04:16:53 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 10 Nov 2026 04:16:53 GMT
ARG LIBERTY_URL
# Tue, 10 Nov 2026 04:16:53 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 10 Nov 2026 04:17:15 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 04:17:15 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Tue, 10 Nov 2026 04:17:16 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 10 Nov 2026 04:17:16 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Tue, 10 Nov 2026 04:17:17 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Tue, 10 Nov 2026 04:17:17 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Tue, 10 Nov 2026 04:17:18 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 10 Nov 2026 04:17:30 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Tue, 10 Nov 2026 04:17:30 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 10 Nov 2026 04:17:30 GMT
USER 1001
# Tue, 10 Nov 2026 04:17:30 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 10 Nov 2026 04:17:30 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Tue, 10 Nov 2026 04:17:30 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 10 Nov 2026 05:21:08 GMT
ARG VERBOSE=false
# Tue, 10 Nov 2026 05:21:08 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 10 Nov 2026 05:21:08 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Tue, 10 Nov 2026 05:21:09 GMT
COPY --chown=1001:0 server-http-port-enabled.xml /config/server.xml # buildkit
# Tue, 10 Nov 2026 05:21:57 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
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
	-	`sha256:ea6700e1a72a3ef1cec8d7ffe61b8d72c96b89bcf4261518029e9d8b82a9b5d5`  
		Last Modified: Tue, 10 Nov 2026 04:17:49 GMT  
		Size: 36.5 KB (36495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ebff1a654cc7597d6e1c59d15c2576ac872df52dc0d994bd9c6318157b62d7`  
		Last Modified: Tue, 10 Nov 2026 04:17:49 GMT  
		Size: 18.1 MB (18124248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:612dacd05d85f135f0be68d9f5b3b11543931bb4960e12f23e7bfb1c5f277f45`  
		Last Modified: Tue, 10 Nov 2026 04:17:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d917ec0bfd50bdccd670e3a12d5719d2603032d38c3cf4d630a848aa51dac02`  
		Last Modified: Tue, 10 Nov 2026 04:17:49 GMT  
		Size: 1.5 KB (1518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7efeabc58fcf9eb0149240ac4901082336cf591d8a0abd6722cd683f79ab08fb`  
		Last Modified: Tue, 10 Nov 2026 04:17:50 GMT  
		Size: 14.8 KB (14783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acb3a0f813d7108a3f39e636012f21a199b8c9db155b45288c7c487c0080ff6`  
		Last Modified: Tue, 10 Nov 2026 04:17:50 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dac6db154e0d2a8b70e82238f08ee6965e2d177bc5ed7355599c580c5f2254c`  
		Last Modified: Tue, 10 Nov 2026 04:17:50 GMT  
		Size: 15.7 KB (15661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90f4d6801b64b44409a909ee46dd59c91d592c8dd326b322fdb2e8863ba47ecb`  
		Last Modified: Tue, 10 Nov 2026 04:17:51 GMT  
		Size: 2.6 MB (2635032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3d521e264fbb93b6c1feaa9de4bd4fef264c9fcc3bfb1b03ef236c8541446a4`  
		Last Modified: Tue, 10 Nov 2026 05:23:14 GMT  
		Size: 391.2 MB (391239724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3edbd6442a0b9afc8382c37feae7ee3c77f755aba12d11f4dc87387d9c1855ab`  
		Last Modified: Tue, 10 Nov 2026 05:23:05 GMT  
		Size: 945.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdd6c0ee52bdfac7d42cf85a93e8a80db5d0ed622764f199f8013bf3702b5356`  
		Last Modified: Tue, 10 Nov 2026 05:23:06 GMT  
		Size: 14.1 MB (14076112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:05bb92c8a83065b3c100adb5ebba141bde8a24f69b1c619a2939372d2f70ffa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5461057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:270dae31893a58f394c745334935b7f234383ff6550f52b9a7de996adc4cad09`

```dockerfile
```

-	Layers:
	-	`sha256:8fa050c9f58e0f746df120545f3c4ddedf433283a9a04ab2c96a71c692b9bc81`  
		Last Modified: Tue, 10 Nov 2026 05:23:05 GMT  
		Size: 5.4 MB (5441318 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd029df5136a8e69b71421759dddb707684dd161bae16b2663c18254803674fe`  
		Last Modified: Tue, 10 Nov 2026 05:23:05 GMT  
		Size: 19.7 KB (19739 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:full-java11-openj9` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:ea99d43c98cf57c94e98faf8706d1d5c6fe7c00a2fed6f4c87891ed05411506c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **533.5 MB (533454887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86910f5399a78502487513324e1b11c5f853670f9f2b8bb4455685eeef8a3b6d`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Tue, 10 Nov 2026 00:15:39 GMT
USER root
# Tue, 10 Nov 2026 00:15:39 GMT
ARG VERBOSE=false
# Tue, 10 Nov 2026 00:15:39 GMT
ARG OPENJ9_SCC=true
# Tue, 10 Nov 2026 00:15:39 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Tue, 10 Nov 2026 00:15:39 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Tue, 10 Nov 2026 00:15:39 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Tue, 10 Nov 2026 00:15:39 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Tue, 10 Nov 2026 00:15:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Tue, 10 Nov 2026 00:15:39 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Tue, 10 Nov 2026 00:15:39 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 10 Nov 2026 00:15:39 GMT
ARG LIBERTY_URL
# Tue, 10 Nov 2026 00:15:39 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 10 Nov 2026 00:15:55 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 00:15:55 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Tue, 10 Nov 2026 00:15:56 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 10 Nov 2026 00:15:56 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Tue, 10 Nov 2026 00:15:56 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Tue, 10 Nov 2026 00:15:56 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Tue, 10 Nov 2026 00:15:56 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 10 Nov 2026 00:16:01 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Tue, 10 Nov 2026 00:16:01 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 10 Nov 2026 00:16:01 GMT
USER 1001
# Tue, 10 Nov 2026 00:16:01 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 10 Nov 2026 00:16:01 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Tue, 10 Nov 2026 00:16:01 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 10 Nov 2026 00:37:15 GMT
ARG VERBOSE=false
# Tue, 10 Nov 2026 00:37:15 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 10 Nov 2026 00:37:15 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Tue, 10 Nov 2026 00:37:15 GMT
COPY --chown=1001:0 server-http-port-enabled.xml /config/server.xml # buildkit
# Tue, 10 Nov 2026 00:37:39 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
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
	-	`sha256:89194296f43bff2234e11fd9c533c8fcff7d966f6a9499d20226ad0db124ba61`  
		Last Modified: Tue, 10 Nov 2026 00:16:16 GMT  
		Size: 33.1 KB (33112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce885a38de364b6bf12e1aecae5e3d08bf59a671345e964cceb5329ee76c492a`  
		Last Modified: Tue, 10 Nov 2026 00:16:17 GMT  
		Size: 18.1 MB (18124055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eca747b61f01a5614df73de7d1562c5755a72550a19b713cb66f24acdb60f704`  
		Last Modified: Tue, 10 Nov 2026 00:16:16 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8396473a06021f528437da37cd8f83424b693d12d393b552d5153124c995b951`  
		Last Modified: Tue, 10 Nov 2026 00:16:16 GMT  
		Size: 1.5 KB (1518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374aac4271c624536e2bda3977bbdcefb40a688e8deda3d2ef111b2a2bd8b143`  
		Last Modified: Tue, 10 Nov 2026 00:16:17 GMT  
		Size: 14.8 KB (14784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9387d7b55ccde0a5f0eb55220511240e64836d83e31747aec6521af9228aa25a`  
		Last Modified: Tue, 10 Nov 2026 00:16:17 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b035483a23e6d7a3437fa484aa5e185d806023cd8834d9e5e243fe39561a1c`  
		Last Modified: Tue, 10 Nov 2026 00:16:17 GMT  
		Size: 15.7 KB (15658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88f43451c34b4aba9b1cf834d1468251a34f9702c22cc770c4c38afc5f20a8b9`  
		Last Modified: Tue, 10 Nov 2026 00:16:18 GMT  
		Size: 2.8 MB (2794458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1636906570ce84d15162b87db9cc7e7b9b7efaad007b263ce7c0a74f5733cab`  
		Last Modified: Tue, 10 Nov 2026 00:38:23 GMT  
		Size: 391.2 MB (391239525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099fba2c49bd54021b8bf5df3f20d616f8f58797bc913bda611ff48dddc0b537`  
		Last Modified: Tue, 10 Nov 2026 00:38:15 GMT  
		Size: 944.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a9ff8ad3a484a108e4e1286997c9b2cce0221f9ae0fdbbba4e9efdcae435909`  
		Last Modified: Tue, 10 Nov 2026 00:38:16 GMT  
		Size: 14.8 MB (14816973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:f57820be6125c74106aaea5ddcb34bd570ea4f712f5053fd70f97f557caec5e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5457404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e06b21f1a7b15aaa573f734b0730b4b34690a50f9fcb8f5b86bd101534689dac`

```dockerfile
```

-	Layers:
	-	`sha256:24c5e37faec0742091ac7763574c1702fc7cb43cba1bf1fa5419c27b4949742a`  
		Last Modified: Tue, 10 Nov 2026 00:38:16 GMT  
		Size: 5.4 MB (5437693 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ffe2b52430bf0cc92b950f7f6be7f442cd2074fae3ec1158669f2a367772ceb`  
		Last Modified: Tue, 10 Nov 2026 00:38:15 GMT  
		Size: 19.7 KB (19711 bytes)  
		MIME: application/vnd.in-toto+json
