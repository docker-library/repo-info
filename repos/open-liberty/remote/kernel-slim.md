## `open-liberty:kernel-slim`

```console
$ docker pull open-liberty@sha256:e7c5485e290668e3c710f8ab18ac0f2888f97577dec3bba9388081ad5d8ef3cc
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
$ docker pull open-liberty@sha256:8ea9236864c1d935efb186f56daa9e4e743a6e9a5bd25d6240847ea1817355b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.3 MB (119300891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd3cfd5e7d2a63f05cfb6cd847df9ccd20095f0b8ad6b5dad2bb8b9263ede69d`
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
# Mon, 09 Nov 2026 23:36:30 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:36:30 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:36:30 GMT
ENV JAVA_VERSION=8.0.512.0
# Mon, 09 Nov 2026 23:36:32 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='449fae1d8de853aed2e5e07526487c7b6b83065cb57e408adc554a2d073896f2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='942dd89c2180fabe6e6c411c9ee76ae69a7548a9dcbe2ced6cb03bb520768434';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='a83ea13d6e79f7dc089e4ab54cd7cb4c271fcccf9794f2fe2b4afb86e1586dd9';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='9dc10dd03097c79e4322f5eddeccc3755b3bf6368939b435d4b6851991c9ffc8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:36:32 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:36:32 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:37:35 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:49:45 GMT
USER root
# Mon, 09 Nov 2026 23:49:45 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Mon, 09 Nov 2026 23:49:45 GMT
ARG LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d
# Mon, 09 Nov 2026 23:49:45 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip
# Mon, 09 Nov 2026 23:49:45 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Mon, 09 Nov 2026 23:49:45 GMT
ARG OPENJ9_SCC=true
# Mon, 09 Nov 2026 23:49:45 GMT
ARG VERBOSE=false
# Mon, 09 Nov 2026 23:49:45 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Mon, 09 Nov 2026 23:49:45 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 09 Nov 2026 23:49:45 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 09 Nov 2026 23:49:45 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 09 Nov 2026 23:49:45 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 09 Nov 2026 23:49:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 09 Nov 2026 23:49:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 09 Nov 2026 23:49:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 09 Nov 2026 23:49:51 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 09 Nov 2026 23:49:54 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 09 Nov 2026 23:49:54 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 09 Nov 2026 23:49:54 GMT
USER 1001
# Mon, 09 Nov 2026 23:49:54 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 09 Nov 2026 23:49:54 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 09 Nov 2026 23:49:54 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:7a48b8f0e5c73d0cc2a85b008978396aa19d253dc1b96fdb0b769ee6dcbeca4a`  
		Last Modified: Sun, 25 Oct 2026 14:50:05 GMT  
		Size: 29.8 MB (29767612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9a2c66b508784a4214df1b068f3d81782a5dd13b3dfab44e801689ab4bbf1d`  
		Last Modified: Mon, 09 Nov 2026 23:37:46 GMT  
		Size: 12.8 MB (12793117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ae4634f2e552d83d637b2dbeb204def7bae0b0121667cd95566eec5954fd53`  
		Last Modified: Mon, 09 Nov 2026 23:37:47 GMT  
		Size: 54.5 MB (54478683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71eb07eaffc36383fc229686084458c996f0be293f701df42902ec44f82bbe5`  
		Last Modified: Mon, 09 Nov 2026 23:37:46 GMT  
		Size: 4.2 MB (4220875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da937c6101b77d120dbc6cc155c1ae93d0521605fa28d6987255e56264c0ced7`  
		Last Modified: Mon, 09 Nov 2026 23:50:03 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:889b574193af47aee6d1eb1c906f0a718ab33158a0a2393d7d5bb6046d9d4188`  
		Last Modified: Mon, 09 Nov 2026 23:50:03 GMT  
		Size: 12.0 KB (11982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e52defc47fff865f69624a4d391cfe10de8316416f47c7ca1e01924e1f111a`  
		Last Modified: Mon, 09 Nov 2026 23:50:03 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ec2f0843151a4f300c4ab0cb8dc73f03274148e2f8e1018909df461816cb7c`  
		Last Modified: Mon, 09 Nov 2026 23:50:03 GMT  
		Size: 31.7 KB (31749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3215271d12938567698920314f93c4cac01156f40aca7bc5b470e2698fab8d5b`  
		Last Modified: Mon, 09 Nov 2026 23:50:05 GMT  
		Size: 15.3 MB (15274572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e4c6f63e7510c511758c11d9a1752f4cfc2767940d2ac255859a34c821a77d`  
		Last Modified: Mon, 09 Nov 2026 23:50:04 GMT  
		Size: 737.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be4fc720f44fdf0ed86eeeb1ffad56ac9fe6a869122cd82ab634c85e560991e`  
		Last Modified: Mon, 09 Nov 2026 23:50:04 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:640869150c0c6af9b46852e1e4553839f9d5dbc36be82fc8a36a3b4b298c4c57`  
		Last Modified: Mon, 09 Nov 2026 23:50:04 GMT  
		Size: 2.7 MB (2707189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim` - unknown; unknown

```console
$ docker pull open-liberty@sha256:b8f32737bfa9224d7a600de9d982eeb9d3fc48afbf1950d422ea7717e86a7089
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3357635 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62cddbfdc98ee3eab74bfe0f9661ae99b2bcd0b3655f22037c6abfdbb713635a`

```dockerfile
```

-	Layers:
	-	`sha256:33e02c334c7398922ee6c01f041462b63b8d9495fe042283c9d95ca8a9c21991`  
		Last Modified: Mon, 09 Nov 2026 23:50:03 GMT  
		Size: 3.3 MB (3317922 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d3ac2cba070ecd5d752dadb128a2abcc6bfdceda43c0fd23ac58385b2e1f274`  
		Last Modified: Mon, 09 Nov 2026 23:50:03 GMT  
		Size: 39.7 KB (39713 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim` - linux; arm64 variant v8

```console
$ docker pull open-liberty@sha256:c50fa48afdbab0535c7d394cc2eacb9db65e89e1135216a4c935d43ff2fae184
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118092668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f61ca60a72beb5303c4a527f7b4ff550dcf3090be9fb22fd2e50db24d75e825`
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
# Mon, 09 Nov 2026 23:36:05 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Mon, 09 Nov 2026 23:36:05 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 09 Nov 2026 23:36:05 GMT
ENV JAVA_VERSION=8.0.512.0
# Mon, 09 Nov 2026 23:36:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='449fae1d8de853aed2e5e07526487c7b6b83065cb57e408adc554a2d073896f2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='942dd89c2180fabe6e6c411c9ee76ae69a7548a9dcbe2ced6cb03bb520768434';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='a83ea13d6e79f7dc089e4ab54cd7cb4c271fcccf9794f2fe2b4afb86e1586dd9';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='9dc10dd03097c79e4322f5eddeccc3755b3bf6368939b435d4b6851991c9ffc8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Mon, 09 Nov 2026 23:36:06 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 09 Nov 2026 23:36:06 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Mon, 09 Nov 2026 23:37:10 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Mon, 09 Nov 2026 23:48:29 GMT
USER root
# Mon, 09 Nov 2026 23:48:29 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Mon, 09 Nov 2026 23:48:29 GMT
ARG LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d
# Mon, 09 Nov 2026 23:48:29 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip
# Mon, 09 Nov 2026 23:48:29 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Mon, 09 Nov 2026 23:48:29 GMT
ARG OPENJ9_SCC=true
# Mon, 09 Nov 2026 23:48:29 GMT
ARG VERBOSE=false
# Mon, 09 Nov 2026 23:48:29 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Mon, 09 Nov 2026 23:48:29 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Mon, 09 Nov 2026 23:48:29 GMT
COPY helpers /opt/ol/helpers # buildkit
# Mon, 09 Nov 2026 23:48:29 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Mon, 09 Nov 2026 23:48:29 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Mon, 09 Nov 2026 23:48:37 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Mon, 09 Nov 2026 23:48:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Mon, 09 Nov 2026 23:48:37 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 09 Nov 2026 23:48:37 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 09 Nov 2026 23:48:41 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Mon, 09 Nov 2026 23:48:41 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Mon, 09 Nov 2026 23:48:41 GMT
USER 1001
# Mon, 09 Nov 2026 23:48:41 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 09 Nov 2026 23:48:41 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Mon, 09 Nov 2026 23:48:41 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:e2d2bb84d02254f4be480ca3c62f94fc12ac959c11b3ce5bd7da3f411b2b9607`  
		Last Modified: Sun, 25 Oct 2026 14:50:12 GMT  
		Size: 28.9 MB (28940126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857fb90794556baf3e4ca91bade3616351bc8610ce37744a9f6803c26ef8ed1d`  
		Last Modified: Mon, 09 Nov 2026 23:37:22 GMT  
		Size: 12.8 MB (12830300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83ae501525384411ac03725d2fd90b2a55ad743f3511f205c41cc2aff5c10661`  
		Last Modified: Mon, 09 Nov 2026 23:37:23 GMT  
		Size: 54.1 MB (54127206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030672ef71226bb92fea4afb1490ee290849ac94dc89157f4041a28ac7a6ad1d`  
		Last Modified: Mon, 09 Nov 2026 23:37:22 GMT  
		Size: 4.1 MB (4101823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c69776cabe023e60926e8baf8107e8fb7fca694038866c5f5fbcfe25854266`  
		Last Modified: Mon, 09 Nov 2026 23:48:50 GMT  
		Size: 1.0 KB (1049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b71834d3e52e4fafc93fc693e5f46b3fd9b62670d3343a24ac8f910dffe29f8`  
		Last Modified: Mon, 09 Nov 2026 23:48:50 GMT  
		Size: 12.0 KB (11982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd722d950d1b59378e01d0983db3f2cbe475843c6066eca51bb622ef4242d9b`  
		Last Modified: Mon, 09 Nov 2026 23:48:50 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f118c5fd65ffed3fff8df48bf45cf60243f748e4e0df643eca9c953a3f1effe1`  
		Last Modified: Mon, 09 Nov 2026 23:48:50 GMT  
		Size: 42.3 KB (42322 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8801b6cc523f4447cd9604764beca30a1550096a3a919af4e7fc827343dbd0af`  
		Last Modified: Mon, 09 Nov 2026 23:48:52 GMT  
		Size: 15.3 MB (15274643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8406570fdd1ef5155ef9a398fcfe12b6a97e8499fbdb031556965c4382f2a5`  
		Last Modified: Mon, 09 Nov 2026 23:48:51 GMT  
		Size: 737.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec136eb20bc6e5ad92010b0cb89ed35cc09160ec36e0e9368854fe437f18bc52`  
		Last Modified: Mon, 09 Nov 2026 23:48:51 GMT  
		Size: 13.1 KB (13082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6365df0fd7f46d9691fe763ceab1625a9e89e608394e472801dfbfabd2c5fa4f`  
		Last Modified: Mon, 09 Nov 2026 23:48:51 GMT  
		Size: 2.7 MB (2749155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim` - unknown; unknown

```console
$ docker pull open-liberty@sha256:303ef830d168eb0b9d71646c9e6ab574e3ac01500580a618a474b436d65d93bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3358400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8983f3624f2d0c7dfe2c2395258236405bfae2a9ad4c6234f8e477ef62195ee3`

```dockerfile
```

-	Layers:
	-	`sha256:e8bdce33d333440dcdd22ec5a04fba207e7b0498cc6ddc16dc36bf4a5195b625`  
		Last Modified: Mon, 09 Nov 2026 23:48:50 GMT  
		Size: 3.3 MB (3318535 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cedc8e81d6816099495464bbb108238da5834fc9d5d198e4774c9d3108def53`  
		Last Modified: Mon, 09 Nov 2026 23:48:50 GMT  
		Size: 39.9 KB (39865 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim` - linux; ppc64le

```console
$ docker pull open-liberty@sha256:82d0df61d18d377b661936c077f02da12c4a1c008f27c22b9ed6c47099bda831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **125.9 MB (125856139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a8ac3775853aa4e95db2705b1833ebe53df3e942772e8c6d5acc7b8d8e5fc0f`
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
# Wed, 04 Nov 2026 22:23:18 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:23:18 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:23:18 GMT
ENV JAVA_VERSION=8.0.512.0
# Tue, 10 Nov 2026 00:57:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='449fae1d8de853aed2e5e07526487c7b6b83065cb57e408adc554a2d073896f2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='942dd89c2180fabe6e6c411c9ee76ae69a7548a9dcbe2ced6cb03bb520768434';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='a83ea13d6e79f7dc089e4ab54cd7cb4c271fcccf9794f2fe2b4afb86e1586dd9';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='9dc10dd03097c79e4322f5eddeccc3755b3bf6368939b435d4b6851991c9ffc8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 00:57:18 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:57:18 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 10 Nov 2026 00:58:23 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 10 Nov 2026 03:21:14 GMT
USER root
# Tue, 10 Nov 2026 03:21:14 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Tue, 10 Nov 2026 03:21:14 GMT
ARG LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d
# Tue, 10 Nov 2026 03:21:14 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip
# Tue, 10 Nov 2026 03:21:14 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Tue, 10 Nov 2026 03:21:14 GMT
ARG OPENJ9_SCC=true
# Tue, 10 Nov 2026 03:21:14 GMT
ARG VERBOSE=false
# Tue, 10 Nov 2026 03:21:14 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Tue, 10 Nov 2026 03:21:14 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 10 Nov 2026 03:21:14 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 10 Nov 2026 03:21:15 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 10 Nov 2026 03:21:16 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 10 Nov 2026 03:22:33 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 10 Nov 2026 03:22:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 10 Nov 2026 03:22:34 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 10 Nov 2026 03:22:35 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 10 Nov 2026 03:22:43 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 10 Nov 2026 03:22:43 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 10 Nov 2026 03:22:43 GMT
USER 1001
# Tue, 10 Nov 2026 03:22:43 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 10 Nov 2026 03:22:43 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 10 Nov 2026 03:22:43 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:834ff078bd2d02770cd942c5b4b14b4f3310da100301bc784351aa6eba5b194f`  
		Last Modified: Tue, 10 Nov 2026 00:58:55 GMT  
		Size: 56.2 MB (56200749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a21667c9ab7fe9cffb085a883ff8883ae64eb66492e2217788e335eca96c203`  
		Last Modified: Tue, 10 Nov 2026 00:58:53 GMT  
		Size: 3.5 MB (3531981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd4ef043bcab20ade7131d5cef4c4c47c890506e2e15c339e5e6cbc22c5e96f`  
		Last Modified: Tue, 10 Nov 2026 03:23:09 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c17cab3ee11152e013c626040e71f5ea0bf9a8904b4a940a68d22c395811153`  
		Last Modified: Tue, 10 Nov 2026 03:23:09 GMT  
		Size: 12.0 KB (11983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eee05eb4f32d655bb176f380c4578d16fc36f01d8d1ab00220b0754a7a87959f`  
		Last Modified: Tue, 10 Nov 2026 03:23:09 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1c2f38ae80ef3e111d93b6c3aea4d47607389418344b81f8350066288233b1`  
		Last Modified: Tue, 10 Nov 2026 03:23:09 GMT  
		Size: 36.5 KB (36498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d24633ee647b6340eb5d803102d4178a7c4a8b13397f05c983c4efdd653bf9e`  
		Last Modified: Tue, 10 Nov 2026 03:23:10 GMT  
		Size: 15.3 MB (15274845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac9f93b5d78f7763aa3ad99a790508904b49687ac8582d65c2d1354705c4b04`  
		Last Modified: Tue, 10 Nov 2026 03:23:10 GMT  
		Size: 738.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0344c225b496b064867cbd43e1533e5a291ead7e5edf25926a9cc198b4b0c20`  
		Last Modified: Tue, 10 Nov 2026 03:23:10 GMT  
		Size: 13.1 KB (13110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb8e18e9c52b016e02d392c40ff12d09f2c70d9f6f53e2eab131b0def738d3b`  
		Last Modified: Tue, 10 Nov 2026 03:23:10 GMT  
		Size: 2.6 MB (2641546 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim` - unknown; unknown

```console
$ docker pull open-liberty@sha256:d309397414f1d23f82d6ce05198b676b74163042e1c36b0dce7048923ed59138
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3362485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e9fdc1fd9c8859f1e15c8c43da68b203c75c7c66ce43ef265c8acc88f8a36fa`

```dockerfile
```

-	Layers:
	-	`sha256:074be952be1fe6c63b5f6a5c6a4197dd4c0ae34c8931b493eb91c9a3548ed0bb`  
		Last Modified: Tue, 10 Nov 2026 03:23:09 GMT  
		Size: 3.3 MB (3322726 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ceb72a559d0ac725e4ead62af8c02afc1cdd115e838faa1ebb9bf4eec5ad1d1`  
		Last Modified: Tue, 10 Nov 2026 03:23:08 GMT  
		Size: 39.8 KB (39759 bytes)  
		MIME: application/vnd.in-toto+json

### `open-liberty:kernel-slim` - linux; s390x

```console
$ docker pull open-liberty@sha256:dce97e0252b8e839fae185da7ba0f82e8af2bfe207470622c5c981935f661ee0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **123.2 MB (123231307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:900f7b9b943d9e82902135ddf26a67118b6ce0ff33346e7bbe4d6b7708c893f8`
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
# Wed, 04 Nov 2026 22:27:26 GMT
ENV LANG=en_US.UTF-8 LANGUAGE=en_US:en LC_ALL=en_US.UTF-8
# Wed, 04 Nov 2026 22:27:26 GMT
RUN apt-get update     && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends tzdata curl ca-certificates fontconfig locales     && echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen     && locale-gen en_US.UTF-8     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 22:27:26 GMT
ENV JAVA_VERSION=8.0.512.0
# Tue, 10 Nov 2026 01:07:28 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)         ESUM='449fae1d8de853aed2e5e07526487c7b6b83065cb57e408adc554a2d073896f2';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_aarch64_linux_8.0.512.0.tar.gz';          ;;        ppc64el|ppc64le)          ESUM='942dd89c2180fabe6e6c411c9ee76ae69a7548a9dcbe2ced6cb03bb520768434';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_ppc64le_linux_8.0.512.0.tar.gz';          ;;        amd64|x86_64)          ESUM='a83ea13d6e79f7dc089e4ab54cd7cb4c271fcccf9794f2fe2b4afb86e1586dd9';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_x64_linux_8.0.512.0.tar.gz';          ;;        s390x)          ESUM='9dc10dd03097c79e4322f5eddeccc3755b3bf6368939b435d4b6851991c9ffc8';          BINARY_URL='https://github.com/ibmruntimes/semeru8-binaries/releases/download/jdk-8.0.512.0/ibm-semeru-open-jre_s390x_linux_8.0.512.0.tar.gz';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /tmp/openjdk.tar.gz ${BINARY_URL};     echo "${ESUM} */tmp/openjdk.tar.gz" | sha256sum -c -;     mkdir -p /opt/java/openjdk;     cd /opt/java/openjdk;     tar -xf /tmp/openjdk.tar.gz --strip-components=1;     rm -rf /tmp/openjdk.tar.gz; # buildkit
# Tue, 10 Nov 2026 01:07:28 GMT
ENV JAVA_HOME=/opt/java/openjdk PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 01:07:28 GMT
ENV JAVA_TOOL_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+PortableSharedCache -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal
# Tue, 10 Nov 2026 01:08:32 GMT
RUN set -eux;     unset OPENJ9_JAVA_OPTIONS;     SCC_SIZE="50m";     DOWNLOAD_PATH_TOMCAT=/tmp/tomcat;     INSTALL_PATH_TOMCAT=/opt/tomcat-home;     export CATALINA_PID=/opt/tomcat-home/tomcat.pid;     TOMCAT_CHECKSUM="64b1130e719399c0a409e6996081433b16af8d9c89266c7aaa9849af70a1815feca91e13896f5ccc41451dc5759716d1c84882682de955822c30509de102f290";     TOMCAT_VERSION="9.0.123";     TOMCAT_FILENAME="apache-tomcat-${TOMCAT_VERSION}.tar.gz";     SUCCESS=;         mkdir -p "${DOWNLOAD_PATH_TOMCAT}" "${INSTALL_PATH_TOMCAT}";     for baseUrl in         https://dlcdn.apache.org/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin         https://archive.apache.org/dist/tomcat/tomcat-9/v${TOMCAT_VERSION}/bin     ; do         if curl -LfsSo "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz "${baseUrl}/${TOMCAT_FILENAME}" && [ -s "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz ]; then             SUCCESS=1;             break;         fi;     done;     [ -n "$SUCCESS" ];     echo "${TOMCAT_CHECKSUM}  ${DOWNLOAD_PATH_TOMCAT}/tomcat.tar.gz" | sha512sum -c -;     tar -xf "${DOWNLOAD_PATH_TOMCAT}"/tomcat.tar.gz -C "${INSTALL_PATH_TOMCAT}" --strip-components=1;     rm -rf "${DOWNLOAD_PATH_TOMCAT}";         java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 15;     FULL=$( (java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     DST_CACHE=$(java -Xshareclasses:name=dry_run_scc,cacheDir=/opt/java/.scc,destroy 2>&1 || true);     SCC_SIZE=$(echo $SCC_SIZE | sed 's/.$//');     SCC_SIZE=$(awk "BEGIN {print int($SCC_SIZE * $FULL / 100.0)}");     [ "${SCC_SIZE}" -eq 0 ] && SCC_SIZE=1;     SCC_SIZE="${SCC_SIZE}m";     java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal,createLayer -Xscmx$SCC_SIZE -version;     unset OPENJ9_JAVA_OPTIONS;         export OPENJ9_JAVA_OPTIONS="-XX:+IProfileDuringStartupPhase -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,bootClassesOnly,nonFatal";     "${INSTALL_PATH_TOMCAT}"/bin/startup.sh;     sleep 20;     "${INSTALL_PATH_TOMCAT}"/bin/shutdown.sh -force;     sleep 5;     FULL=$( (java -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,printallStats 2>&1 || true) | awk '/^Cache is [0-9.]*% .*full/ {print substr($3, 1, length($3)-1)}');     echo "SCC layer is $FULL% full.";     rm -rf "${INSTALL_PATH_TOMCAT}";     unset CATALINA_PID;     if [ -d "/opt/java/.scc" ]; then           chmod -R 0777 /opt/java/.scc;     fi;         echo "SCC generation phase completed"; # buildkit
# Tue, 10 Nov 2026 02:07:25 GMT
USER root
# Tue, 10 Nov 2026 02:07:25 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Tue, 10 Nov 2026 02:07:25 GMT
ARG LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d
# Tue, 10 Nov 2026 02:07:25 GMT
ARG LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip
# Tue, 10 Nov 2026 02:07:25 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Tue, 10 Nov 2026 02:07:25 GMT
ARG OPENJ9_SCC=true
# Tue, 10 Nov 2026 02:07:25 GMT
ARG VERBOSE=false
# Tue, 10 Nov 2026 02:07:25 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Melissa Lee, Thomas Watson, Michal Broz, Wendy Raschke org.opencontainers.image.vendor=Open Liberty org.opencontainers.image.url=https://openliberty.io/ org.opencontainers.image.source=https://github.com/OpenLiberty/ci.docker org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the Open Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://github.com/OpenLiberty/ci.docker#building-an-application-image org.opencontainers.image.title=Open Liberty org.opencontainers.image.version=26.0.0.11 liberty.version=26.0.0.11 io.openliberty.version=26.0.0.11
# Tue, 10 Nov 2026 02:07:25 GMT
COPY NOTICES /opt/ol/NOTICES # buildkit
# Tue, 10 Nov 2026 02:07:25 GMT
COPY helpers /opt/ol/helpers # buildkit
# Tue, 10 Nov 2026 02:07:25 GMT
COPY fixes/ /opt/ol/fixes/ # buildkit
# Tue, 10 Nov 2026 02:07:25 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init; # buildkit
# Tue, 10 Nov 2026 02:08:01 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip openssl wget     && wget -q $LIBERTY_DOWNLOAD_URL -U UA-Open-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ol     && rm /tmp/wlp.zip     && rm /tmp/wlp.zip.sha1     && mkdir -p /licenses     && cp /opt/ol/wlp/LICENSE /licenses/     && apt-get remove -y unzip     && apt-get remove -y wget     && rm -rf /var/lib/apt/lists/*     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && chown -R 1001:0 /opt/ol/wlp     && chmod -R g+rw /opt/ol/wlp # buildkit
# Tue, 10 Nov 2026 02:08:01 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ol/wlp/bin:/opt/ol/helpers/build:/opt/ol/helpers/runtime LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ol/wlp/output WLP_SKIP_MAXPERMSIZE=true OPENJ9_SCC=true
# Tue, 10 Nov 2026 02:08:01 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN /opt/ol/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ol/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 10 Nov 2026 02:08:01 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir -p /opt/ol/wlp/usr/shared/resources/lib.index.cache     && ln -s /opt/ol/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p $WLP_OUTPUT_DIR/defaultServer     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ol/wlp/usr/servers/defaultServer /config     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && ln -s /opt/ol/wlp /liberty     && ln -s /opt/ol/fixes /fixes     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ol/wlp/usr     && chmod -R g+rw /opt/ol/wlp/usr     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rw /opt/ol/wlp/output     && chown -R 1001:0 /opt/ol/helpers     && chmod -R ug+rwx /opt/ol/helpers     && chown -R 1001:0 /opt/ol/fixes     && chmod -R g+rwx /opt/ol/fixes     && mkdir /etc/wlp     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && echo "<server description=\"Default Server\"><httpEndpoint id=\"defaultHttpEndpoint\" host=\"*\" /></server>" > /config/configDropins/defaults/open-default-port.xml     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 10 Nov 2026 02:08:05 GMT
# ARGS: LIBERTY_VERSION=26.0.0.11 LIBERTY_SHA=24edec0d5f1c7e170f57a471855521839e9fb56d LIBERTY_DOWNLOAD_URL=https://repo1.maven.org/maven2/io/openliberty/openliberty-kernel/26.0.0.11/openliberty-kernel-26.0.0.11.zip LIBERTY_BUILD_LABEL=cl261120261020-2242 OPENJ9_SCC=true VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache /output/workarea     && chown -R 1001:0 /opt/ol/wlp/output     && chmod -R g+rwx /opt/ol/wlp/output # buildkit
# Tue, 10 Nov 2026 02:08:05 GMT
ENV RANDFILE=/tmp/.rnd OPENJ9_JAVA_OPTIONS=-XX:+IgnoreUnrecognizedVMOptions -XX:+IdleTuningGcOnIdle -Xshareclasses:name=openj9_system_scc,cacheDir=/opt/java/.scc,readonly,nonFatal -Dosgi.checkConfiguration=false
# Tue, 10 Nov 2026 02:08:05 GMT
USER 1001
# Tue, 10 Nov 2026 02:08:05 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 10 Nov 2026 02:08:05 GMT
ENTRYPOINT ["/opt/ol/helpers/runtime/docker-server.sh"]
# Tue, 10 Nov 2026 02:08:05 GMT
CMD ["/opt/ol/wlp/bin/server" "run" "defaultServer"]
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
	-	`sha256:b85c0085e00f9c8b70bde0d9f312de44701362a33d9a88d02ee633ca714f7ac1`  
		Last Modified: Tue, 10 Nov 2026 01:08:51 GMT  
		Size: 57.6 MB (57614240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05260d22fd98ff05924232f8c6ebe431074cfca9aefda05c09d915a15e8e7fe3`  
		Last Modified: Tue, 10 Nov 2026 01:08:50 GMT  
		Size: 4.4 MB (4446174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:505f01810e19edbcc6cad5646688af56ee0585d4b242f08168d542689094ae37`  
		Last Modified: Tue, 10 Nov 2026 02:08:20 GMT  
		Size: 1.1 KB (1050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1e8b7b3f1c859291ccb57a5f8118ae836fe64267fb8c249127fb66c2026bfa`  
		Last Modified: Tue, 10 Nov 2026 02:08:20 GMT  
		Size: 12.0 KB (11979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:302466906672bf35011a3daedf92f485b010c7cd8bdc6bf37a37843141ec32d5`  
		Last Modified: Tue, 10 Nov 2026 02:08:20 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e786f4c107be72ce98029453cf6795ed7ac70ffc9c5ea1c1f16a2fc7726e8a`  
		Last Modified: Tue, 10 Nov 2026 02:08:20 GMT  
		Size: 33.1 KB (33113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56fdcbd563e7412246d4e24bff23586c19f17a65d8193e078bde0a6d78bf1173`  
		Last Modified: Tue, 10 Nov 2026 02:08:21 GMT  
		Size: 15.3 MB (15274642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912374cd3878160b4b832191d744ed364c8daab214ab6796542a046efc2201ad`  
		Last Modified: Tue, 10 Nov 2026 02:08:21 GMT  
		Size: 737.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0c09c2e2620418b0c501c149dc6db60b56f610681fc7d504703b9c0a09892cd`  
		Last Modified: Tue, 10 Nov 2026 02:08:21 GMT  
		Size: 13.1 KB (13085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1912da5799e5d3fb174e11b7bcfe2a4620f56cc850d898b914dffde7e62167`  
		Last Modified: Tue, 10 Nov 2026 02:08:21 GMT  
		Size: 2.8 MB (2790459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `open-liberty:kernel-slim` - unknown; unknown

```console
$ docker pull open-liberty@sha256:721b30bb55978452632d84e05bad01aa0d1ae4a628d2108da98c8774039f6be7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.4 MB (3359258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d8e902237fb8a9110f22fd688f25b86432c68ddf136d098975d692741a4428f`

```dockerfile
```

-	Layers:
	-	`sha256:5e304fe31d6e78134e81e4bccffdbae43e0d75a381ee94d33d25971aa0ab3f8c`  
		Last Modified: Tue, 10 Nov 2026 02:08:20 GMT  
		Size: 3.3 MB (3319545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f720be90e695135488dae41474d64ccd4493094f1e40b4fddc585d9e6dfd857c`  
		Last Modified: Tue, 10 Nov 2026 02:08:20 GMT  
		Size: 39.7 KB (39713 bytes)  
		MIME: application/vnd.in-toto+json
