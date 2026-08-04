## `open-liberty:kernel-slim-java8-openj9`

```console
$ docker pull open-liberty@sha256:25596489cc0e70a97fcf03c6df0a8018da4d90946b057f8626973bfb18911f60
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

### `open-liberty:kernel-slim-java8-openj9` - linux; amd64

```console
$ docker pull open-liberty@sha256:a66da0e8b2d124e18dd9414f432f5e273844dfce0659ea07d527509df47ca083
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **121.5 MB (121455430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d107d5ca8ec24e6a8f42989320bfe9e61fb9dd3e2cc1ccc391f90077306622b`
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
# Tue, 04 Aug 2026 02:27:43 GMT
USER root
# Tue, 04 Aug 2026 02:27:43 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 02:27:43 GMT
ARG LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d
# Tue, 04 Aug 2026 02:27:43 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip
# Tue, 04 Aug 2026 02:27:43 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:27:43 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:27:43 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:27:43 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 02:27:43 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:27:43 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:27:43 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:27:43 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:27:53 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:27:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:27:53 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:27:53 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:27:57 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:27:57 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:27:57 GMT
USER 1001
# Tue, 04 Aug 2026 02:27:57 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:27:57 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:27:57 GMT
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
	-	`sha256:b51dfb17f0a9380460c8546221f3a7b13d0649ebdf1a1bb6ee675f222e8dda11`  
		Last Modified: Tue, 04 Aug 2026 02:28:05 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6f9a6be3b2eec1a47cb180272c241e20486fbbc73fc5797f12e72e814fba57d`  
		Last Modified: Tue, 04 Aug 2026 02:28:05 GMT  
		Size: 11.9 KB (11890 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcd90b4e2a06e153efa2074eb82dd1026ceac181f22b6d8187ca918ba64b0121`  
		Last Modified: Tue, 04 Aug 2026 02:28:05 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad77226539c3db2d2a40b733c4ba0f4a7be71d0d64ae7867f468c66ddc997a4a`  
		Last Modified: Tue, 04 Aug 2026 02:28:05 GMT  
		Size: 31.7 KB (31748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b22baf5556c9cd5c22bf8d975aa5e34e228d6b7ab77e76d50915a2766f9081d`  
		Last Modified: Tue, 04 Aug 2026 02:28:07 GMT  
		Size: 15.1 MB (15084836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2574f2a3f30f18c596d35193f29e0b9fa7a3bcd6a4e0e0d603012ca18cd0c8`  
		Last Modified: Tue, 04 Aug 2026 02:28:06 GMT  
		Size: 736.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0e1ce6c2839d066621c26f36042036ff0329b3fd6aac3ae1a484b3be243f1a3`  
		Last Modified: Tue, 04 Aug 2026 02:28:06 GMT  
		Size: 13.0 KB (12988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33b1dd4678f1fa6910f11b20d0fb702dac3db1a838e9e74b648d834dc868163b`  
		Last Modified: Tue, 04 Aug 2026 02:28:06 GMT  
		Size: 2.7 MB (2697160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim-java8-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:ba172e7ba8345d538ecd8634757a372a440cff1f6675fab233552271c5914c5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee1c19d03440f74e727ade5f0b134b20520e7612f6a4e541a69da2deacbc4e72`

```dockerfile
```

-	Layers:
	-	`sha256:a74037e03d072ff0a3a0addc035250f57e0936c5308bcdefce167b406c5973ef`  
		Last Modified: Tue, 04 Aug 2026 02:28:05 GMT  
		Size: 3.3 MB (3318156 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ab916aac92c793adf412167541240d21ae54d9ce31463ed6779cec8017df65d2`  
		Last Modified: Tue, 04 Aug 2026 02:28:05 GMT  
		Size: 39.3 KB (39332 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim-java8-openj9` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:6fce3c6b77598f84e40ec79f21ad6d0b219adaa38c17781560842a2fd1cd1579
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.8 MB (117817054 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd466e5136086b4a736b5999eb84646397cbc160e34b0b2b620c92579c3c6e7a`
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
# Tue, 04 Aug 2026 02:28:04 GMT
USER root
# Tue, 04 Aug 2026 02:28:04 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 02:28:04 GMT
ARG LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d
# Tue, 04 Aug 2026 02:28:04 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip
# Tue, 04 Aug 2026 02:28:04 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:28:04 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:28:04 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:28:04 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 02:28:04 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:28:04 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:28:04 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:28:04 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:28:17 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:28:17 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:28:17 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:28:17 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:28:21 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:28:21 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:28:21 GMT
USER 1001
# Tue, 04 Aug 2026 02:28:21 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:28:21 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:28:21 GMT
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
	-	`sha256:564dbec68fe365393af3aa4a10b40b43a7393d72c113dc49bd1e0b706c3112cd`  
		Last Modified: Tue, 04 Aug 2026 02:28:30 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578d02ac5e68c81eacc7ba987af27544f8ce996f12eef43c97be37cb25ffb865`  
		Last Modified: Tue, 04 Aug 2026 02:28:30 GMT  
		Size: 11.9 KB (11887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebebcf5a177c885ac8daf487d07371012bc6e9139422417540c33f40ef4d7738`  
		Last Modified: Tue, 04 Aug 2026 02:28:30 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3444182352b3cc96b9fee51c0ffec8e2053b1a2691c2702aa918146f101e448d`  
		Last Modified: Tue, 04 Aug 2026 02:28:30 GMT  
		Size: 42.3 KB (42323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6eebb517261a4b46925a7d9761aadb5948f02339e9cfc3769e569f439717ff4`  
		Last Modified: Tue, 04 Aug 2026 02:28:31 GMT  
		Size: 15.1 MB (15084822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f176de098e2dfc4916ea4e2c616b5abc8922d74bda64a1dbdb96a1bd35e3fc1`  
		Last Modified: Tue, 04 Aug 2026 02:28:31 GMT  
		Size: 737.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f6dd1c9dd559bab3ef6a17747466962961979d260dee9ccdee421c38e34f60`  
		Last Modified: Tue, 04 Aug 2026 02:28:31 GMT  
		Size: 13.0 KB (12994 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f8928ae8325489667202ab0fb5861a07f58985fe278b0f95bb1a8df96b2093`  
		Last Modified: Tue, 04 Aug 2026 02:28:32 GMT  
		Size: 2.8 MB (2760931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim-java8-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:57970cc50bbcef32a59c7e6681ab86e406f21d7334868f9d1510413e604dfc92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aac2f5c123d77cfd5b38284b0cd5236d4b3f0ce2fcc129cc67cbff0ef7005c80`

```dockerfile
```

-	Layers:
	-	`sha256:56cb734f896f3938657833fd7b67e4bbfe18f42a7c54b0d63ae83e342eb7518b`  
		Last Modified: Tue, 04 Aug 2026 02:28:30 GMT  
		Size: 3.3 MB (3318757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f4478cb124c2da1bc92492c6202e3a5696a12a60c3c98c4e36873bb98a01545c`  
		Last Modified: Tue, 04 Aug 2026 02:28:30 GMT  
		Size: 39.5 KB (39471 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim-java8-openj9` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:03287fee615cbe2b3f99a47830edb2ff0cebed2a948f76165fb321338e20807c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **128.2 MB (128159777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3384f6e626ffe007a51f3f9e4fb21096f3481c705599e1648fc6592c364ee45e`
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
ARG LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d
# Tue, 04 Aug 2026 03:35:08 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip
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
# Tue, 04 Aug 2026 03:38:30 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 03:38:30 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 03:38:31 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 03:38:43 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 03:38:43 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 03:38:43 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 03:38:44 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 03:38:52 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 03:38:52 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 03:38:52 GMT
USER 1001
# Tue, 04 Aug 2026 03:38:52 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 03:38:52 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 03:38:52 GMT
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
	-	`sha256:cc43db3ccc65034d6d9a4c2514885f627c54b0b77b03acec7ab42809f0e24801`  
		Last Modified: Tue, 04 Aug 2026 03:39:15 GMT  
		Size: 11.9 KB (11889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:753efebb3a45c006b33960a810f33140b4bcccff67c859b6bd52720c697cac4e`  
		Last Modified: Tue, 04 Aug 2026 03:39:15 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6601ae71ebdf1320ef4c848f233b4cea9e84c956416103fe069a81176adf0e4`  
		Last Modified: Tue, 04 Aug 2026 03:39:15 GMT  
		Size: 36.5 KB (36496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e4dad510d6cbf8d84331b61de260ba581d595ce52cf94ad4da518197d1166d`  
		Last Modified: Tue, 04 Aug 2026 03:39:16 GMT  
		Size: 15.1 MB (15084956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7344a97eaa78d3d76d350334765fc81526786057f80e21530f064360d67b7fa3`  
		Last Modified: Tue, 04 Aug 2026 03:39:16 GMT  
		Size: 740.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2cf31c0d402b49191fcb334156704ed6bb5349468a4e45b256c170d70bab89`  
		Last Modified: Tue, 04 Aug 2026 03:39:16 GMT  
		Size: 13.0 KB (13015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e676a159965f8667cc6db325ced9c8d51687456fb15f07fcdd566c242d8a9a2`  
		Last Modified: Tue, 04 Aug 2026 03:39:17 GMT  
		Size: 2.6 MB (2627580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim-java8-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:4ad5951145704a99cd5c69098c8647e618f429899a2aa64b5a7c3ab7a7b8a5b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3362326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25395432a55bfedb9c55fd45689d11accd4131cbd64215b3341e0fb7ddd270ed`

```dockerfile
```

-	Layers:
	-	`sha256:1ae8d193db058f608bc3f8bb83aed24ba7ac07d20a23d14621ce3f8f2f7b78db`  
		Last Modified: Tue, 04 Aug 2026 03:39:15 GMT  
		Size: 3.3 MB (3322954 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8762eed43c62a6aae97009b6a94165ed335a8b9071254af28e1a737ef27bb8e6`  
		Last Modified: Tue, 04 Aug 2026 03:39:15 GMT  
		Size: 39.4 KB (39372 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim-java8-openj9` - linux; s390x

```console
$ docker pull open-liberty@sha256:d76c27f00ee748574782d1f58f09e7ab3de1a6ed63b212473a25b4aa4d59d8fc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (123047683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5da26fe50430206af33f718b3f0c6d72eaf3c96262f8bc57d107375ddda79aa0`
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
# Tue, 04 Aug 2026 02:25:40 GMT
USER root
# Tue, 04 Aug 2026 02:25:40 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Tue, 04 Aug 2026 02:25:40 GMT
ARG LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d
# Tue, 04 Aug 2026 02:25:40 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip
# Tue, 04 Aug 2026 02:25:40 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Tue, 04 Aug 2026 02:25:40 GMT
ARG OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:25:40 GMT
ARG VERBOSE=false
# Tue, 04 Aug 2026 02:25:40 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.7 liberty.version=26.0.0.7 io.openliberty.version=26.0.0.7
# Tue, 04 Aug 2026 02:25:40 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 04 Aug 2026 02:25:40 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 04 Aug 2026 02:25:40 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 04 Aug 2026 02:25:41 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 04 Aug 2026 02:25:48 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 04 Aug 2026 02:25:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 04 Aug 2026 02:25:48 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 04 Aug 2026 02:25:48 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 04 Aug 2026 02:25:54 GMT
# ARGS: LIBERTY_VERSION=26.0.0.7 LIBERTY_SHA=489fdcf422edeabf1ebd0041586d4cc303becf0d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.7/openliberty-kernel-26.0.0.7.zip LIBERTY_BUILD_LABEL=cl260720260702-0043 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 04 Aug 2026 02:25:54 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 04 Aug 2026 02:25:54 GMT
USER 1001
# Tue, 04 Aug 2026 02:25:54 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 04 Aug 2026 02:25:54 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 04 Aug 2026 02:25:54 GMT
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
	-	`sha256:29993b124df9ef5810aaa4ac1b266eef9c6934507179027b920ccdd172655ad5`  
		Last Modified: Tue, 04 Aug 2026 02:26:10 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eadb9fe15000efef7729874e652d2c95446e33077c2262664960f9f793578a88`  
		Last Modified: Tue, 04 Aug 2026 02:26:10 GMT  
		Size: 11.9 KB (11885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8ed7738719470b087c6fd099d69a2acd614ccf5a1afec7bc793a00fe551fe3`  
		Last Modified: Tue, 04 Aug 2026 02:26:10 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:777995584b9d67a67b20657d54582ddd378eac1192d5c7cc4e09a44cbc5a57eb`  
		Last Modified: Tue, 04 Aug 2026 02:26:09 GMT  
		Size: 33.1 KB (33111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aa2dd3b19f7589bf5915a453e4b6e3aa465a8a9f22d4deed61d3f46cec46b87`  
		Last Modified: Tue, 04 Aug 2026 02:26:11 GMT  
		Size: 15.1 MB (15084462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7808e9fe2cc5447f4069cd1fad6d56d973cd5e719da0f829c7cbda6676686791`  
		Last Modified: Tue, 04 Aug 2026 02:26:11 GMT  
		Size: 735.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae52459920f25b03aecdf29d52dc7d5bdff500402f0b97d59abba19bcd88774a`  
		Last Modified: Tue, 04 Aug 2026 02:26:11 GMT  
		Size: 13.0 KB (12990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65662574cc32df9ff18b7a2fcf0daf1a26c093843631e47cfae2f6e0575bfb6a`  
		Last Modified: Tue, 04 Aug 2026 02:26:11 GMT  
		Size: 2.9 MB (2878726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim-java8-openj9` - unknown; unknown

```console
$ docker pull open-liberty@sha256:131a289513ca34f5d8087a6ef2b185b1ed0b44ce4c933f58a643d07bbb5b54a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b8e3fdc108eb337d66b1f3438f3df3142d80707bc728705ce03d27c2eb4f1aa`

```dockerfile
```

-	Layers:
	-	`sha256:74998887049e2a3bdaf9123bf83517664eff1cf3cdb65f87f89aa6991d876b79`  
		Last Modified: Tue, 04 Aug 2026 02:26:10 GMT  
		Size: 3.3 MB (3319779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:48bc50635e739fda8f67ff7fc6e9a2866321e6121cdedf100870544b3a58567c`  
		Last Modified: Tue, 04 Aug 2026 02:26:10 GMT  
		Size: 39.3 KB (39332 bytes)  
		MIME: application/vnd.in-toto+json
