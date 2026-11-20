## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:4be0de404383d5600c4b915cb5738d1a31598adec6ebd8c73331e710956e988d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:418cd8a492df3c5ef71823e26b6cfe72a3ea9298eec9963bab26a52720e10e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.3 MB (599304514 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef61230598c02aec67eb467c79dd4334bf2a5e65c42de6e87ee8ad95a71f03c7`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:34 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:34 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:20 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 20 Nov 2026 04:39:20 GMT
USER root
# Fri, 20 Nov 2026 04:39:20 GMT
ARG VERBOSE=false
# Fri, 20 Nov 2026 04:39:20 GMT
ARG OPENJ9_SCC=true
# Fri, 20 Nov 2026 04:39:20 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Fri, 20 Nov 2026 04:39:20 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Fri, 20 Nov 2026 04:39:20 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Fri, 20 Nov 2026 04:39:20 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Fri, 20 Nov 2026 04:39:20 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Fri, 20 Nov 2026 04:39:20 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Fri, 20 Nov 2026 04:39:20 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 04:39:20 GMT
ARG LIBERTY_URL
# Fri, 20 Nov 2026 04:39:20 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 20 Nov 2026 04:39:32 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:39:32 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Fri, 20 Nov 2026 04:39:32 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 20 Nov 2026 04:39:32 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Fri, 20 Nov 2026 04:39:32 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Fri, 20 Nov 2026 04:39:32 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Fri, 20 Nov 2026 04:39:32 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 20 Nov 2026 04:39:37 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Fri, 20 Nov 2026 04:39:37 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Fri, 20 Nov 2026 04:39:37 GMT
USER 1001
# Fri, 20 Nov 2026 04:39:37 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 20 Nov 2026 04:39:37 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Fri, 20 Nov 2026 04:39:37 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 20 Nov 2026 05:42:06 GMT
ARG VERBOSE=false
# Fri, 20 Nov 2026 05:42:06 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 20 Nov 2026 05:42:06 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Fri, 20 Nov 2026 05:42:06 GMT
COPY --chown=1001:0 server-http-port-enabled.xml /config/server.xml # buildkit
# Fri, 20 Nov 2026 05:42:27 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf405ae1942b7b86241724c571cfee3c9a71d0ac1e4a342d5e28b1e15f9aaa45`  
		Last Modified: Fri, 20 Nov 2026 03:23:33 GMT  
		Size: 1.4 MB (1407565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7e6cb78cc44e8001fdd5381be7ab9034c452104c6c2867f36011477a056ec49`  
		Last Modified: Fri, 20 Nov 2026 03:23:36 GMT  
		Size: 137.0 MB (136966868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d6f863c806c1a0a30ff896c27520a6f23088d46ed1126b217f2b2bf03a742cf`  
		Last Modified: Fri, 20 Nov 2026 04:39:47 GMT  
		Size: 114.5 KB (114459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefc0674dabd6117ceac6f11688ce42d345ad83e398e9d27d6fa56354900d709`  
		Last Modified: Fri, 20 Nov 2026 04:39:48 GMT  
		Size: 18.1 MB (18120567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0319c971c42de80342b18e4646d21c96ba04dcbcb1c16e9e0b01bdead85c8fdb`  
		Last Modified: Fri, 20 Nov 2026 04:39:47 GMT  
		Size: 579.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:131a61da10889766b12f36a1b2a33c52c97429eaf92f3c93bf223f88215956c2`  
		Last Modified: Fri, 20 Nov 2026 04:39:47 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7304668fb18318cb76fec9e60768549ed71973d1f9168e761dc774f5edcb368d`  
		Last Modified: Fri, 20 Nov 2026 04:39:48 GMT  
		Size: 14.8 KB (14789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fbf628dae3ec0125141b0a33faeba01dcf92c3681f194bc4922c5fde5a1761f`  
		Last Modified: Fri, 20 Nov 2026 04:39:48 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac7bdb4ae883c0f51647646ac34470e14ce6bd7fa549cc209dfed447b2d3e5c`  
		Last Modified: Fri, 20 Nov 2026 04:39:48 GMT  
		Size: 15.6 KB (15648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:996560cef5a7f0d0cd9b2fcc9e73fe474c1a2c537aa6249e789356159fe5b24c`  
		Last Modified: Fri, 20 Nov 2026 04:39:49 GMT  
		Size: 5.8 MB (5810180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b4a8ff71425d8af789597f8d02caa38c1384be5883afc3cdef21044d3be8fa9`  
		Last Modified: Fri, 20 Nov 2026 05:43:04 GMT  
		Size: 391.2 MB (391241329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bc208f53d92b25ce5b61f451b9a8fa06e4776d543937c9975cecd74254837a0`  
		Last Modified: Fri, 20 Nov 2026 05:42:56 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2d402381d01a9de098169776091483fffd4fd264e4f4cbec823a506ce2957e`  
		Last Modified: Fri, 20 Nov 2026 05:42:57 GMT  
		Size: 15.5 MB (15540000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:latest` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:f897063213633fdc7775796f12fc9cedab01d5dba7698fcba95a2076f52db52f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4431550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48d69dae28b5a850fcde8414de2c4a4ece2151bf30f473d1ccaf3416497972e5`

```dockerfile
```

-	Layers:
	-	`sha256:3625f2d71a2d4b40e080f3c806c34f04b983d6014f2c4dbdc30ac94b33640152`  
		Last Modified: Fri, 20 Nov 2026 05:42:56 GMT  
		Size: 4.4 MB (4412339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:214ce26d40de3efca97fb1f7545a97b2630ed2bcf2f9bfc301c4fc0ee4ca3fe7`  
		Last Modified: Fri, 20 Nov 2026 05:42:56 GMT  
		Size: 19.2 KB (19211 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:bf6853c2ecaa883ee9a1ffb37e6c0e68ebf3126b0dd676fadbe53e6d214e24f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.4 MB (602381626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa0523f1231ab196ad3767bbbbc5bdaf24126f53f7cc9264a8849607205d5767`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 04:58:49 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 04:58:49 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 20 Nov 2026 06:26:34 GMT
USER root
# Fri, 20 Nov 2026 06:26:34 GMT
ARG VERBOSE=false
# Fri, 20 Nov 2026 06:26:34 GMT
ARG OPENJ9_SCC=true
# Fri, 20 Nov 2026 06:26:34 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Fri, 20 Nov 2026 06:26:34 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Fri, 20 Nov 2026 06:26:34 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Fri, 20 Nov 2026 06:26:34 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Fri, 20 Nov 2026 06:26:34 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Fri, 20 Nov 2026 06:26:34 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Fri, 20 Nov 2026 06:26:34 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 06:26:34 GMT
ARG LIBERTY_URL
# Fri, 20 Nov 2026 06:26:34 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 20 Nov 2026 06:26:53 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 06:26:53 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Fri, 20 Nov 2026 06:26:55 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 20 Nov 2026 06:26:56 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Fri, 20 Nov 2026 06:26:57 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Fri, 20 Nov 2026 06:26:58 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Fri, 20 Nov 2026 06:27:02 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 20 Nov 2026 06:27:13 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Fri, 20 Nov 2026 06:27:13 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Fri, 20 Nov 2026 06:27:13 GMT
USER 1001
# Fri, 20 Nov 2026 06:27:13 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 20 Nov 2026 06:27:13 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Fri, 20 Nov 2026 06:27:13 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 20 Nov 2026 08:23:37 GMT
ARG VERBOSE=false
# Fri, 20 Nov 2026 08:23:37 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 20 Nov 2026 08:23:37 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Fri, 20 Nov 2026 08:23:37 GMT
COPY --chown=1001:0 server-http-port-enabled.xml /config/server.xml # buildkit
# Fri, 20 Nov 2026 08:24:31 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13b5dbdfccae28a91fd593cedb3aad0e04bcb136596c15ed6b42ded664a8e23`  
		Last Modified: Fri, 20 Nov 2026 04:59:24 GMT  
		Size: 137.6 MB (137554375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b03f161e58a85ba88e06ece50c1cad34220998686f6abb394be95d34864fe3`  
		Last Modified: Fri, 20 Nov 2026 06:27:44 GMT  
		Size: 118.8 KB (118754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2df369bab69797e7ec5d02d225d367b203a9b83461cb13d7511f69682e782fe`  
		Last Modified: Fri, 20 Nov 2026 06:27:45 GMT  
		Size: 18.1 MB (18120755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b13ea92b66932e4b941c378aa129826ecc1b2f475f627799b0194aae891c025`  
		Last Modified: Fri, 20 Nov 2026 06:27:44 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bb0efcbc68dd827d29575ed96d8360d37b76e3b2de96f62a1b0f47527fa265f`  
		Last Modified: Fri, 20 Nov 2026 06:27:44 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a4e798c511aae6c704ba7fa38815d39d8e0798a6c4c015e318cc57cecf3b8a`  
		Last Modified: Fri, 20 Nov 2026 06:27:45 GMT  
		Size: 14.8 KB (14784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9409823ac91bb913fc165f475492f2971640facb329444f3ecbbb81d599ad79a`  
		Last Modified: Fri, 20 Nov 2026 06:27:45 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7370ee578ec5f2ba61a254d15dac6eda8308f6b4d85619873bdcc61d9aab3840`  
		Last Modified: Fri, 20 Nov 2026 06:27:46 GMT  
		Size: 15.7 KB (15674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8d913c5b0fb60d32e190469927056860947f397ef71c986df7b4d256ee3d9f`  
		Last Modified: Fri, 20 Nov 2026 06:27:46 GMT  
		Size: 5.4 MB (5448582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3cdb4e201040fe0c9e5306d1d2eef8a233b68d9fc95134ad2170c7d284fa486`  
		Last Modified: Fri, 20 Nov 2026 08:25:40 GMT  
		Size: 391.2 MB (391238678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:438b2a5b22f7d1a5d4fc7e1294a7779f627ea05498fd161e49ef9df87db07cc5`  
		Last Modified: Fri, 20 Nov 2026 08:25:32 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c44446599f6719831d2b550f28cf1aadc46ede799893c1c59a2747ef93fbfa7`  
		Last Modified: Fri, 20 Nov 2026 08:25:33 GMT  
		Size: 13.4 MB (13351346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:latest` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:5cda068c7f127f115808a28f161843cec93c32c413e2d7a43033b150293132d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4434865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:186df8f1b0ac861339c1c9baea22e637be6329dcbb425c82dfacc39313dae964`

```dockerfile
```

-	Layers:
	-	`sha256:af1e14cda491cdcf5526ff1425c76760facc9414dece740515862a3534b3922d`  
		Last Modified: Fri, 20 Nov 2026 08:25:32 GMT  
		Size: 4.4 MB (4415614 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4e5b120783cb0c382c03465a4e81929341b9b9a6950c8cec42aa055c18a18f2`  
		Last Modified: Fri, 20 Nov 2026 08:25:32 GMT  
		Size: 19.3 KB (19251 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:2799cf65a840d30d819d9f5f398ea40649171e3763697e0889176c213639bc64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.4 MB (599350760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb20ca925c07174f47b050230353e6f54e9037bd99efde04908839b9f59f46dd`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:20:49 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:20:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:20:49 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:21:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:21:31 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 20 Nov 2026 04:50:50 GMT
USER root
# Fri, 20 Nov 2026 04:50:50 GMT
ARG VERBOSE=false
# Fri, 20 Nov 2026 04:50:50 GMT
ARG OPENJ9_SCC=true
# Fri, 20 Nov 2026 04:50:50 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Fri, 20 Nov 2026 04:50:50 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Fri, 20 Nov 2026 04:50:50 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Fri, 20 Nov 2026 04:50:50 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Fri, 20 Nov 2026 04:50:50 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Fri, 20 Nov 2026 04:50:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Fri, 20 Nov 2026 04:50:50 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 20 Nov 2026 04:50:50 GMT
ARG LIBERTY_URL
# Fri, 20 Nov 2026 04:50:50 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 20 Nov 2026 04:51:09 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:51:09 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Fri, 20 Nov 2026 04:51:10 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 20 Nov 2026 04:51:10 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Fri, 20 Nov 2026 04:51:10 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Fri, 20 Nov 2026 04:51:10 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Fri, 20 Nov 2026 04:51:10 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 20 Nov 2026 04:51:17 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Fri, 20 Nov 2026 04:51:17 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Fri, 20 Nov 2026 04:51:17 GMT
USER 1001
# Fri, 20 Nov 2026 04:51:17 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 20 Nov 2026 04:51:17 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Fri, 20 Nov 2026 04:51:17 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Fri, 20 Nov 2026 05:35:57 GMT
ARG VERBOSE=false
# Fri, 20 Nov 2026 05:35:57 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 20 Nov 2026 05:35:57 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Fri, 20 Nov 2026 05:35:57 GMT
COPY --chown=1001:0 server-http-port-enabled.xml /config/server.xml # buildkit
# Fri, 20 Nov 2026 05:36:24 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4f46bebcb3142d91165d9904d09861bdd09dba04ec5c5da3021a21af0957af`  
		Last Modified: Fri, 20 Nov 2026 03:21:59 GMT  
		Size: 1.4 MB (1410425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b446bb69fcae234b1c1a105c2220753ca7aa7027faec8b956e76bd502a7485e8`  
		Last Modified: Fri, 20 Nov 2026 03:22:01 GMT  
		Size: 138.3 MB (138278417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb4b892c9789c047f530c483e2db4fe990e3e75d1984e5b6a16e785911d40b67`  
		Last Modified: Fri, 20 Nov 2026 04:51:33 GMT  
		Size: 115.3 KB (115318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a870c8e5f5b6339f42641b46ed0918947d14ffbb592ce5cb94f78e3b0cd8393`  
		Last Modified: Fri, 20 Nov 2026 04:51:33 GMT  
		Size: 18.1 MB (18120199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3cc40f0aee3dd791e3e07fe7a54fa0f31b6d35af65aef8a0896198ee8fba4be`  
		Last Modified: Fri, 20 Nov 2026 04:51:33 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45dd5bba948c1207553c70349cdb5f03c8376f573f1e80903234b9a62846edcf`  
		Last Modified: Fri, 20 Nov 2026 04:51:33 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91d4255b89655d8f8c407560d5cd624c0e86b29211ebb9235d69e24bd415490c`  
		Last Modified: Fri, 20 Nov 2026 04:51:34 GMT  
		Size: 14.8 KB (14785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:339d785b4314a67e99acb9164e724fdb458e474f474f943336aabfc95c4d879e`  
		Last Modified: Fri, 20 Nov 2026 04:51:34 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b1cf3b150da30c53439dcf94103e55cc6a48f599adca94c49015b07946e34b`  
		Last Modified: Fri, 20 Nov 2026 04:51:34 GMT  
		Size: 15.7 KB (15653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d016a102bb82c7cadbd6ce1c1709607f140df9db1c4e0952ef3ebb39c6ffaf88`  
		Last Modified: Fri, 20 Nov 2026 04:51:34 GMT  
		Size: 6.0 MB (6045287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367be725e730b0624d4975bafc02ad67d9a80107b78cf78e249271863da91c96`  
		Last Modified: Fri, 20 Nov 2026 05:37:11 GMT  
		Size: 391.2 MB (391239869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99255811c81950f9ab04875168ad62356c1cd5ff52b7d86d6c394a8bc6e0436d`  
		Last Modified: Fri, 20 Nov 2026 05:37:05 GMT  
		Size: 946.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88cf46d2c38df8f5eb82ab24e803469809e682b2a776cfcdc5bdf399e2c0389c`  
		Last Modified: Fri, 20 Nov 2026 05:37:05 GMT  
		Size: 15.6 MB (15568486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:latest` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:6f9b328477846e21a462c0d0ce69e9a67f6f34eb4126b5a6095a83f73a225752
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4430297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c091bf647225b8107e546b7d6e66385463f79c20ffb0990bb0ce2e56365c10da`

```dockerfile
```

-	Layers:
	-	`sha256:ee5d6b9195809469314094903d2bbc7614771f508ca6d128a430eb56a2e6d43d`  
		Last Modified: Fri, 20 Nov 2026 05:37:05 GMT  
		Size: 4.4 MB (4411086 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32085032234d474cd6706a8d8edef9d0db1a398c16790031d4deee7524c7cd85`  
		Last Modified: Fri, 20 Nov 2026 05:37:04 GMT  
		Size: 19.2 KB (19211 bytes)  
		MIME: application/vnd.in-toto+json
