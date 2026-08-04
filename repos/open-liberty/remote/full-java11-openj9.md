## `open-liberty:full-java11-openj9`

```console
$ docker pull open-liberty@sha256:108499cc7494f5224530803305c2a818a66dd3f03a5e72a888b57be78ee88f71
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
$ docker pull open-liberty@sha256:d96d9dd5004e0776585435747509e7f8a12f4a041bfcf6fb33293bfe294218eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.2 MB (485169238 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e316d71aa0b0d5ddde7e22831c3e1a6d4d414f5b9b1f4284919b36b9389f102`
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
# Tue, 04 Aug 2026 01:18:02 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:18:02 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:18:02 GMT
ENV JAVA_VERSION=11.0.32.0
# Tue, 04 Aug 2026 01:34:41 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='40b6f31ea010ea8367f10e0da35811fa29be71f4ce52be99186ff23f5804fe71';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_aarch64_linux_11.0.32.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f8be2c88024f15b17f382c5d08d5a85e0155717b2d8698d429f5ebe33b09155f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_ppc64le_linux_11.0.32.0.tar.gz';          ;;        amd64|x86_64)          ESUM='2aa0aad217a1816630df86b4a74eff0ab3a9f2a57643ab1f1718240bf9384bb1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_x64_linux_11.0.32.0.tar.gz';          ;;        s390x)          ESUM='235198518725ded38b30e05559d756a2f02305ca7d84dd87608c265c8b639669';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_s390x_linux_11.0.32.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:34:41 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:34:41 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:35:44 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 02:28:24 GMT
USER root
# Tue, 04 Aug 2026 02:28:24 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 02:28:24 GMT
ARG LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11
# Tue, 04 Aug 2026 02:28:24 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip
# Tue, 04 Aug 2026 02:28:24 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:28:24 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:28:24 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:28:24 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 02:28:24 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:28:24 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:28:24 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:28:24 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:28:38 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:28:38 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:28:38 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:28:38 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:28:53 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:28:53 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:28:53 GMT
USER 1001
# Tue, 04 Aug 2026 02:28:53 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:28:53 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:28:53 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:966c395d29cb24a3faf7e04f32878fe5778819d4132daee4f47e2aaf7b9af924`  
		Last Modified: Fri, 31 Jul 2026 22:22:22 GMT  
		Size: 29.8 MB (29751109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43f8c3f522ce3f6acfb05595940ebcc9bc0c87ac25d3f0226ac21f493905f822`  
		Last Modified: Tue, 04 Aug 2026 01:19:24 GMT  
		Size: 15.2 MB (15172435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23254b02ea0fa89a85285c0a7b73dfcaae42684f5e7b409070c6909103effcf`  
		Last Modified: Tue, 04 Aug 2026 01:35:58 GMT  
		Size: 56.4 MB (56366684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d4736e6df289ffdc438366b119fd13984cc7053c99994c0472696f5d77079e3`  
		Last Modified: Tue, 04 Aug 2026 01:35:56 GMT  
		Size: 4.5 MB (4490227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03758fd7278c56b41fe408bd8b01d6f225e20427cecc89dee74e4e9d9b91a66a`  
		Last Modified: Tue, 04 Aug 2026 02:29:15 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cd90f3b7d9da7d8ccab522b67ecc50d91ba8db153f20ef75b5f8ce4ca78478`  
		Last Modified: Tue, 04 Aug 2026 02:29:15 GMT  
		Size: 12.3 KB (12349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d2eecb6cc2db2af3e85136aa3a0eba4b153c0f932cb812082a26c9685fa244`  
		Last Modified: Tue, 04 Aug 2026 02:29:15 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c127ae58c9fbefdbdda4c69559eb0d410db16b0daf492d0a4f9a705b5ebe3583`  
		Last Modified: Tue, 04 Aug 2026 02:29:15 GMT  
		Size: 31.7 KB (31747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a37244a113f45e4167d6909aa6c0ab6c284b320f56c7231dfe5ae9a2da6ea5`  
		Last Modified: Tue, 04 Aug 2026 02:29:23 GMT  
		Size: 366.1 MB (366052399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527eddfd1888d911d36c8af0f78d54ca59c7a72db42766b699d7237aaaf6ac3c`  
		Last Modified: Tue, 04 Aug 2026 02:29:16 GMT  
		Size: 1.1 KB (1055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb014ea7bbbc759314b2975a3f2619e9cfdb0001bc571dc35b0d629d0c000494`  
		Last Modified: Tue, 04 Aug 2026 02:29:16 GMT  
		Size: 13.8 KB (13785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e298171c17041eb330df1dd2b2fd4ac99b4fef86778dff3f36c4af8544b89b6`  
		Last Modified: Tue, 04 Aug 2026 02:29:17 GMT  
		Size: 13.3 MB (13276155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:6681c89d7c307c9d230e7e796ca61dfa90eae0b04fcc36c7230f1197d02d302e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5234636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:021a63665ebd91c484d663fda87d75f35eb817f1f3beb13acb58a3d56f11fbcd`

```dockerfile
```

-	Layers:
	-	`sha256:9965155b62c3960d16a449d336bf1a2b91851520c6ae56d8b5d8c10a48ecdbbc`  
		Last Modified: Tue, 04 Aug 2026 02:29:15 GMT  
		Size: 5.2 MB (5195377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce36a0c0a72744de32f6c2285b52f4dd8cf7d0f139911752f12ab2029702ef53`  
		Last Modified: Tue, 04 Aug 2026 02:29:15 GMT  
		Size: 39.3 KB (39259 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java11-openj9` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:c0743ad5c153e3e7b54931e6ebd39b25518da1dd2660283887f48186d941d1df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **479.8 MB (479833044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df1b6b17dae87aeb4c26320c9f5dc74b5f186d3c4281ab658023ccacba17c8f1`
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
# Tue, 04 Aug 2026 01:35:06 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:35:06 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:35:06 GMT
ENV JAVA_VERSION=11.0.32.0
# Tue, 04 Aug 2026 01:35:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='40b6f31ea010ea8367f10e0da35811fa29be71f4ce52be99186ff23f5804fe71';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_aarch64_linux_11.0.32.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f8be2c88024f15b17f382c5d08d5a85e0155717b2d8698d429f5ebe33b09155f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_ppc64le_linux_11.0.32.0.tar.gz';          ;;        amd64|x86_64)          ESUM='2aa0aad217a1816630df86b4a74eff0ab3a9f2a57643ab1f1718240bf9384bb1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_x64_linux_11.0.32.0.tar.gz';          ;;        s390x)          ESUM='235198518725ded38b30e05559d756a2f02305ca7d84dd87608c265c8b639669';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_s390x_linux_11.0.32.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:35:08 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:35:08 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:36:11 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 02:28:46 GMT
USER root
# Tue, 04 Aug 2026 02:28:46 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 02:28:46 GMT
ARG LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11
# Tue, 04 Aug 2026 02:28:46 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip
# Tue, 04 Aug 2026 02:28:46 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:28:46 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:28:46 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:28:46 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 02:28:46 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:28:46 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:28:46 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:28:46 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:29:03 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:29:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:29:03 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:29:03 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:29:23 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:29:23 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:29:23 GMT
USER 1001
# Tue, 04 Aug 2026 02:29:23 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:29:23 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:29:23 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:d23996caa910b8e5029375ee7c7ec02ef8bae3d85194897323e7145071299ac9`  
		Last Modified: Fri, 31 Jul 2026 22:22:28 GMT  
		Size: 28.9 MB (28886818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2eaa024e1530f4899312b9ec0996fbe17a4ff1e133ef85e9fa45829ac866bfb`  
		Last Modified: Tue, 04 Aug 2026 01:36:24 GMT  
		Size: 12.8 MB (12804001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41a8f9cf3ce534b5528289eb9dfb0aa0dd67be0934ada864af5ff45c828f2e07`  
		Last Modified: Tue, 04 Aug 2026 01:36:25 GMT  
		Size: 54.6 MB (54576146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b32ce2b3eba3e025922698254de98a338528aa847042d6108bfb0de1aabe6fe`  
		Last Modified: Tue, 04 Aug 2026 01:36:23 GMT  
		Size: 4.3 MB (4315282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:696a25bf32bbab1b0c5abae416fb6ee66f0142dd074338b91797fdba4d159a6a`  
		Last Modified: Tue, 04 Aug 2026 02:29:49 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b8399790ec0fd511c7a06587a402593e6a0d57c23102a04e46d57e27e41224`  
		Last Modified: Tue, 04 Aug 2026 02:29:49 GMT  
		Size: 12.3 KB (12347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:924575f716d5db81116a8ac22928f5320cfdfb360263be4f559ace3f70d97871`  
		Last Modified: Tue, 04 Aug 2026 02:29:49 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f0a33270796700586bbf8699fb148b34846d380ccbf81c51924a86e0b743dc`  
		Last Modified: Tue, 04 Aug 2026 02:29:49 GMT  
		Size: 42.3 KB (42322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68caf7ad9ca95502e188de515349439fdc46d6326d2ac2e317b26b014a0a8485`  
		Last Modified: Tue, 04 Aug 2026 02:29:57 GMT  
		Size: 366.1 MB (366052440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99a229fbb95dc550128a76e775ea8254666be64e3a0df7f3b07c126436517b21`  
		Last Modified: Tue, 04 Aug 2026 02:29:50 GMT  
		Size: 1.1 KB (1054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d16b1f8a0fd339014ad07a0238db455a0610e12e1d4df138a13116794542c0b`  
		Last Modified: Tue, 04 Aug 2026 02:29:50 GMT  
		Size: 13.8 KB (13787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:359dacddde9bb7fc9ced0840f01ac9cf5ff07e8284114ffecd38dc8c0f60f8c7`  
		Last Modified: Tue, 04 Aug 2026 02:29:50 GMT  
		Size: 13.1 MB (13127554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:19f9d46be6cff7e79ed333274306e83a507871adc1a8a6ff2fb9f968ea7199c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5233294 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13f3cf280c3b73bc3b98f6c0f67fa5a9ba6e7f793704490dab1856de5dc84b99`

```dockerfile
```

-	Layers:
	-	`sha256:aaff7c6e12acf343ca0e2bf122e828e69addfb7459dec19e4f410d2677222a1d`  
		Last Modified: Tue, 04 Aug 2026 02:29:49 GMT  
		Size: 5.2 MB (5193907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0d1ef63b0576c125a7a7963a3407f5491cbe4b9911e5ac3fd55ec2210bf7bca`  
		Last Modified: Tue, 04 Aug 2026 02:29:49 GMT  
		Size: 39.4 KB (39387 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java11-openj9` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:def79bb5092fe9f37b019898726bf2dfad02efebe5ff1e382bb40cfcf8174e6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **490.6 MB (490590880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39f550b59671def8aed5059194a3197dbe167533f83c38977df5356ca11f2d12`
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
ENV JAVA_VERSION=11.0.32.0
# Tue, 04 Aug 2026 01:46:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='40b6f31ea010ea8367f10e0da35811fa29be71f4ce52be99186ff23f5804fe71';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_aarch64_linux_11.0.32.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f8be2c88024f15b17f382c5d08d5a85e0155717b2d8698d429f5ebe33b09155f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_ppc64le_linux_11.0.32.0.tar.gz';          ;;        amd64|x86_64)          ESUM='2aa0aad217a1816630df86b4a74eff0ab3a9f2a57643ab1f1718240bf9384bb1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_x64_linux_11.0.32.0.tar.gz';          ;;        s390x)          ESUM='235198518725ded38b30e05559d756a2f02305ca7d84dd87608c265c8b639669';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_s390x_linux_11.0.32.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:46:00 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:46:00 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:47:05 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 03:35:59 GMT
USER root
# Tue, 04 Aug 2026 03:35:59 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 03:35:59 GMT
ARG LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11
# Tue, 04 Aug 2026 03:35:59 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip
# Tue, 04 Aug 2026 03:35:59 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 03:35:59 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 03:35:59 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 03:35:59 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 03:35:59 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 03:40:59 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 03:41:00 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 03:41:01 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 03:41:21 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 03:41:21 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 03:41:22 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 03:41:22 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 03:42:01 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 03:42:01 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 03:42:01 GMT
USER 1001
# Tue, 04 Aug 2026 03:42:01 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 03:42:01 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 03:42:01 GMT
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
	-	`sha256:bb1917ae4b89a1bbab5bb2b46f9dd1bc64e09926a7295757b41f1545a35f2279`  
		Last Modified: Tue, 04 Aug 2026 01:47:31 GMT  
		Size: 58.3 MB (58329834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424070b23691764be6cd2db51b3fb2a8f697ab6d62e839f7d038e4e1845b7dc5`  
		Last Modified: Tue, 04 Aug 2026 01:47:29 GMT  
		Size: 3.5 MB (3513652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b820d7ee68b15ad619baf44808015b11c5450f28d7afc07927b171adc9034dd`  
		Last Modified: Tue, 04 Aug 2026 03:38:07 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54ef9e5e1d4ea7e32902272fd5e88a8bb9266e0a3686c98c713eae293dda4d9c`  
		Last Modified: Tue, 04 Aug 2026 03:42:53 GMT  
		Size: 12.3 KB (12349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ebff4101a418e06b6dce714cf51f5065368e6c529580d63ba50bc229fcd410d`  
		Last Modified: Tue, 04 Aug 2026 03:42:53 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8300175059976bebdc8bcd876df7ba41a1bb32d5bde399d9aca3477947c404f1`  
		Last Modified: Tue, 04 Aug 2026 03:42:53 GMT  
		Size: 36.5 KB (36496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d71da4b45f69f360d6c0990bce5a40e674bb3f5b8083599a0ab1a747fb9c94`  
		Last Modified: Tue, 04 Aug 2026 03:43:01 GMT  
		Size: 366.1 MB (366052475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81f75a716138ab8c3123219d560a70ca45eef003f289efbf6dc9fc3ba894fc12`  
		Last Modified: Tue, 04 Aug 2026 03:42:54 GMT  
		Size: 1.1 KB (1057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5e858abe5bcf16e3b93d083c586173eea7ef5a3cfb6e5b1cd7615f96cfbef6`  
		Last Modified: Tue, 04 Aug 2026 03:42:54 GMT  
		Size: 13.8 KB (13792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:752a9bddb8ed408afa5758b1e4c4a1010637160d79e170d41d4f4076add63fa7`  
		Last Modified: Tue, 04 Aug 2026 03:42:55 GMT  
		Size: 11.9 MB (11942596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:f0b4b6463c067e0fd18f8ab435dc4962954018c3f64aefbc800df5b5d16635a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5239292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:42e1366b5d1cd6e082b954e32d0be8d2c102d3b21bae35107270fdd4dfeb5dff`

```dockerfile
```

-	Layers:
	-	`sha256:4fbd3fd6fb7a1c3e26f73c98622bbcd33809e600f77ba762277c23b42928d8de`  
		Last Modified: Tue, 04 Aug 2026 03:42:53 GMT  
		Size: 5.2 MB (5199999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:749c7103e86903b7c5e39e7e824d6234703a990468438a116ec95edf1cda63e0`  
		Last Modified: Tue, 04 Aug 2026 03:42:53 GMT  
		Size: 39.3 KB (39293 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:full-java11-openj9` - linux; s390x

```console
$ docker pull open-liberty@sha256:cdb98dc7a3c77745fb2d275e667608726e0f450f3220430faa0d16770bd67a51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **485.9 MB (485928520 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a57105ff56ca1eb0005050b741c68ebf9c40a88c93f6234a05671e86815485b`
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
# Tue, 04 Aug 2026 01:25:39 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 04 Aug 2026 01:25:39 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:25:39 GMT
ENV JAVA_VERSION=11.0.32.0
# Tue, 04 Aug 2026 01:42:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          ESUM='40b6f31ea010ea8367f10e0da35811fa29be71f4ce52be99186ff23f5804fe71';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_aarch64_linux_11.0.32.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='f8be2c88024f15b17f382c5d08d5a85e0155717b2d8698d429f5ebe33b09155f';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_ppc64le_linux_11.0.32.0.tar.gz';          ;;        amd64|x86_64)          ESUM='2aa0aad217a1816630df86b4a74eff0ab3a9f2a57643ab1f1718240bf9384bb1';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_x64_linux_11.0.32.0.tar.gz';          ;;        s390x)          ESUM='235198518725ded38b30e05559d756a2f02305ca7d84dd87608c265c8b639669';          BINARY_URL='https://github.com/ibmruntimes/semeru11-binaries/releases/download/jdk-11.0.32.0/ibm-semeru-open-jre_s390x_linux_11.0.32.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 04 Aug 2026 01:42:10 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 01:42:10 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 04 Aug 2026 01:43:13 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="82b15278a7bfa2685c80e07963c43246df4fd742d574b608a68f5ce67c6ffde0eff3e224cc9809925cc6bf7002a190c3bf420f50c0e4052467d3e665efc84a54";     TOMCAT_VERSION="9.0.117";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 04 Aug 2026 02:26:29 GMT
USER root
# Tue, 04 Aug 2026 02:26:29 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 02:26:29 GMT
ARG LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11
# Tue, 04 Aug 2026 02:26:29 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip
# Tue, 04 Aug 2026 02:26:29 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:26:29 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:26:29 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:26:29 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 02:26:29 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:27:11 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:27:11 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:27:11 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:27:27 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:27:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:27:27 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create --template=javaee8     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:27:28 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && mkdir -p /config/dropins     && mkdir -p /config/apps     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:27:54 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=ddc9a28e4d9e5ac6776db9e25e8f1eb95e4eda11 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-runtime/26.0.0.7/openliberty-runtime-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:27:54 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:27:54 GMT
USER 1001
# Tue, 04 Aug 2026 02:27:54 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:27:54 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:27:54 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6bb1e92e6c04f8404c596df473b847d14a4cc2ca1d4734e5353b4b54d37b3338`  
		Last Modified: Fri, 31 Jul 2026 22:22:57 GMT  
		Size: 29.9 MB (29935711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0dceb4623219c2c71a20aba308925b057577f0070f95d9344f429b205b9d3ff`  
		Last Modified: Tue, 04 Aug 2026 01:27:05 GMT  
		Size: 13.1 MB (13079223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1af17cfc6a2cee8aad38c73c9ce05eeff2e12e4f6f2c156ed2e3cb9ac9b48a6`  
		Last Modified: Tue, 04 Aug 2026 01:43:34 GMT  
		Size: 58.5 MB (58508320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e36a6d25cc1000b0ef53dba7137366c073e62c3199b06c3e73897d859d36fa1`  
		Last Modified: Tue, 04 Aug 2026 01:43:33 GMT  
		Size: 4.7 MB (4656922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5612aa211793517c9374d96495f28aa0097d1c6705560c034b5ba671ce5a714`  
		Last Modified: Tue, 04 Aug 2026 02:26:57 GMT  
		Size: 1.1 KB (1051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a25a4dd2cda95cfa914290c319c8e6a7519e026292408a51ff688e53aba718`  
		Last Modified: Tue, 04 Aug 2026 02:28:32 GMT  
		Size: 12.3 KB (12349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e107c01320cac537b96d99834073c0cb13c6b27608aae66e7cc7bb8deca9e2b1`  
		Last Modified: Tue, 04 Aug 2026 02:28:32 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605ab63fee284a144cc10d730bbdaaf7565f45c81c422dcff8ccd54d97216725`  
		Last Modified: Tue, 04 Aug 2026 02:28:32 GMT  
		Size: 33.1 KB (33112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5575f43e1dd59f16ec184da0e43d63bcf5eccae77feb7d90bb5ecc91e2f6733a`  
		Last Modified: Tue, 04 Aug 2026 02:28:38 GMT  
		Size: 366.1 MB (366052052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6604e3d78c8bb1116b825890f8105d497fa8d3ed50b7278b8d495ec50482e69e`  
		Last Modified: Tue, 04 Aug 2026 02:28:33 GMT  
		Size: 1.1 KB (1059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf11bf733903d2586272f204d663321d86fb12a22d7f17fae651fcf55cf24e4`  
		Last Modified: Tue, 04 Aug 2026 02:28:33 GMT  
		Size: 13.8 KB (13821 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b61fd2c62084916b76e6164d7a045e489170d9b5babd236942497a61743acc6`  
		Last Modified: Tue, 04 Aug 2026 02:28:34 GMT  
		Size: 13.6 MB (13634657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:full-java11-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:dcdb94a5507345788c85368d01807977c5d492825f71e08afdc5f7bac4afc676
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5235633 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:226634cac8ddb3793173357652f45f55b1c52891dc6e3fe7353c72bbc769b48f`

```dockerfile
```

-	Layers:
	-	`sha256:e607b7d476cb7c585389c7b388f0fb77cba5fcd94a9b46f1dd8f979c26908476`  
		Last Modified: Tue, 04 Aug 2026 02:28:32 GMT  
		Size: 5.2 MB (5196374 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b0fd809109364553ffc44585bfe9ba560c209dc31f740e16d02c1a864bb5852f`  
		Last Modified: Tue, 04 Aug 2026 02:28:32 GMT  
		Size: 39.3 KB (39259 bytes)  
		MIME: application/vnd.in-toto+json
