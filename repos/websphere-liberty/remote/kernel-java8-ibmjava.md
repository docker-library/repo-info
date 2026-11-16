## `websphere-liberty:kernel-java8-ibmjava`

```console
$ docker pull websphere-liberty@sha256:82097a052bd8dc040dfb9d2503247ba1248a166aab01ba1ed3060aa36233e6bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `websphere-liberty:kernel-java8-ibmjava` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:8893136519f315825a50135f46f507a40bb5d2b5325ea006f37842077b60cbe2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.5 MB (192546450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5e277f15e6c608498997ea13632a53ed8029a2d52ac44098a89f903a75e296fe`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:38:13 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 16 Nov 2026 18:38:13 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 18:38:13 GMT
ENV JAVA_VERSION=8.0.8.75
# Mon, 16 Nov 2026 18:38:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 16 Nov 2026 18:38:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 16 Nov 2026 19:10:29 GMT
USER root
# Mon, 16 Nov 2026 19:10:29 GMT
ARG VERBOSE=false
# Mon, 16 Nov 2026 19:10:29 GMT
ARG OPENJ9_SCC=true
# Mon, 16 Nov 2026 19:10:29 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Mon, 16 Nov 2026 19:10:29 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Mon, 16 Nov 2026 19:10:29 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Mon, 16 Nov 2026 19:10:29 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Mon, 16 Nov 2026 19:10:29 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Mon, 16 Nov 2026 19:10:29 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Mon, 16 Nov 2026 19:10:29 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Mon, 16 Nov 2026 19:10:29 GMT
ARG LIBERTY_URL
# Mon, 16 Nov 2026 19:10:29 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 16 Nov 2026 19:10:41 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:10:41 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Mon, 16 Nov 2026 19:10:41 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 16 Nov 2026 19:10:41 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Mon, 16 Nov 2026 19:10:41 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Mon, 16 Nov 2026 19:10:41 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Mon, 16 Nov 2026 19:10:41 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 16 Nov 2026 19:10:46 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Mon, 16 Nov 2026 19:10:46 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Mon, 16 Nov 2026 19:10:46 GMT
USER 1001
# Mon, 16 Nov 2026 19:10:46 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 16 Nov 2026 19:10:46 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Mon, 16 Nov 2026 19:10:46 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f39fe5abfd41875b003a37a994a251f28463ec55959b5033e74744013a435b9`  
		Last Modified: Mon, 16 Nov 2026 18:39:08 GMT  
		Size: 1.4 MB (1407378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd800f521a4e65d7ec734a9b773542569d7b482ff540ee0c8be1dba6abae552`  
		Last Modified: Mon, 16 Nov 2026 18:39:11 GMT  
		Size: 137.0 MB (136966898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ccffe3712651f4cc0b4d78dd8ebade9d0eb41aa6b902f45b61321876ce66841`  
		Last Modified: Mon, 16 Nov 2026 19:10:56 GMT  
		Size: 114.3 KB (114315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a0bab939921c14dc6d6b56ae5840b6ba9bc6f19d34c216504e6b09cec456c1`  
		Last Modified: Mon, 16 Nov 2026 19:10:57 GMT  
		Size: 18.1 MB (18120390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e293fe33161cee124e09151862e8d27728141131e908e0614296a95554e85fd6`  
		Last Modified: Mon, 16 Nov 2026 19:10:56 GMT  
		Size: 579.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2e2db9a3cdf04256a2fa1e6e106f9bdf7d28b050123c45b888443f4d60e44ab`  
		Last Modified: Mon, 16 Nov 2026 19:10:56 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c2068b5d3f9da905e45c1735c7c46ed96dd7d3b10d3a5762df39c93d8dd8cc7`  
		Last Modified: Mon, 16 Nov 2026 19:10:58 GMT  
		Size: 14.8 KB (14785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf5d82d23d2349dd5e7ab09bf8985f27bb0de2cb6916765cdf587f507ed7adbb`  
		Last Modified: Mon, 16 Nov 2026 19:10:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1803e738c167da340da2f0f898ed209b16d21282c50e8b04d0ccb16d92701963`  
		Last Modified: Mon, 16 Nov 2026 19:10:58 GMT  
		Size: 15.7 KB (15650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf580fd29ea03484dc7298f30db985445c80eeb73546418751f99685eb175de7`  
		Last Modified: Mon, 16 Nov 2026 19:10:58 GMT  
		Size: 5.8 MB (5835154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:b29b66677e3b3a8ef442df024efa869b5d69d31c06c68b7305fbcd326ffb4e6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d16d2ccd153a01004ca53a5d00e42986b477a1d6684c218b09eda24ecd3e8d5`

```dockerfile
```

-	Layers:
	-	`sha256:1f0253375115e53d3d7b76df3ac4fd1cfc80da5ba1c9d71aab22dd91166e4460`  
		Last Modified: Mon, 16 Nov 2026 19:10:56 GMT  
		Size: 2.3 MB (2286703 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2c6b64de20cfcc079f322ca945a42b4387bc9f74c6c82fbe78a9e4bad31ab09`  
		Last Modified: Mon, 16 Nov 2026 19:10:56 GMT  
		Size: 39.1 KB (39122 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel-java8-ibmjava` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:aff347fe6e4807ebc64dae441921f759f67f08d1588810baeb2449fa9cd9ec47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.8 MB (197784359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3604738600790df17e7dd0b88639ebe7990c562df0373049f7bb9cca4f52fce`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 17:03:46 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:03:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:03:46 GMT
ENV JAVA_VERSION=8.0.8.75
# Mon, 16 Nov 2026 18:35:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 16 Nov 2026 18:35:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 16 Nov 2026 19:08:04 GMT
USER root
# Mon, 16 Nov 2026 19:08:04 GMT
ARG VERBOSE=false
# Mon, 16 Nov 2026 19:08:04 GMT
ARG OPENJ9_SCC=true
# Mon, 16 Nov 2026 19:08:04 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Mon, 16 Nov 2026 19:08:04 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Mon, 16 Nov 2026 19:08:04 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Mon, 16 Nov 2026 19:08:04 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Mon, 16 Nov 2026 19:08:04 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Mon, 16 Nov 2026 19:08:04 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Mon, 16 Nov 2026 19:08:04 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Mon, 16 Nov 2026 19:08:04 GMT
ARG LIBERTY_URL
# Mon, 16 Nov 2026 19:08:04 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 16 Nov 2026 19:08:21 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:08:21 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Mon, 16 Nov 2026 19:08:22 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 16 Nov 2026 19:08:22 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Mon, 16 Nov 2026 19:08:23 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Mon, 16 Nov 2026 19:08:23 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Mon, 16 Nov 2026 19:08:23 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 16 Nov 2026 19:08:35 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Mon, 16 Nov 2026 19:08:35 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Mon, 16 Nov 2026 19:08:35 GMT
USER 1001
# Mon, 16 Nov 2026 19:08:35 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 16 Nov 2026 19:08:35 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Mon, 16 Nov 2026 19:08:35 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8800ed5d0e6c0c576b97de7b9fc3b15601a3348b44c928b530fffb0389b9b0`  
		Last Modified: Thu, 12 Nov 2026 17:04:53 GMT  
		Size: 1.5 MB (1493807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:347eaa1ff8f7adf1234967cfa72c3b00826c2a6d88086e3dfd53e9b9b7d16cc0`  
		Last Modified: Mon, 16 Nov 2026 18:35:44 GMT  
		Size: 137.6 MB (137554372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17c80f7f5442c8e7a8a8867cb4da33fddeb7efaac8b4ebcfd867dd7a97c5e2d2`  
		Last Modified: Mon, 16 Nov 2026 19:08:59 GMT  
		Size: 118.9 KB (118870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e393480db06f4d77389a4df8bb4c88a50b5a6786044dcd94a2aca07ba81aa702`  
		Last Modified: Mon, 16 Nov 2026 19:09:00 GMT  
		Size: 18.1 MB (18120915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9af1a02907c8e7c2c5c5e391bd82b1b3530f64e874e8bb7174b150deb94cb8`  
		Last Modified: Mon, 16 Nov 2026 19:08:59 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fac4f888c9f4d22a88b1ded13b347e96040a7db0134d1a61283eecd1e299fe1`  
		Last Modified: Mon, 16 Nov 2026 19:08:59 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:affbfae250c092571a82197582dc3b8f7ebb1e65db4032ecb6cfa0321c439fb2`  
		Last Modified: Mon, 16 Nov 2026 19:09:01 GMT  
		Size: 14.8 KB (14787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e191af2e091c70cf7a3914f60ecd9917b96a21d8f95cfe166565305ab8f2006`  
		Last Modified: Mon, 16 Nov 2026 19:09:01 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80370b4c57d1026a1526cf52d05c9b2d66f0ab98890983f164681e4616298a5a`  
		Last Modified: Mon, 16 Nov 2026 19:09:01 GMT  
		Size: 15.7 KB (15663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7798fc72e0dca2274b05703bef905255bf8da26322f5e8fdb7425e0383efc2b`  
		Last Modified: Mon, 16 Nov 2026 19:09:01 GMT  
		Size: 5.4 MB (5445487 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:2f578e4a31046daa81e55e0743896ccbea492727b0e175804a7e7a3b60871a6d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d6c4fa6d5244c367e566ae8678dc93c71f0134cc73d105b3c99e47f2df1e7f`

```dockerfile
```

-	Layers:
	-	`sha256:e43cded82f88b83e115e6e726d4b7764cbd16dc9e2432492ebc64916de453d3b`  
		Last Modified: Mon, 16 Nov 2026 19:09:00 GMT  
		Size: 2.3 MB (2289978 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:62a9300b3f8cd36a72368e643510853763965ed93bbad3eef0f65f3e22d58af8`  
		Last Modified: Mon, 16 Nov 2026 19:08:59 GMT  
		Size: 39.2 KB (39168 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel-java8-ibmjava` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:0e1538cd8ab52021a2b3654ca9ee6d5158c6fbef96c7905c8c1dfd52fb06e999
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192626453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:450965c9652f7bfebb3e56b30b2873744f32ed36cd62b5161db7f107aa0b4655`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:25 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:25 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:25 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:27 GMT
ADD file:2eb742111a0ed752506db948cef18dd825d45b92c3bb8ae228a88ed48e1b7c11 in / 
# Tue, 10 Nov 2026 08:09:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 17:19:50 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:19:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:19:50 GMT
ENV JAVA_VERSION=8.0.8.75
# Mon, 16 Nov 2026 18:35:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='fcdaa101b8609c520b49e481f4e370db3e6877dab9e78c8e9319da683f30b226';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e304f428c8a1aa9a5172dca1b1ece9e1a5d42f4809bfb6a45578003c0ed936f5';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='34824a6481cc2fa5c9bd7fae467026f89f802e37e67750993485008d6b7afdec';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 16 Nov 2026 18:35:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 16 Nov 2026 19:07:53 GMT
USER root
# Mon, 16 Nov 2026 19:07:53 GMT
ARG VERBOSE=false
# Mon, 16 Nov 2026 19:07:53 GMT
ARG OPENJ9_SCC=true
# Mon, 16 Nov 2026 19:07:53 GMT
ARG LIBERTY_VERSION=26.0.0.11
# Mon, 16 Nov 2026 19:07:53 GMT
ARG LIBERTY_BUILD_LABEL=cl261120261020-2242
# Mon, 16 Nov 2026 19:07:53 GMT
ARG LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
# Mon, 16 Nov 2026 19:07:53 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.11 org.opencontainers.image.revision=cl261120261020-2242 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.11 com.ibm.websphere.liberty.version=26.0.0.11
# Mon, 16 Nov 2026 19:07:53 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Mon, 16 Nov 2026 19:07:53 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.11 BuildLabel=cl261120261020-2242
# Mon, 16 Nov 2026 19:07:53 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Mon, 16 Nov 2026 19:07:53 GMT
ARG LIBERTY_URL
# Mon, 16 Nov 2026 19:07:53 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 16 Nov 2026 19:08:07 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 19:08:07 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Mon, 16 Nov 2026 19:08:08 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 16 Nov 2026 19:08:08 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Mon, 16 Nov 2026 19:08:09 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Mon, 16 Nov 2026 19:08:09 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Mon, 16 Nov 2026 19:08:10 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 16 Nov 2026 19:08:21 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.11 LIBERTY_BUILD_LABEL=cl261120261020-2242 LIBERTY_SHA=1ed87cab36ef85ecba1b342ffb44c0b277562ae2 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Mon, 16 Nov 2026 19:08:21 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Mon, 16 Nov 2026 19:08:21 GMT
USER 1001
# Mon, 16 Nov 2026 19:08:21 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 16 Nov 2026 19:08:21 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Mon, 16 Nov 2026 19:08:21 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:ee971bee4c45f08194cd2311c6f51955f945c5a0fa74935d1fe8a85ef452dc3b`  
		Last Modified: Tue, 10 Nov 2026 08:55:22 GMT  
		Size: 28.5 MB (28538219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64b559f9bb3caf51a4780c110eb775d5755bdb285a0ab1a8ae0ea706a273da2`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 1.4 MB (1410463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae788f0229222c9fdaae4922303c17d8a8b61d242aedb49ca3846225fd63c4e2`  
		Last Modified: Mon, 16 Nov 2026 18:35:51 GMT  
		Size: 138.3 MB (138278416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c18bcc639ec63c96b1975271a066e29de0287932e2d7ecefea405b0f8957de7`  
		Last Modified: Mon, 16 Nov 2026 19:08:45 GMT  
		Size: 115.4 KB (115415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056925ec4b3b2e87f4437ff3428691db5ea51847d8a67bfc11e3cb8bda6cb5c0`  
		Last Modified: Mon, 16 Nov 2026 19:08:46 GMT  
		Size: 18.1 MB (18120297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdf812c87267f91f347a3aa73747e508c6e30d6bc7d7c3f8d01d89ab289dc27`  
		Last Modified: Mon, 16 Nov 2026 19:08:46 GMT  
		Size: 580.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:672f4158ab2f689d45c85c258b8d55c24c852f07405df8838eb5283b80e5532c`  
		Last Modified: Mon, 16 Nov 2026 19:08:45 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f95c6d76659ea50c78aee71950bab9cee1fa360407484891935310986f5ff793`  
		Last Modified: Mon, 16 Nov 2026 19:08:46 GMT  
		Size: 14.8 KB (14784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f68a0e2e7ac1aae07bb5f5e761e6404f0ad73432f6f4c1425f681e17e124844`  
		Last Modified: Mon, 16 Nov 2026 19:08:47 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623d3a2fa7bbf705af54eab857f343eda50834f0aeb9a576fec90787cbc26528`  
		Last Modified: Mon, 16 Nov 2026 19:08:47 GMT  
		Size: 15.7 KB (15658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c57dcb8be28fb5a21245d1ccab6ad6d730f0e8bb558ddf7ebb58685392a366`  
		Last Modified: Mon, 16 Nov 2026 19:08:48 GMT  
		Size: 6.1 MB (6130852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:55b00796ec1d46c45be91436e649e22c52cf4c7ca9d0239b803dfb0014556b99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ba1d7e7df39761900d0ecd3fd66679042f9eaa2863e4c7a93b583986b6a5783`

```dockerfile
```

-	Layers:
	-	`sha256:3155fe768f656e9d9cf1fa506834a49724512f4bb1c087374095d581a7c42e80`  
		Last Modified: Mon, 16 Nov 2026 19:08:45 GMT  
		Size: 2.3 MB (2285450 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:727562a697b4e48f1bd5d8fbf31a7aeecbc10905bde2b75558d536cac9cfeceb`  
		Last Modified: Mon, 16 Nov 2026 19:08:45 GMT  
		Size: 39.1 KB (39122 bytes)  
		MIME: application/vnd.in-toto+json
