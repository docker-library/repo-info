## `open-liberty:beta-java17`

```console
$ docker pull open-liberty@sha256:9a999e26ead7e5b331c80d7b175334944bb2a7ba3ce6956808500402d76eebbf
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
$ docker pull open-liberty@sha256:24c0c330e2a202043a50f2d49c59e563f77ec3eff299d6fe460abedf74869c97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **489.4 MB (489401910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f517045177cd473509e9be387404f3c81cd86f17339c2034683c0c8a37d8bf`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:52 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:54 GMT
ADD file:7121eb4a5ba391efb4ba9a38c532d1c5dc2d22d276f04e062f357eea36ee62c4 in / 
# Fri, 02 Oct 2026 08:10:55 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:26:22 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:26:22 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:26:22 GMT
ENV JAVA_VERSION=17.0.20.15
# Sat, 17 Oct 2026 00:26:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='14911694860c4ad7f1564fc567983d5105e2ad0bc875bd9657e9eb53cb5e73b2';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_aarch64_linux_17.0.20.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='da2216939e82422ed8e948f4e03e10ea52f1a26138e053554a291828e39aae8e';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_ppc64le_linux_17.0.20.15.tar.gz';          ;;        amd64|x86_64)          ESUM='9cdac54bbfc7d794ed378c88eb0e77c275e1a1548b9ee82862e46ff2e37d4ef4';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_x64_linux_17.0.20.15.tar.gz';          ;;        s390x)          ESUM='6dcd5ff294bdc5b13acc053b16473c6c53c45d17eb9318bff2cd074670b652b9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_s390x_linux_17.0.20.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Sat, 17 Oct 2026 00:26:24 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:26:24 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Sat, 17 Oct 2026 00:27:30 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 23 Oct 2026 18:53:51 GMT
USER root
# Fri, 23 Oct 2026 18:53:51 GMT
ARG LIBERTY_VERSION=26.0.0.10-beta
# Fri, 23 Oct 2026 18:53:51 GMT
ARG LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c
# Fri, 23 Oct 2026 18:53:51 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip
# Fri, 23 Oct 2026 18:53:51 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Fri, 23 Oct 2026 18:53:51 GMT
ARG OPENJ9_SCC=true
# Fri, 23 Oct 2026 18:53:51 GMT
ARG VERBOSE=false
# Fri, 23 Oct 2026 18:53:51 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.10-beta liberty.version=26.0.0.10-beta io.openliberty.version=26.0.0.10-beta
# Fri, 23 Oct 2026 18:53:51 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Fri, 23 Oct 2026 18:53:51 GMT
COPY helpers /opt/ol/helpers # buildkit
# Fri, 23 Oct 2026 18:53:51 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Fri, 23 Oct 2026 18:53:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Fri, 23 Oct 2026 18:54:07 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Fri, 23 Oct 2026 18:54:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Fri, 23 Oct 2026 18:54:07 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 23 Oct 2026 18:54:07 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 23 Oct 2026 18:54:30 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Fri, 23 Oct 2026 18:54:30 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Fri, 23 Oct 2026 18:54:30 GMT
USER 1001
# Fri, 23 Oct 2026 18:54:30 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 23 Oct 2026 18:54:30 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 23 Oct 2026 18:54:30 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:f2b4ef06ff01a67d4bed7657a4ae379a7d07934b7c3e743454a22a0d5275fb2b`  
		Last Modified: Fri, 02 Oct 2026 08:36:14 GMT  
		Size: 29.8 MB (29765758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16a9b581fadfc9ed015564da4f3a8e5e56781372ea44c810d9b42d3597f3fb2`  
		Last Modified: Sat, 17 Oct 2026 00:27:42 GMT  
		Size: 12.8 MB (12795483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f99bfcc3963bef22bc5e49501d5e37cc1afe18be89628e6378d61210e9c2cc6`  
		Last Modified: Sat, 17 Oct 2026 00:27:43 GMT  
		Size: 56.2 MB (56181991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:743325784306316d3a79cdb613a8d517700b35b03d089d118aecb051c65cf144`  
		Last Modified: Sat, 17 Oct 2026 00:27:41 GMT  
		Size: 5.0 MB (5033862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:970781dbd7edcd6a0c14e44b223254453cfd6944c49cf57946bdead7a753da7f`  
		Last Modified: Fri, 23 Oct 2026 18:54:55 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c623135dca386aea0b730556c659795fa8f206a5e821c210a8f0235fc1ed42f1`  
		Last Modified: Fri, 23 Oct 2026 18:54:55 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2996016536dfa039098c9e37bb19096480d1af8311762eee5c2d737f4065eccc`  
		Last Modified: Fri, 23 Oct 2026 18:54:55 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52df2ff8c3ca2701e8af045596430080f606989ef9793dccfabf795a3eb4006d`  
		Last Modified: Fri, 23 Oct 2026 18:54:55 GMT  
		Size: 31.7 KB (31749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b969e9c16d7db86f511e09005b43d24faa2355c9cce76703aa5d7bf27c944d0`  
		Last Modified: Fri, 23 Oct 2026 18:55:03 GMT  
		Size: 371.0 MB (370993975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4924a5c695332b19cea2946cf3c11704e35c359afd529a29a70424649eea2a2`  
		Last Modified: Fri, 23 Oct 2026 18:54:56 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90b61fb916ca51bcdd3a390d3b70c2bf99f665cefd4633489450c6eff33fb1a`  
		Last Modified: Fri, 23 Oct 2026 18:54:56 GMT  
		Size: 14.2 KB (14221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7224bf36f95d0324868d90f760c6a275bb1a8627b5523c4653f0b932c44910`  
		Last Modified: Fri, 23 Oct 2026 18:54:57 GMT  
		Size: 14.6 MB (14569746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:a8b6add98eaa70b4df17857226215a5353692d292471aaab24fa57f238d607e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5249915 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f823ba8455f2a111ccb0a420935849ac3f2e685ccab51e4a34f157d2d678569`

```dockerfile
```

-	Layers:
	-	`sha256:e26f04184fea083d6fd9c155be4a456feed83ad8756e33b385a4353a49ecdc26`  
		Last Modified: Fri, 23 Oct 2026 18:54:55 GMT  
		Size: 5.2 MB (5210518 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34f4f7601bd88bcec0a5c3441fecaa38f43f82a69b20c55c7dee166773392007`  
		Last Modified: Fri, 23 Oct 2026 18:54:55 GMT  
		Size: 39.4 KB (39397 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta-java17` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:b8c8ef8266d231738c318d7fae3b066fe89a2123529b808f93d12aca81a45519
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **486.4 MB (486393404 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7850d68555a716ff691d01ec9c49457f15b52d17108a4ab48acad6920226b40`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:23 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:23 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:25 GMT
ADD file:41d2e63ceb0b90641106340bc81ee11125254db51ee5a9d49e666bcf0388814f in / 
# Fri, 02 Oct 2026 08:10:26 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:24:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:24:39 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:24:39 GMT
ENV JAVA_VERSION=17.0.20.15
# Sat, 17 Oct 2026 00:26:26 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='14911694860c4ad7f1564fc567983d5105e2ad0bc875bd9657e9eb53cb5e73b2';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_aarch64_linux_17.0.20.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='da2216939e82422ed8e948f4e03e10ea52f1a26138e053554a291828e39aae8e';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_ppc64le_linux_17.0.20.15.tar.gz';          ;;        amd64|x86_64)          ESUM='9cdac54bbfc7d794ed378c88eb0e77c275e1a1548b9ee82862e46ff2e37d4ef4';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_x64_linux_17.0.20.15.tar.gz';          ;;        s390x)          ESUM='6dcd5ff294bdc5b13acc053b16473c6c53c45d17eb9318bff2cd074670b652b9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_s390x_linux_17.0.20.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Sat, 17 Oct 2026 00:26:26 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:26:26 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Sat, 17 Oct 2026 00:27:32 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Fri, 23 Oct 2026 18:53:24 GMT
USER root
# Fri, 23 Oct 2026 18:53:24 GMT
ARG LIBERTY_VERSION=26.0.0.10-beta
# Fri, 23 Oct 2026 18:53:24 GMT
ARG LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c
# Fri, 23 Oct 2026 18:53:24 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip
# Fri, 23 Oct 2026 18:53:24 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Fri, 23 Oct 2026 18:53:24 GMT
ARG OPENJ9_SCC=true
# Fri, 23 Oct 2026 18:53:24 GMT
ARG VERBOSE=false
# Fri, 23 Oct 2026 18:53:24 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.10-beta liberty.version=26.0.0.10-beta io.openliberty.version=26.0.0.10-beta
# Fri, 23 Oct 2026 18:53:24 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Fri, 23 Oct 2026 18:53:24 GMT
COPY helpers /opt/ol/helpers # buildkit
# Fri, 23 Oct 2026 18:53:24 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Fri, 23 Oct 2026 18:53:25 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Fri, 23 Oct 2026 18:53:41 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Fri, 23 Oct 2026 18:53:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Fri, 23 Oct 2026 18:53:41 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 23 Oct 2026 18:53:41 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 23 Oct 2026 18:54:08 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Fri, 23 Oct 2026 18:54:08 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Fri, 23 Oct 2026 18:54:08 GMT
USER 1001
# Fri, 23 Oct 2026 18:54:08 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 23 Oct 2026 18:54:08 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 23 Oct 2026 18:54:08 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:d5aec63251bb323f816a0f4b8a554bd84e478466a9ed1068daef07368328e9a3`  
		Last Modified: Fri, 02 Oct 2026 08:36:21 GMT  
		Size: 28.9 MB (28939761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d657df9819f6af8233844ffd0f5a5b04a77b49336217b63b1554219179a0a87`  
		Last Modified: Sat, 17 Oct 2026 00:26:15 GMT  
		Size: 12.8 MB (12832104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a42b7f0b56c18bd030939920c02b44c6a0ff9a7835f4ae81bfdf6a57f82c3797`  
		Last Modified: Sat, 17 Oct 2026 00:27:46 GMT  
		Size: 54.4 MB (54351090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb3f20530c7c76b9a64021898560d2418e679ed5c015df83c8deb6395f94c35d`  
		Last Modified: Sat, 17 Oct 2026 00:27:44 GMT  
		Size: 4.8 MB (4791058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8257e8838a63bdd6bc0c18f8e4d3c5154affbb013d1dc502449bc9c99c107911`  
		Last Modified: Fri, 23 Oct 2026 18:54:34 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6384c2ba2ababb400d5e911d68f3deee80a938a593b80582a2c27f2c4261aead`  
		Last Modified: Fri, 23 Oct 2026 18:54:34 GMT  
		Size: 12.8 KB (12779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396be5098676163bc6878808733314d0ec297f4fc745964444e009948abf8c8b`  
		Last Modified: Fri, 23 Oct 2026 18:54:34 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cfe37a20c0ef907a133a3711e152b220c3f80810f0600a1eeddd5dec5e1beca`  
		Last Modified: Fri, 23 Oct 2026 18:54:34 GMT  
		Size: 42.3 KB (42321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0d1f7200adc7914b12e2a68191fa1f1a59f2b59ddfeab3e8e42d57115d9265`  
		Last Modified: Fri, 23 Oct 2026 18:54:42 GMT  
		Size: 371.0 MB (370993947 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55adea859fc616c4088e098242b4d5be4d99a0d81691608d9509ea443d56c11c`  
		Last Modified: Fri, 23 Oct 2026 18:54:35 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb72a1f40910b95b6c0a3260502474eda4af32e6b2efed391dc2665a71034aa2`  
		Last Modified: Fri, 23 Oct 2026 18:54:35 GMT  
		Size: 14.2 KB (14221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c23fd4a90fcec9d11e0af28e333b9eb710c004edcc6e4559c5f2f3bf34d639a`  
		Last Modified: Fri, 23 Oct 2026 18:54:36 GMT  
		Size: 14.4 MB (14413772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:4e36882e78b4298f734f311f968d55456ceecc30ce8d9218fb97a6a6b1ca0b9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5248573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f5695e1f9d8919b04b9be7a37c4f2de628c208468fb87b5f2ccb45c6f67ad580`

```dockerfile
```

-	Layers:
	-	`sha256:36d6188721c3830ce9cf34d84c973a5f248677293bbc84bd4417247aded9fa09`  
		Last Modified: Fri, 23 Oct 2026 18:54:34 GMT  
		Size: 5.2 MB (5209048 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e0164e94533185b2ac5f3c2d0a56f92998e656444b19d6e3af709c9ceea18e7`  
		Last Modified: Fri, 23 Oct 2026 18:54:34 GMT  
		Size: 39.5 KB (39525 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta-java17` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:ae0dbc7025c72a55f4af6868e19eb99f97bbc2136b3c078861a404d6006a520b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **494.3 MB (494311002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c53ef401b98f86a2aa6734a6f02170b2d324c7d23bb6fa15252c009df7ef359`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 02 Oct 2026 08:03:52 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:03:52 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:03:53 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:03:57 GMT
ADD file:453509713ec04b626052519f384e2b9d016f8f4971a3e6dd75d87e74e89202c9 in / 
# Fri, 02 Oct 2026 08:03:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:53:20 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:53:20 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:53:20 GMT
ENV JAVA_VERSION=17.0.20.15
# Sat, 17 Oct 2026 07:04:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='14911694860c4ad7f1564fc567983d5105e2ad0bc875bd9657e9eb53cb5e73b2';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_aarch64_linux_17.0.20.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='da2216939e82422ed8e948f4e03e10ea52f1a26138e053554a291828e39aae8e';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_ppc64le_linux_17.0.20.15.tar.gz';          ;;        amd64|x86_64)          ESUM='9cdac54bbfc7d794ed378c88eb0e77c275e1a1548b9ee82862e46ff2e37d4ef4';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_x64_linux_17.0.20.15.tar.gz';          ;;        s390x)          ESUM='6dcd5ff294bdc5b13acc053b16473c6c53c45d17eb9318bff2cd074670b652b9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_s390x_linux_17.0.20.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Sat, 17 Oct 2026 07:04:31 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 07:04:31 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Sat, 17 Oct 2026 07:05:39 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Sat, 17 Oct 2026 07:27:30 GMT
USER root
# Sat, 17 Oct 2026 07:27:30 GMT
ARG LIBERTY_VERSION=26.0.0.10-beta
# Sat, 17 Oct 2026 07:27:30 GMT
ARG LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c
# Sat, 17 Oct 2026 07:27:30 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip
# Sat, 17 Oct 2026 07:27:30 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Sat, 17 Oct 2026 07:27:30 GMT
ARG OPENJ9_SCC=true
# Sat, 17 Oct 2026 07:27:30 GMT
ARG VERBOSE=false
# Sat, 17 Oct 2026 07:27:30 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.10-beta liberty.version=26.0.0.10-beta io.openliberty.version=26.0.0.10-beta
# Sat, 17 Oct 2026 07:27:30 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Sat, 17 Oct 2026 07:27:42 GMT
COPY helpers /opt/ol/helpers # buildkit
# Sat, 17 Oct 2026 07:27:42 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Fri, 23 Oct 2026 20:36:34 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Fri, 23 Oct 2026 20:37:06 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Fri, 23 Oct 2026 20:37:06 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Fri, 23 Oct 2026 20:37:11 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 23 Oct 2026 20:37:15 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 23 Oct 2026 20:38:03 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Fri, 23 Oct 2026 20:38:03 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Fri, 23 Oct 2026 20:38:03 GMT
USER 1001
# Fri, 23 Oct 2026 20:38:03 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 23 Oct 2026 20:38:03 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 23 Oct 2026 20:38:03 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:d56805ebb73a9b4ab3eaf5e6375e8f25df35aba5e48ca970deb58001dac1f2ca`  
		Last Modified: Fri, 02 Oct 2026 08:36:36 GMT  
		Size: 34.4 MB (34377990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc2751f29bf24a1f7e2b7adba0c7949c9fe35c09e60afb29d32eec95569d16c`  
		Last Modified: Sat, 17 Oct 2026 00:55:43 GMT  
		Size: 13.8 MB (13771352 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6cf9b07aaf266a24bb69c7d52309be9e60815caf886bbe215f8dbd35932da33`  
		Last Modified: Sat, 17 Oct 2026 07:06:10 GMT  
		Size: 58.1 MB (58100829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9eeab6c153f9e65cd0b4a40c682ad2cfe8a32eacc10b637792a0dc7c2da706`  
		Last Modified: Sat, 17 Oct 2026 07:06:08 GMT  
		Size: 4.0 MB (3956725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e341996ceeaf252ecf618a2408d2c2f167ebaec81c041060c177c38aeda13495`  
		Last Modified: Sat, 17 Oct 2026 07:29:03 GMT  
		Size: 1.0 KB (1046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c1a50d430b16546f07a75b9930ee9e700fdc137c7e9cd6c262b858fa52c2a09`  
		Last Modified: Sat, 17 Oct 2026 07:30:17 GMT  
		Size: 12.8 KB (12778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0294e34143a95579fc108eb55decd6d4e435ad6768f11b7bdb71bad2104b62c4`  
		Last Modified: Sat, 17 Oct 2026 07:30:17 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d37a215b061643a3ea2a06bf4424aaee7de63ee851e0f0a21099a1c7c4efc12`  
		Last Modified: Fri, 23 Oct 2026 20:37:38 GMT  
		Size: 36.5 KB (36497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f92d253b952e588240146e6ddfad52b8f3cb762fca6d6b9c1b2a3b83d39f11d0`  
		Last Modified: Fri, 23 Oct 2026 20:39:12 GMT  
		Size: 371.0 MB (370994332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:609727062ea782200df3919bf36381f165640ab6f687ad927584f10afc405767`  
		Last Modified: Fri, 23 Oct 2026 20:39:04 GMT  
		Size: 1.1 KB (1060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6424faff31da9b78b9e0cc81715665e7253ed3931393f4ee021d80f93e7898f6`  
		Last Modified: Fri, 23 Oct 2026 20:39:04 GMT  
		Size: 14.3 KB (14254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d5075f6d59ade26289736632524c573a1d694882e078fea5094b00cf12dc47`  
		Last Modified: Fri, 23 Oct 2026 20:39:05 GMT  
		Size: 13.0 MB (13043896 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:4ce0ce94c96f431e3c95e3ad57a641cf06c99618be6679e0a816ee466950a4a2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5254571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c06c1781a06b37b59c6c7386bc6784961cc8b80f911a0feb6ccc499c402262a1`

```dockerfile
```

-	Layers:
	-	`sha256:5944415e53b4fc86142feb5924148228c166453bc079157dbd107ba91b134f01`  
		Last Modified: Fri, 23 Oct 2026 20:39:04 GMT  
		Size: 5.2 MB (5215140 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e18e7d769afa81100a9029e61473f9c480888acca3ed2691ea43eed5079e31f5`  
		Last Modified: Fri, 23 Oct 2026 20:39:04 GMT  
		Size: 39.4 KB (39431 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:beta-java17` - linux; s390x

```console
$ docker pull open-liberty@sha256:71a9b0b1f2403013a1a022677d8d5c5af545bacf14e474cee61ac1a5b40cdc5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **492.7 MB (492738021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3758fa6bde5ff793b320aff04de6b26d35c1f8eb47b43d81485eacf2bcc08359`
-	Entrypoint: `["\/opt\/ol\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ol\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 02 Oct 2026 08:10:03 GMT
ARG RELEASE
# Fri, 02 Oct 2026 08:10:03 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 08:10:03 GMT
LABEL org.opencontainers.image.version=24.04
# Fri, 02 Oct 2026 08:10:04 GMT
ADD file:82fcbc85b577996d551267407ad62089cd19d90c5b58692649763a56286be003 in / 
# Fri, 02 Oct 2026 08:10:04 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 00:27:07 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Sat, 17 Oct 2026 00:27:07 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 00:27:07 GMT
ENV JAVA_VERSION=17.0.20.15
# Sat, 17 Oct 2026 00:29:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='14911694860c4ad7f1564fc567983d5105e2ad0bc875bd9657e9eb53cb5e73b2';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_aarch64_linux_17.0.20.15.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='da2216939e82422ed8e948f4e03e10ea52f1a26138e053554a291828e39aae8e';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_ppc64le_linux_17.0.20.15.tar.gz';          ;;        amd64|x86_64)          ESUM='9cdac54bbfc7d794ed378c88eb0e77c275e1a1548b9ee82862e46ff2e37d4ef4';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_x64_linux_17.0.20.15.tar.gz';          ;;        s390x)          ESUM='6dcd5ff294bdc5b13acc053b16473c6c53c45d17eb9318bff2cd074670b652b9';          BINARY_URL='https://github.com/ibmruntimes/semeru17-binaries/releases/download/jdk-17.0.20.15/ibm-semeru-open-jre_s390x_linux_17.0.20.15.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Sat, 17 Oct 2026 00:29:11 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 00:29:11 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Sat, 17 Oct 2026 00:30:18 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Sat, 17 Oct 2026 01:33:14 GMT
USER root
# Sat, 17 Oct 2026 01:33:14 GMT
ARG LIBERTY_VERSION=26.0.0.10-beta
# Sat, 17 Oct 2026 01:33:14 GMT
ARG LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c
# Sat, 17 Oct 2026 01:33:14 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip
# Sat, 17 Oct 2026 01:33:14 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Sat, 17 Oct 2026 01:33:14 GMT
ARG OPENJ9_SCC=true
# Sat, 17 Oct 2026 01:33:14 GMT
ARG VERBOSE=false
# Sat, 17 Oct 2026 01:33:14 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty beta runtime with IBM Semeru Runtime Open Edition OpenJDK 17 with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty Beta org.opencontainers.image.version=26.0.0.10-beta liberty.version=26.0.0.10-beta io.openliberty.version=26.0.0.10-beta
# Sat, 17 Oct 2026 01:33:14 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Fri, 23 Oct 2026 18:51:37 GMT
COPY helpers /opt/ol/helpers # buildkit
# Fri, 23 Oct 2026 18:51:37 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Fri, 23 Oct 2026 18:51:40 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Fri, 23 Oct 2026 18:52:19 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Fri, 23 Oct 2026 18:52:19 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Fri, 23 Oct 2026 18:52:25 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 23 Oct 2026 18:52:29 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 23 Oct 2026 18:53:31 GMT
# ARGS: LIBERTY_VERSION=26.0.0.10-beta LIBERTY_SHA=f0429c01dd56f8ee1eb2a84095de7697ae9e1a0c LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/beta/openliberty-runtime/26.0.0.10-beta/openliberty-runtime-26.0.0.10-beta.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Fri, 23 Oct 2026 18:53:31 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Fri, 23 Oct 2026 18:53:31 GMT
USER 1001
# Fri, 23 Oct 2026 18:53:31 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 23 Oct 2026 18:53:31 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Fri, 23 Oct 2026 18:53:31 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:065d1f6c380ca54736c8a4f70bc4b730e9eb82685c699b9c66d38d0136763b43`  
		Last Modified: Fri, 02 Oct 2026 08:36:52 GMT  
		Size: 29.9 MB (29946330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b61ee78a5f1205a52f47967f11a7e05d0308eb43c246b4793302a80c42b6d3`  
		Last Modified: Sat, 17 Oct 2026 00:28:49 GMT  
		Size: 13.1 MB (13096038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e681c1942fb24e415cbdf0b4ca4f8e6247f910893ccce9e57236a5fd92e7226`  
		Last Modified: Sat, 17 Oct 2026 00:30:43 GMT  
		Size: 58.4 MB (58400210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2194515642746aaf946ea6860aa843fb10ccb362e1f5afafe8ff722afdb0fe06`  
		Last Modified: Sat, 17 Oct 2026 00:30:41 GMT  
		Size: 5.2 MB (5218978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:383071d91504675199bbfc691e51ca0142b9dc85edc2d63f7a8b341e1cc71732`  
		Last Modified: Sat, 17 Oct 2026 01:34:32 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03e22b88161305c33c636d202925fc519b8816aa0c72e62c9a472462b35076d`  
		Last Modified: Fri, 23 Oct 2026 18:55:51 GMT  
		Size: 12.8 KB (12780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1c50af51bab932ca9fff11ede12299ac7a9a324990acff90c13faf86780a1f0`  
		Last Modified: Fri, 23 Oct 2026 18:55:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadf120d0b6a68aa8338e860fe81519df37c97a9bbcf04449a21f250664eda83`  
		Last Modified: Fri, 23 Oct 2026 18:55:51 GMT  
		Size: 33.1 KB (33111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76b3a39055c35396e3764892f2202d8633c863b413e75011fbbbb38347c91f5a`  
		Last Modified: Fri, 23 Oct 2026 18:56:08 GMT  
		Size: 371.0 MB (370993673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a0c8079196e6bb6f74f94770b8b7eeb8acffd518c685d25d7c0fba9761ec38`  
		Last Modified: Fri, 23 Oct 2026 18:55:53 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43796c06183e06025c7b9387aca1be3b11298b67e9080d80b678f6ea2e7e7889`  
		Last Modified: Fri, 23 Oct 2026 18:55:53 GMT  
		Size: 14.2 KB (14249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0e160092f70b08fcb1e386900bc5d52766dd5ce57a44cf551c98042c5879e87`  
		Last Modified: Fri, 23 Oct 2026 18:55:54 GMT  
		Size: 15.0 MB (15020290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:beta-java17` - unknown; unknown

```console
$ docker pull open-liberty@sha256:fe8ba8cd665ef054f0def39fd31b6ea942c22c29aa353be2109d0e496f06d726
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e15683c27632552da5e998c0a0d09871c161be595ba7be9e7c142532bfce6cd`

```dockerfile
```

-	Layers:
	-	`sha256:10c2c5fe33c1d6e7f65ee131aedf1ce0ada85247c077e4047fc66f1684868e1a`  
		Last Modified: Fri, 23 Oct 2026 18:55:52 GMT  
		Size: 5.2 MB (5211515 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70f81c2a029f8139c75617350eac442b24b03999665cd3cf6725408f1f6bcb82`  
		Last Modified: Fri, 23 Oct 2026 18:55:51 GMT  
		Size: 39.4 KB (39397 bytes)  
		MIME: application/vnd.in-toto+json
