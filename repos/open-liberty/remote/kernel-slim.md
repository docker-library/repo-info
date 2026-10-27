## `open-liberty:kernel-slim`

```console
$ docker pull open-liberty@sha256:ac58bede62830ef75337ebdf0271a0c6023e84520fff6f95cd960ac4e7067468
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

### `open-liberty:kernel-slim` - linux; amd64

```console
$ docker pull open-liberty@sha256:a4a9b54158b7bbe22c15d601e04cf6103912fd6e5ee8fdbab341f2db8bac4e11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.1 MB (119146094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c306ff28d1b896a030fd3b4671d84499377caeb9db3e25119f21a40cc2acbf`
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
# Mon, 26 Oct 2026 23:16:45 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:16:45 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:16:45 GMT
ENV JAVA_VERSION=8.0.504.5
# Mon, 26 Oct 2026 23:16:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='6ba2cd9637b7494a78fbd73795838f04d139cd9f1e74aab4ee030cc515c00f3c';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_aarch64_linux_8.0.504.5.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7e482c7c0f8169e937dcebfd63e2e7906deaf333e25d6d8e4d68aaeaedafd090';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_ppc64le_linux_8.0.504.5.tar.gz';          ;;        amd64|x86_64)          ESUM='b84746bb96d9d196fdf65d0fb291f98bf527c225c3ef9dfacd79e584cf9227b1';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_x64_linux_8.0.504.5.tar.gz';          ;;        s390x)          ESUM='3648f05a9972f134839fa936d8f37dd2c1b747f440e4855241a79fb8ce6323a1';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_s390x_linux_8.0.504.5.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:16:47 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:16:47 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:17:56 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 27 Oct 2026 00:28:31 GMT
USER root
# Tue, 27 Oct 2026 00:28:31 GMT
ARG LIBERTY_VERSION=26.0.0.9
# Tue, 27 Oct 2026 00:28:31 GMT
ARG LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570
# Tue, 27 Oct 2026 00:28:31 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip
# Tue, 27 Oct 2026 00:28:31 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Tue, 27 Oct 2026 00:28:31 GMT
ARG OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:28:31 GMT
ARG VERBOSE=false
# Tue, 27 Oct 2026 00:28:31 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.9 liberty.version=26.0.0.9 io.openliberty.version=26.0.0.9
# Tue, 27 Oct 2026 00:28:31 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 27 Oct 2026 00:28:31 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 27 Oct 2026 00:28:31 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 27 Oct 2026 00:28:32 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 27 Oct 2026 00:28:40 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 27 Oct 2026 00:28:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:28:40 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 27 Oct 2026 00:28:41 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 27 Oct 2026 00:28:44 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 27 Oct 2026 00:28:44 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 27 Oct 2026 00:28:44 GMT
USER 1001
# Tue, 27 Oct 2026 00:28:44 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 27 Oct 2026 00:28:44 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 27 Oct 2026 00:28:44 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:757cf8e0b7da25ab2bfde1db4d7d8967b8ce5ba5614c10a4bc9f03f913bf5a68`  
		Last Modified: Mon, 26 Oct 2026 23:18:08 GMT  
		Size: 12.8 MB (12792216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5007642252db40a08a2ec063733732ba5c4d721fa723a21b3a894cacdb4d373`  
		Last Modified: Mon, 26 Oct 2026 23:18:05 GMT  
		Size: 54.4 MB (54445836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7371ccbcfb9e42ebbc233de96b57da0ef0746160009fbaffe7e40fad9b161d6b`  
		Last Modified: Mon, 26 Oct 2026 23:18:07 GMT  
		Size: 4.3 MB (4294640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f2bf77e1245c38d89e5aadd7a9a4d512c188a2dcc92ada1af3940a764342b5`  
		Last Modified: Tue, 27 Oct 2026 00:28:52 GMT  
		Size: 1.0 KB (1048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:998099bf771a9a51a59562452c0f4b33274ab7faf918d6fecfab07bd066a317a`  
		Last Modified: Tue, 27 Oct 2026 00:28:52 GMT  
		Size: 12.0 KB (11979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:154ab92fa4fd1dd4d08ddf28a4b2c9cef0a4801b60f4313be66fd332ebd77763`  
		Last Modified: Tue, 27 Oct 2026 00:28:52 GMT  
		Size: 239.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3218486035098475f5938f44be04a147f8f0406e489431725864a5ffc58121c`  
		Last Modified: Tue, 27 Oct 2026 00:28:52 GMT  
		Size: 31.7 KB (31746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f213040b25d5d3556b7845d96873f1019bf016fb660e06169ee25c87b1f91f3`  
		Last Modified: Tue, 27 Oct 2026 00:28:54 GMT  
		Size: 15.1 MB (15098385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873bb58b3bedbb3240218b012af555334afed2a086e91f1e59f5014b9619525a`  
		Last Modified: Tue, 27 Oct 2026 00:28:54 GMT  
		Size: 737.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9136fe34f79083013d813ba57b2bbea1d8de842471cb57b44f7365a8a7d6c3e7`  
		Last Modified: Tue, 27 Oct 2026 00:28:54 GMT  
		Size: 13.1 KB (13104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07b4aac6737b7f8234c7e33e09f8e71c36f0a6ff3d1d58dd4d41845e6efcd7c4`  
		Last Modified: Tue, 27 Oct 2026 00:28:54 GMT  
		Size: 2.7 MB (2688552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim` - unknown; unknown

```console
$ docker pull open-liberty@sha256:4f7f2ed8328161b6478f199abe9954b687d8508f2e5cb337f89d8c117d7bb45b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ae58413e521f7b53af67a4725d496f3ff6352b9b2c78ce663dedc8e7bec75e9`

```dockerfile
```

-	Layers:
	-	`sha256:2ae9d1994c47f97d29a931257ec431b42881248117d5d926e5d8552b32629011`  
		Last Modified: Tue, 27 Oct 2026 00:28:52 GMT  
		Size: 3.3 MB (3317918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:34c7af69659545d8daa77f4c49005e51e0ba4e4bd45a8828595c3e784176bacc`  
		Last Modified: Tue, 27 Oct 2026 00:28:52 GMT  
		Size: 39.7 KB (39696 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:011b75bdfecd20f88f725ec0cd05800bff846a45914c84086d3a2d4fcfa574ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.9 MB (117940287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ec8d2a36512876d2e53491471ad38266898c107858e9086f7a5ec8d9cfa929`
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
# Mon, 26 Oct 2026 23:21:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:21:44 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:21:44 GMT
ENV JAVA_VERSION=8.0.504.5
# Mon, 26 Oct 2026 23:21:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='6ba2cd9637b7494a78fbd73795838f04d139cd9f1e74aab4ee030cc515c00f3c';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_aarch64_linux_8.0.504.5.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7e482c7c0f8169e937dcebfd63e2e7906deaf333e25d6d8e4d68aaeaedafd090';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_ppc64le_linux_8.0.504.5.tar.gz';          ;;        amd64|x86_64)          ESUM='b84746bb96d9d196fdf65d0fb291f98bf527c225c3ef9dfacd79e584cf9227b1';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_x64_linux_8.0.504.5.tar.gz';          ;;        s390x)          ESUM='3648f05a9972f134839fa936d8f37dd2c1b747f440e4855241a79fb8ce6323a1';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_s390x_linux_8.0.504.5.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 26 Oct 2026 23:21:46 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 26 Oct 2026 23:21:46 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 26 Oct 2026 23:22:55 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 27 Oct 2026 00:28:09 GMT
USER root
# Tue, 27 Oct 2026 00:28:09 GMT
ARG LIBERTY_VERSION=26.0.0.9
# Tue, 27 Oct 2026 00:28:09 GMT
ARG LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570
# Tue, 27 Oct 2026 00:28:09 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip
# Tue, 27 Oct 2026 00:28:09 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Tue, 27 Oct 2026 00:28:09 GMT
ARG OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:28:09 GMT
ARG VERBOSE=false
# Tue, 27 Oct 2026 00:28:09 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.9 liberty.version=26.0.0.9 io.openliberty.version=26.0.0.9
# Tue, 27 Oct 2026 00:28:09 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 27 Oct 2026 00:28:09 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 27 Oct 2026 00:28:10 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 27 Oct 2026 00:28:10 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 27 Oct 2026 00:28:20 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 27 Oct 2026 00:28:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:28:20 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 27 Oct 2026 00:28:21 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 27 Oct 2026 00:28:24 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 27 Oct 2026 00:28:24 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 27 Oct 2026 00:28:24 GMT
USER 1001
# Tue, 27 Oct 2026 00:28:24 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 27 Oct 2026 00:28:24 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 27 Oct 2026 00:28:24 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7cf6a67b284ecfd17e39f852c4afb43e7ae4150d2f4d0d6303aa5b7ea5a6ba`  
		Last Modified: Mon, 26 Oct 2026 23:23:07 GMT  
		Size: 12.8 MB (12829930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3fbf03a34bb86a6293d3c96a05b91c5c04a9cf60203b3c93ca3fc2573fe66e0`  
		Last Modified: Mon, 26 Oct 2026 23:23:07 GMT  
		Size: 54.1 MB (54085150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef68346fef7169346b8ee39920256cbb407e6fc9f23592a3faedf6819a9fe21e`  
		Last Modified: Mon, 26 Oct 2026 23:23:06 GMT  
		Size: 4.2 MB (4150204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:192d80b9f7b604cfa7685cf7687d15dde72cd2472dfa63cf0afb44f8bbf84f13`  
		Last Modified: Tue, 27 Oct 2026 00:28:33 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510215174e8c41e1c2a586e0cd306b276304e4dec3658deda3172ed5c39cc144`  
		Last Modified: Tue, 27 Oct 2026 00:28:34 GMT  
		Size: 12.0 KB (11978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66982ec5b9dc8cc2adebae43ed98e618f59eaa9810e46b0510f5a6bc8a365cfb`  
		Last Modified: Tue, 27 Oct 2026 00:28:34 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f042c0967e8964879495ddbf78263ae0e214fddecb1f6579af81395787baf9fd`  
		Last Modified: Tue, 27 Oct 2026 00:28:33 GMT  
		Size: 42.3 KB (42322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:504de145f1fdf4e9306d199ec59d1e54faaa9b5bb345eaef187d08269430d91d`  
		Last Modified: Tue, 27 Oct 2026 00:28:35 GMT  
		Size: 15.1 MB (15098376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d23fc4039a1d443ec565cdd5907c0ab8ac218717522fc964e2600845bfccbfca`  
		Last Modified: Tue, 27 Oct 2026 00:28:35 GMT  
		Size: 736.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbc8eb15180c3af72b7142ae98b0da6220071823c9be3e57dea2a7a3542fea4`  
		Last Modified: Tue, 27 Oct 2026 00:28:35 GMT  
		Size: 13.1 KB (13107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22bf765ab8a9eb7d12009702e1fec2e6f8bc05fc2fc6a8d3de1932980d87e4e8`  
		Last Modified: Tue, 27 Oct 2026 00:28:35 GMT  
		Size: 2.8 MB (2767065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim` - unknown; unknown

```console
$ docker pull open-liberty@sha256:744311fa1185899019189e03662cb7b6cfb384ccfe90eb20b484539e83bd8244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358379 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f64d36af8c778b1cb9226fde06af0c578eacb8ff5f53c124b35b1e5578601a`

```dockerfile
```

-	Layers:
	-	`sha256:07363f86e3dc73510c57d1ea738047c9f411d5f3d14610496e518b79021fc6fa`  
		Last Modified: Tue, 27 Oct 2026 00:28:34 GMT  
		Size: 3.3 MB (3318531 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffba8ed2d3089e2eb1b4e61f04a2b51bca1eed51e28446bd06d88d23d5ce4f15`  
		Last Modified: Tue, 27 Oct 2026 00:28:33 GMT  
		Size: 39.8 KB (39848 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:8d7f22c8d670bef473eb497ee61bd8f2de6a470648bb418c8d7fa226c382b29d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.7 MB (125735045 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8abfc0c57f236ba888d885b6d34f27ad780833693b02a2e269a984a439a469`
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
# Tue, 27 Oct 2026 19:07:12 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Tue, 27 Oct 2026 19:07:12 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 19:07:12 GMT
ENV JAVA_VERSION=8.0.504.5
# Tue, 27 Oct 2026 19:07:29 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='6ba2cd9637b7494a78fbd73795838f04d139cd9f1e74aab4ee030cc515c00f3c';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_aarch64_linux_8.0.504.5.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7e482c7c0f8169e937dcebfd63e2e7906deaf333e25d6d8e4d68aaeaedafd090';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_ppc64le_linux_8.0.504.5.tar.gz';          ;;        amd64|x86_64)          ESUM='b84746bb96d9d196fdf65d0fb291f98bf527c225c3ef9dfacd79e584cf9227b1';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_x64_linux_8.0.504.5.tar.gz';          ;;        s390x)          ESUM='3648f05a9972f134839fa936d8f37dd2c1b747f440e4855241a79fb8ce6323a1';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_s390x_linux_8.0.504.5.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 27 Oct 2026 19:07:29 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 19:07:29 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 27 Oct 2026 19:09:25 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 27 Oct 2026 20:37:58 GMT
USER root
# Tue, 27 Oct 2026 20:37:58 GMT
ARG LIBERTY_VERSION=26.0.0.9
# Tue, 27 Oct 2026 20:37:58 GMT
ARG LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570
# Tue, 27 Oct 2026 20:37:58 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip
# Tue, 27 Oct 2026 20:37:58 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Tue, 27 Oct 2026 20:37:58 GMT
ARG OPENJ9_SCC=true
# Tue, 27 Oct 2026 20:37:58 GMT
ARG VERBOSE=false
# Tue, 27 Oct 2026 20:37:58 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.9 liberty.version=26.0.0.9 io.openliberty.version=26.0.0.9
# Tue, 27 Oct 2026 20:37:58 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 27 Oct 2026 20:38:05 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 27 Oct 2026 20:38:05 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 27 Oct 2026 20:38:05 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 27 Oct 2026 20:38:33 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 27 Oct 2026 20:38:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 27 Oct 2026 20:38:36 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 27 Oct 2026 20:38:42 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 27 Oct 2026 20:38:50 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 27 Oct 2026 20:38:50 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 27 Oct 2026 20:38:50 GMT
USER 1001
# Tue, 27 Oct 2026 20:38:50 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 27 Oct 2026 20:38:50 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 27 Oct 2026 20:38:50 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:400d78a2b842f2bd938ae79326cc66475d11b949ac6b2acbfbc7709090964eb8`  
		Last Modified: Sun, 25 Oct 2026 14:50:25 GMT  
		Size: 34.4 MB (34378308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff521d53891f341c30e3f74c5f9114b94bf18b182129459638d3daf45bbccccd`  
		Last Modified: Tue, 27 Oct 2026 19:09:45 GMT  
		Size: 13.8 MB (13764948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aecf8255af50a3abb84b328caad66df9bdad28a9a4717b894566c4d6a012d0e`  
		Last Modified: Tue, 27 Oct 2026 19:09:57 GMT  
		Size: 56.2 MB (56161626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5e3bf4898003a3c4fbdaeeed827ef5bd0b3e87b87e97e18768db15b00ddacca`  
		Last Modified: Tue, 27 Oct 2026 19:09:55 GMT  
		Size: 3.6 MB (3631612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cea0846b0bb4a1d7b01ff2f066e8a8a35d80f660f144debea77af4d8d9f9d40f`  
		Last Modified: Tue, 27 Oct 2026 20:39:26 GMT  
		Size: 1.1 KB (1053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5578f5b9bbf1ae5d18945124079dd73a72c841cfc6b89ee78f84a7c02152505`  
		Last Modified: Tue, 27 Oct 2026 20:39:26 GMT  
		Size: 12.0 KB (11983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cde70a91d8049b739a8ed1458de94ed762fc4f1e0da117a585772b7602bf093`  
		Last Modified: Tue, 27 Oct 2026 20:39:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe98a6f6bd6718e9d4f0ab444addff21027d2ea0b791d058e189faca26b12b04`  
		Last Modified: Tue, 27 Oct 2026 20:39:26 GMT  
		Size: 36.5 KB (36497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79797ae221f45952ed6931a74a4fe4bbf7140eb41f954c86f72eb93af0879cfd`  
		Last Modified: Tue, 27 Oct 2026 20:39:27 GMT  
		Size: 15.1 MB (15098523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc9d297adf1276ae7f17657e7bb01b5776e71cea8b469d14d8c61c58f86bf60`  
		Last Modified: Tue, 27 Oct 2026 20:39:27 GMT  
		Size: 742.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c65bafbbd8b4730e7c4b058152d8515e0d9c815cb565889101a72f8c5053a83`  
		Last Modified: Tue, 27 Oct 2026 20:39:27 GMT  
		Size: 13.1 KB (13121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6c99b30321b3ac68facfa407fdd8bb153e54b23ef1af7e38036e5a248d5bb1`  
		Last Modified: Tue, 27 Oct 2026 20:39:27 GMT  
		Size: 2.6 MB (2636385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim` - unknown; unknown

```console
$ docker pull open-liberty@sha256:6dd8cfe8768bf899d0b63389d22402e7dd4a2511b3f83840fa34d6ede2a43965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3361660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e55bd7c5a7037c4df581d477a62781094dbb643f54bc87df4ed3c6c2711ae89`

```dockerfile
```

-	Layers:
	-	`sha256:89cffd757791b65b03c68c28f40888c8e4aec00be68752db3556ff97cd7e072e`  
		Last Modified: Tue, 27 Oct 2026 20:39:26 GMT  
		Size: 3.3 MB (3322722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fa92c176018dbfbf167db83fa5114d29bb39f6e0839c051f1e0312008e5219d`  
		Last Modified: Tue, 27 Oct 2026 20:39:26 GMT  
		Size: 38.9 KB (38938 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim` - linux; s390x

```console
$ docker pull open-liberty@sha256:8f13c1aca9dc4ac5610c22495e34f6705e880cd299b1c2748f5eb4e868d04cde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.0 MB (122998261 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855ce3492a8a881bdb93aa52dc3135b1af5a9d5417a9bf1b637e026aa7f37fd1`
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
# Mon, 26 Oct 2026 23:49:44 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 26 Oct 2026 23:49:44 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:49:44 GMT
ENV JAVA_VERSION=8.0.504.5
# Tue, 27 Oct 2026 04:19:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='6ba2cd9637b7494a78fbd73795838f04d139cd9f1e74aab4ee030cc515c00f3c';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_aarch64_linux_8.0.504.5.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='7e482c7c0f8169e937dcebfd63e2e7906deaf333e25d6d8e4d68aaeaedafd090';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_ppc64le_linux_8.0.504.5.tar.gz';          ;;        amd64|x86_64)          ESUM='b84746bb96d9d196fdf65d0fb291f98bf527c225c3ef9dfacd79e584cf9227b1';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_x64_linux_8.0.504.5.tar.gz';          ;;        s390x)          ESUM='3648f05a9972f134839fa936d8f37dd2c1b747f440e4855241a79fb8ce6323a1';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.504.5/ibm-semeru-open-jre_s390x_linux_8.0.504.5.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 27 Oct 2026 04:19:33 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 04:19:33 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 27 Oct 2026 04:20:38 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="16494dd4745f808d3c506807b5275521fd71044d976f441d18eeeab0f5a38bc1b5344ca395292f6f26eb7612cd8c8e746d01ccdfb29893d394052d9f4b1f4c11";     TOMCAT_VERSION="9.0.121";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 27 Oct 2026 05:07:24 GMT
USER root
# Tue, 27 Oct 2026 05:07:24 GMT
ARG LIBERTY_VERSION=26.0.0.9
# Tue, 27 Oct 2026 05:07:24 GMT
ARG LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570
# Tue, 27 Oct 2026 05:07:24 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip
# Tue, 27 Oct 2026 05:07:24 GMT
ARG LIBERTY_BUILD_LABEL=cl260920260824-0859
# Tue, 27 Oct 2026 05:07:24 GMT
ARG OPENJ9_SCC=true
# Tue, 27 Oct 2026 05:07:24 GMT
ARG VERBOSE=false
# Tue, 27 Oct 2026 05:07:24 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl260920260824-0859 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.9 liberty.version=26.0.0.9 io.openliberty.version=26.0.0.9
# Tue, 27 Oct 2026 05:07:24 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 27 Oct 2026 05:07:24 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 27 Oct 2026 05:07:24 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 27 Oct 2026 05:07:24 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 27 Oct 2026 05:07:32 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 27 Oct 2026 05:07:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 27 Oct 2026 05:07:32 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 27 Oct 2026 05:07:32 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 27 Oct 2026 05:07:36 GMT
# ARGS: LIBERTY_VERSION=26.0.0.9 LIBERTY_SHA=4ec644ee059a8d54a26c326763fd404a6baf1570 LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.9/openliberty-kernel-26.0.0.9.zip LIBERTY_BUILD_LABEL=cl260920260824-0859 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 27 Oct 2026 05:07:36 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 27 Oct 2026 05:07:36 GMT
USER 1001
# Tue, 27 Oct 2026 05:07:36 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 27 Oct 2026 05:07:36 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 27 Oct 2026 05:07:36 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:f0fdb9cf963ef02d3c2868640dfc39eba181814f056a5ff58b2befec68fae0f7`  
		Last Modified: Sun, 25 Oct 2026 14:50:38 GMT  
		Size: 29.9 MB (29947050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a54c74d85f10a6313e960fcdaea235b756e25a40d01da161ee3ef85d443429`  
		Last Modified: Mon, 26 Oct 2026 23:51:12 GMT  
		Size: 13.1 MB (13097978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7809f996cfd76359a8a0bf933c8d9031ae350f09e19c09cfb72048fa4871a120`  
		Last Modified: Tue, 27 Oct 2026 04:20:57 GMT  
		Size: 57.6 MB (57571205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b10abde2bddf19225c01155a07f85a1db7aa6b7f5e1a96f57fc565cddb23a3b`  
		Last Modified: Tue, 27 Oct 2026 04:20:56 GMT  
		Size: 4.4 MB (4435287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c990e95672e79a8a922a3c09347522863dae12728f9237ec7fc3b7fe3b61efd`  
		Last Modified: Tue, 27 Oct 2026 05:07:51 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3900668ba9ed4bc2c8b496964662dbfbe101077181d161df14ebe690e010cbc0`  
		Last Modified: Tue, 27 Oct 2026 05:07:51 GMT  
		Size: 12.0 KB (11978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca9bca0be164c10168569f2275dc20c9a73ab06fb7f2a19777d8e42e5d6411e7`  
		Last Modified: Tue, 27 Oct 2026 05:07:51 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:620dd781f8ee79747e4d8d4d20830dabe388e9ae4d19f69891595c402e04c0fc`  
		Last Modified: Tue, 27 Oct 2026 05:07:51 GMT  
		Size: 33.1 KB (33112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91dde71f41df44a55ab416a349b65e70a11a098e544b2b2bcd16d759ab731c8b`  
		Last Modified: Tue, 27 Oct 2026 05:07:52 GMT  
		Size: 15.1 MB (15098035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d06f2b52f660b52062edffa93dc230e4533f5ed9222f1a9684afb2fc484e7cf1`  
		Last Modified: Tue, 27 Oct 2026 05:07:52 GMT  
		Size: 737.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07bb2e7eeb6f15c25dc3a17f6ced8a71b695fe2a2b6b0e6915f6ae3860d8c829`  
		Last Modified: Tue, 27 Oct 2026 05:07:52 GMT  
		Size: 13.1 KB (13084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b3c863794321f6cf775653198633b072aaec54c2759cc8c7cb902a35e984b1`  
		Last Modified: Tue, 27 Oct 2026 05:07:52 GMT  
		Size: 2.8 MB (2788506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim` - unknown; unknown

```console
$ docker pull open-liberty@sha256:9c41d6d5896d27ffc9e23cee743fc2e7759d4475b5b840923b2bb375f8b3b5c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c98f8a5faf54eb250c7a8f30308aadcab0de35bc216c480b895ef972955d49e`

```dockerfile
```

-	Layers:
	-	`sha256:4697f463d3fd9052772d0bd4838c9bee0ff38411796fca59289c407efca9e5b0`  
		Last Modified: Tue, 27 Oct 2026 05:07:51 GMT  
		Size: 3.3 MB (3319541 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b618a0970519ea851163bd2b8528c33ebf8ab4e04b916b13b19bffd1d5d7737`  
		Last Modified: Tue, 27 Oct 2026 05:07:51 GMT  
		Size: 39.7 KB (39696 bytes)  
		MIME: application/vnd.in-toto+json
