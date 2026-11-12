## `websphere-liberty:kernel-java17-openj9`

```console
$ docker pull websphere-liberty@sha256:32ff5fa605c73c465da3892156ad94a18be381adc16a683da7a01c5b52eb5d52
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

### `websphere-liberty:kernel-java17-openj9` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:25912f251f84295192a5386056c3c033440e77640e6f930d99278c64799db2fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **124.9 MB (124907335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12d117051896e2319984a26f844b5867ed8a1fff646b5c21583b2c3ac0608262`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
# Wed, 11 Nov 2026 23:24:32 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:24:32 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:24:32 GMT
ENV JAVA_VERSION=17.0.21.0
# Wed, 11 Nov 2026 23:24:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0274bf384b6da61d5331b6c7aa50231484d530e03daa04b1c2e64fcbdc97d174';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_aarch64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='6c8abb4b7d50a7fa540724dfd49710c5645b84618b227af91d1cc8f191e76306';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_ppc64le_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='6a00eb5811845ba35401490932643c935f277c6c70ddcacef64ac043e7b8d0a9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_x64_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='028be8c4e5c7b84a55ac83208fbee42c21bca3cc48ad20f05e4d98907b62b1de';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_s390x_linux_17.0.21.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:24:34 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:24:34 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:25:37 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 00:44:23 GMT
USER root
# Thu, 12 Nov 2026 00:44:23 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 00:44:23 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:44:23 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 00:44:23 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 00:44:23 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Thu, 12 Nov 2026 00:44:23 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Thu, 12 Nov 2026 00:44:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 12 Nov 2026 00:44:23 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Thu, 12 Nov 2026 00:44:23 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 00:44:23 GMT
ARG LIBERTY_URL
# Thu, 12 Nov 2026 00:44:23 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 12 Nov 2026 00:44:37 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:44:37 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Thu, 12 Nov 2026 00:44:38 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 00:44:38 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 12 Nov 2026 00:44:38 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Thu, 12 Nov 2026 00:44:38 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 12 Nov 2026 00:44:38 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 00:44:42 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 12 Nov 2026 00:44:42 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 00:44:42 GMT
USER 1001
# Thu, 12 Nov 2026 00:44:42 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 00:44:42 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 00:44:42 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:26538842dfbfed820e62531e047bc6cfd3359a7e0a52f59c1a951ccc6ca787fe`  
		Last Modified: Wed, 11 Nov 2026 22:58:09 GMT  
		Size: 29.8 MB (29793223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a3e4e6467c98596248e9da725c4b5d48e91c38d866f0d5991b36bc43ee5ca4`  
		Last Modified: Wed, 11 Nov 2026 23:25:52 GMT  
		Size: 12.8 MB (12793099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c318cb6dae4950a004730f15a438c3042aeff983b372cf4aec9b374e3f6809e`  
		Last Modified: Wed, 11 Nov 2026 23:25:53 GMT  
		Size: 56.4 MB (56372796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a276f181e9da95460df0b3c7eb75c639e9b3dcfdd06ff38be7329cf2fbd4611`  
		Last Modified: Wed, 11 Nov 2026 23:25:51 GMT  
		Size: 5.1 MB (5058078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:996435a2ec55727281ea76ccd858df6f996d22af8959712f9c443eb27852223b`  
		Last Modified: Thu, 12 Nov 2026 00:44:50 GMT  
		Size: 31.7 KB (31748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69fbb7e2dd50198f69912bfb0f1b9192c12b620f20b10b22727d0ed53da1b611`  
		Last Modified: Thu, 12 Nov 2026 00:44:51 GMT  
		Size: 18.1 MB (18123993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e77f20b6a86defabebf9a70938b0cecb57325741f6855be5b0ca641808abafd`  
		Last Modified: Thu, 12 Nov 2026 00:44:50 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54265ac89bc724b1b5c71544e42005d5d4879c61b60f2003dac2fe70d254ea6a`  
		Last Modified: Thu, 12 Nov 2026 00:44:50 GMT  
		Size: 1.5 KB (1518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:854e29be2f3588291d47b10223fdac0fb1ecdea55b18ab674b7666ed6ac33391`  
		Last Modified: Thu, 12 Nov 2026 00:44:51 GMT  
		Size: 14.8 KB (14781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6771ab837ff9421c2a44e42864fbfe7db4d01e65c8f7b3ece19ee4f2fd8f4a45`  
		Last Modified: Thu, 12 Nov 2026 00:44:51 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfcb8ef0900abd3198a3511dacf456c8c87ac556cf42bfd8dbee4ff1eb7e3677`  
		Last Modified: Thu, 12 Nov 2026 00:44:52 GMT  
		Size: 15.7 KB (15655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9ae3ea2e17bdfc67b181025f336a3099521b6056b221143167e0746d5eb74f`  
		Last Modified: Thu, 12 Nov 2026 00:44:52 GMT  
		Size: 2.7 MB (2701713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java17-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:6a8f7241f8e4e62b5d7ae3d01708fdb84af98005e672d226fd53502967885633
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3340360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e65a553216bc56ee61c48cd97a5396974fce1f71b9efc1706904f28d030cd32`

```dockerfile
```

-	Layers:
	-	`sha256:9b86cfb45a699215218b9c57ff9faa3ad3bc15cd134ac1ca450eb45ebc83daf8`  
		Last Modified: Thu, 12 Nov 2026 00:44:51 GMT  
		Size: 3.3 MB (3299490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6ba02120637ccd086e0ffbe144f8e378354b6545ace3a274e308db1acd054e0`  
		Last Modified: Thu, 12 Nov 2026 00:44:50 GMT  
		Size: 40.9 KB (40870 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel-java17-openj9` - linux; arm64 variant v8

```console
$ docker pull websphere-liberty@sha256:5ea1c47383a5f243cb292e716a7360d8b83e1074aafc2ab4aa6e372ec789c0a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **122.1 MB (122139502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbaf4f54e55da68451fd71ea4b231705fb4e63a7101da36cfac98f55321d4e7b`
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
# Wed, 11 Nov 2026 23:28:08 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 11 Nov 2026 23:28:08 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 11 Nov 2026 23:28:08 GMT
ENV JAVA_VERSION=17.0.21.0
# Wed, 11 Nov 2026 23:28:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0274bf384b6da61d5331b6c7aa50231484d530e03daa04b1c2e64fcbdc97d174';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_aarch64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='6c8abb4b7d50a7fa540724dfd49710c5645b84618b227af91d1cc8f191e76306';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_ppc64le_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='6a00eb5811845ba35401490932643c935f277c6c70ddcacef64ac043e7b8d0a9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_x64_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='028be8c4e5c7b84a55ac83208fbee42c21bca3cc48ad20f05e4d98907b62b1de';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_s390x_linux_17.0.21.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:28:10 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:28:10 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:29:14 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 00:59:17 GMT
USER root
# Thu, 12 Nov 2026 00:59:17 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 00:59:17 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 00:59:17 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 00:59:17 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 00:59:17 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Thu, 12 Nov 2026 00:59:17 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Thu, 12 Nov 2026 00:59:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 12 Nov 2026 00:59:17 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Thu, 12 Nov 2026 00:59:17 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 00:59:17 GMT
ARG LIBERTY_URL
# Thu, 12 Nov 2026 00:59:17 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 12 Nov 2026 00:59:29 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 00:59:29 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Thu, 12 Nov 2026 00:59:29 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 00:59:29 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 12 Nov 2026 00:59:29 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Thu, 12 Nov 2026 00:59:29 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 12 Nov 2026 00:59:29 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 00:59:34 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 12 Nov 2026 00:59:34 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 00:59:34 GMT
USER 1001
# Thu, 12 Nov 2026 00:59:34 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 00:59:34 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 00:59:34 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0c72064db2470cf0efa5fa1935125d317d0c2f6d95855143ae6a816ce4b20b56`  
		Last Modified: Wed, 11 Nov 2026 22:58:08 GMT  
		Size: 29.0 MB (28965258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13347b0cdb0c958b52daaf6431de4ccaffcd9199db1dd0d1358b0a3535d23cae`  
		Last Modified: Wed, 11 Nov 2026 23:29:29 GMT  
		Size: 12.8 MB (12830396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1243a5dff8beb39a5313e59e215104876215c2233712353fb891321ca0671b57`  
		Last Modified: Wed, 11 Nov 2026 23:29:30 GMT  
		Size: 54.6 MB (54550844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c164cef6e7acf7f82f311d66363bb2bfcd592c328d8fcfe0f4066640644cbe07`  
		Last Modified: Wed, 11 Nov 2026 23:29:29 GMT  
		Size: 4.9 MB (4851856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86d8ceb23a611cc26e2283d6d7a60877a16a4dc2cf0d4b5a29a62279ef853ed0`  
		Last Modified: Thu, 12 Nov 2026 00:59:44 GMT  
		Size: 42.3 KB (42323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d730195dc9f1711541b60c50ea393bc5b68a6c0a8fbcb6d451e61de7642d034e`  
		Last Modified: Thu, 12 Nov 2026 00:59:44 GMT  
		Size: 18.1 MB (18124162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30966594c3930d5c5336f97ebfc3c1a37ed167e18d6fba11982f07e397edbd53`  
		Last Modified: Thu, 12 Nov 2026 00:59:44 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3033f60eaba92024e4503bab755b4347494edf088b7f722965eab5ea5945dd8`  
		Last Modified: Thu, 12 Nov 2026 00:59:44 GMT  
		Size: 1.5 KB (1514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ffb80239cea1f1cc922064b465ccffa713eb2880a6c4930a805587bf0b9e91`  
		Last Modified: Thu, 12 Nov 2026 00:59:45 GMT  
		Size: 14.8 KB (14782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e38e5153fcf5475d4cce68a01cb856d02b40ea5785941e7554cb5f6f251267c`  
		Last Modified: Thu, 12 Nov 2026 00:59:45 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614230c7e242998bc9f6efa6d16f517b2a2d4f56507708a78f87a831ae9ee524`  
		Last Modified: Thu, 12 Nov 2026 00:59:45 GMT  
		Size: 15.6 KB (15645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce4a119db8b31f09536150d02fa297242bf9213a8efa5a35a4e9b897cbcf3d7`  
		Last Modified: Thu, 12 Nov 2026 00:59:46 GMT  
		Size: 2.7 MB (2741993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java17-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:93deffb350387bde0085fc56892700d353893feb1476bbe2b25316c81416cd72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3339041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aff4288c8e9359957057db4052ae13405edc59bd80443719ffcfcd0de7678e5`

```dockerfile
```

-	Layers:
	-	`sha256:9d691c26728ea84d32103171035c52e87e9e1e44c43b113827683ea9ac3bf42c`  
		Last Modified: Thu, 12 Nov 2026 00:59:44 GMT  
		Size: 3.3 MB (3298032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a770d17993e760855e0ad079f69e55b6cef90a7185f9c17d050f5c36bf1ca0a7`  
		Last Modified: Thu, 12 Nov 2026 00:59:43 GMT  
		Size: 41.0 KB (41009 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel-java17-openj9` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:fe48a77f70bb94b3ecac883a0c968b6114df34e63894718322daf0a63bcbaeb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **131.3 MB (131282841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb64798fcf13d1e86703b10e386e7d43ac38cffd7f4ed4374d874dc874115c3e`
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
ENV JAVA_VERSION=17.0.21.0
# Wed, 04 Nov 2026 22:26:37 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0274bf384b6da61d5331b6c7aa50231484d530e03daa04b1c2e64fcbdc97d174';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_aarch64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='6c8abb4b7d50a7fa540724dfd49710c5645b84618b227af91d1cc8f191e76306';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_ppc64le_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='6a00eb5811845ba35401490932643c935f277c6c70ddcacef64ac043e7b8d0a9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_x64_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='028be8c4e5c7b84a55ac83208fbee42c21bca3cc48ad20f05e4d98907b62b1de';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_s390x_linux_17.0.21.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 04 Nov 2026 22:26:37 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Nov 2026 22:26:37 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:53:01 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 10 Nov 2026 00:39:49 GMT
USER root
# Tue, 10 Nov 2026 00:39:49 GMT
ARG VERBOSE=false
# Tue, 10 Nov 2026 00:39:49 GMT
ARG OPENJ9_SCC=true
# Tue, 10 Nov 2026 00:39:49 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Tue, 10 Nov 2026 00:39:49 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Tue, 10 Nov 2026 00:39:49 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Tue, 10 Nov 2026 00:39:49 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Tue, 10 Nov 2026 00:39:49 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Tue, 10 Nov 2026 00:39:49 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Tue, 10 Nov 2026 00:39:49 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 10 Nov 2026 00:39:49 GMT
ARG LIBERTY_URL
# Tue, 10 Nov 2026 00:39:49 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 10 Nov 2026 00:40:07 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 00:40:07 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Tue, 10 Nov 2026 00:40:08 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 10 Nov 2026 00:40:09 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Tue, 10 Nov 2026 00:40:09 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Tue, 10 Nov 2026 00:40:10 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Tue, 10 Nov 2026 00:40:15 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 10 Nov 2026 00:40:36 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Tue, 10 Nov 2026 00:40:36 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 10 Nov 2026 00:40:36 GMT
USER 1001
# Tue, 10 Nov 2026 00:40:36 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 10 Nov 2026 00:40:36 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Tue, 10 Nov 2026 00:40:36 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:26d1f7904485e3d28bba77501ad66d27f4604cef2afea3b3acad84e935d64dd6`  
		Last Modified: Thu, 05 Nov 2026 00:00:55 GMT  
		Size: 58.3 MB (58300167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2655da2230956d7ba7718b9a574feecb12b001dad8c7ce11bc8cec4790fd38`  
		Last Modified: Mon, 09 Nov 2026 23:53:18 GMT  
		Size: 4.0 MB (3959352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f51925c83b92f51c36bc197a04fb6072fa367cfb42aec28a2f61abb91df75a`  
		Last Modified: Tue, 10 Nov 2026 00:40:59 GMT  
		Size: 36.5 KB (36496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f8d0f72e3f38209c406f499a2d555521dfc4072ee5523fad25ae0b309950ca`  
		Last Modified: Tue, 10 Nov 2026 00:40:59 GMT  
		Size: 18.1 MB (18124223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e994795d48cf795f8b54a501fa1da9fe81164dc9026bf90e6c48d1b3c156b24f`  
		Last Modified: Tue, 10 Nov 2026 00:40:59 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a626e7a00f481100ce9d06d121e76194c176adc25e67fd17096d785254fc1599`  
		Last Modified: Tue, 10 Nov 2026 00:40:59 GMT  
		Size: 1.5 KB (1520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eba74290f2ad7de2962f0500bf0b2ab1445c9144c15ef056da6a0091e9d9919c`  
		Last Modified: Tue, 10 Nov 2026 00:41:00 GMT  
		Size: 14.8 KB (14783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d935c63835178d1fd910178cd436d3e92fbc386b473e83bc34622804aabebf`  
		Last Modified: Tue, 10 Nov 2026 00:41:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f534949ce55d297c44343a781e75ed4e714d9be99dfc60a7549e9e04e7124cd6`  
		Last Modified: Tue, 10 Nov 2026 00:41:00 GMT  
		Size: 15.7 KB (15660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc87fd5797eee3dcf87fbc3534b6415c89423a3f9d179d9850f37600aa1e956`  
		Last Modified: Tue, 10 Nov 2026 00:41:01 GMT  
		Size: 2.7 MB (2686509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java17-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:078da29cbee42b3fc978832d7ef77fb1e57946ca87aad19c1499c9aa9e4e3cff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3344424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7685be27664594613737212d0f686480c4150099fa1c60e10ca90d4c53b4bb1`

```dockerfile
```

-	Layers:
	-	`sha256:fb44db022901654686a10db5892d5aee1ab7f9653548b2c2c1a29f3368bc4cc0`  
		Last Modified: Tue, 10 Nov 2026 00:40:59 GMT  
		Size: 3.3 MB (3303514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70b65da760d9ff198bece5dca139674808333d53058dcbc9460663e53f94326c`  
		Last Modified: Tue, 10 Nov 2026 00:40:59 GMT  
		Size: 40.9 KB (40910 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel-java17-openj9` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:614c774a1f691b085aab6904f13585c6f31b0d91eff87bdfe8e9b88252a3afa7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **127.9 MB (127933545 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7542ed31fe5ffa47a6636441388e565ecf2eb93bdc05bef76031f14616678481`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

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
ENV JAVA_VERSION=17.0.21.0
# Wed, 11 Nov 2026 23:37:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='0274bf384b6da61d5331b6c7aa50231484d530e03daa04b1c2e64fcbdc97d174';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_aarch64_linux_17.0.21.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='6c8abb4b7d50a7fa540724dfd49710c5645b84618b227af91d1cc8f191e76306';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_ppc64le_linux_17.0.21.0.tar.gz';          ;;        amd64|x86_64)          ESUM='6a00eb5811845ba35401490932643c935f277c6c70ddcacef64ac043e7b8d0a9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_x64_linux_17.0.21.0.tar.gz';          ;;        s390x)          ESUM='028be8c4e5c7b84a55ac83208fbee42c21bca3cc48ad20f05e4d98907b62b1de';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.21.0/ibm-semeru-open-jre_s390x_linux_17.0.21.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Wed, 11 Nov 2026 23:37:05 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 11 Nov 2026 23:37:05 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Wed, 11 Nov 2026 23:38:10 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Thu, 12 Nov 2026 01:41:14 GMT
USER root
# Thu, 12 Nov 2026 01:41:14 GMT
ARG VERBOSE=false
# Thu, 12 Nov 2026 01:41:14 GMT
ARG OPENJ9_SCC=true
# Thu, 12 Nov 2026 01:41:14 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Thu, 12 Nov 2026 01:41:14 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Thu, 12 Nov 2026 01:41:14 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Thu, 12 Nov 2026 01:41:14 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Thu, 12 Nov 2026 01:41:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 12 Nov 2026 01:41:14 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Thu, 12 Nov 2026 01:41:14 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Thu, 12 Nov 2026 01:41:14 GMT
ARG LIBERTY_URL
# Thu, 12 Nov 2026 01:41:14 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 12 Nov 2026 01:41:34 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 01:41:34 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Thu, 12 Nov 2026 01:41:35 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 12 Nov 2026 01:41:35 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 12 Nov 2026 01:41:35 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Thu, 12 Nov 2026 01:41:35 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 12 Nov 2026 01:41:38 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 12 Nov 2026 01:41:48 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 12 Nov 2026 01:41:48 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Thu, 12 Nov 2026 01:41:48 GMT
USER 1001
# Thu, 12 Nov 2026 01:41:48 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 12 Nov 2026 01:41:48 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 12 Nov 2026 01:41:48 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:c74130c24319f162bd7aed0922555617452c88966a2ffa15c1701c8e295a6b15`  
		Last Modified: Wed, 11 Nov 2026 23:38:35 GMT  
		Size: 58.6 MB (58613587 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d72d784c724a2d0514252042855f79dd0a0da519a67e5e84171b06eace537a56`  
		Last Modified: Wed, 11 Nov 2026 23:38:34 GMT  
		Size: 5.2 MB (5216171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffcea375f3c83014bb02908eb34c0bc5fd079e93d03ad4b0486b74cf12e1f64f`  
		Last Modified: Thu, 12 Nov 2026 01:42:19 GMT  
		Size: 33.1 KB (33111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:920d06e767ec19c2f1423961d3bdfdc1f38f22a5d82a0c2efdf543bb0ff11316`  
		Last Modified: Thu, 12 Nov 2026 01:42:21 GMT  
		Size: 18.1 MB (18123811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3c5cad10c58518b8385bdc014dcedeaf111e3f848ddc18b98f478ae19b2b513`  
		Last Modified: Thu, 12 Nov 2026 01:42:19 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ffe5b7a950316771d1a7164ab60c269cd9e3ad39e6b970face7df0abb0014fc`  
		Last Modified: Thu, 12 Nov 2026 01:42:19 GMT  
		Size: 1.5 KB (1519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb6f0673f31fa5920778ca98f19a27d600cb0453a6414584ae78c0c5c27ee206`  
		Last Modified: Thu, 12 Nov 2026 01:42:20 GMT  
		Size: 14.8 KB (14780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510762f640fe5a996e8dd4f11f2d308fca62c027eb7c03f91d17bf9d8f496ce4`  
		Last Modified: Thu, 12 Nov 2026 01:42:20 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:674a602e57aa65ad676ccfa28b2b7d8686a5a921e7c3e0e34381ec10b338a4ca`  
		Last Modified: Thu, 12 Nov 2026 01:42:20 GMT  
		Size: 15.7 KB (15669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9062e1648f987d606bbc3b343879d6f617429fa4ff38eda1e2c0d5849c6f5f2`  
		Last Modified: Thu, 12 Nov 2026 01:42:22 GMT  
		Size: 2.8 MB (2848324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java17-openj9` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:b5bc6b473730d74de087a4b29c064181d34e2b78bf98838dd680a4436315a80a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.3 MB (3341357 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1654786b68ee685b712ed762d6090206807cd0156cc6b7050b112acc7d415fd0`

```dockerfile
```

-	Layers:
	-	`sha256:fa52f2d1f450074230bdad94e834a6d39e5132ade4461a18d8548943d4a83adb`  
		Last Modified: Thu, 12 Nov 2026 01:42:21 GMT  
		Size: 3.3 MB (3300487 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:236ce15bccb57f60144957fabf17f63c90c054c4b8ba40279bbc60e56eb1eca3`  
		Last Modified: Thu, 12 Nov 2026 01:42:20 GMT  
		Size: 40.9 KB (40870 bytes)  
		MIME: application/vnd.in-toto+json
