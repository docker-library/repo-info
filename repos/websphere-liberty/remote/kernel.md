## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:a60a1ef67b20b6a8bb46f8f7db514ac86f79edf61d05da4e20105eb430c8cc4c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `websphere-liberty:kernel` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:ffe65fea2cbce0c10c431852ad45f7e9267d7bf3db213da971f195272f3a39b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.9 MB (191887636 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0829f9ffd75c3314d3b0570d65b30389f5e6b0d0fd7215c74f7dc3284f23b3ba`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Fri, 28 Aug 2026 21:35:31 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 28 Aug 2026 21:35:31 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:35:31 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 28 Aug 2026 21:36:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 28 Aug 2026 21:36:55 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Aug 2026 21:53:16 GMT
USER root
# Fri, 28 Aug 2026 21:53:16 GMT
ARG VERBOSE=false
# Fri, 28 Aug 2026 21:53:16 GMT
ARG OPENJ9_SCC=true
# Fri, 28 Aug 2026 21:53:16 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Fri, 28 Aug 2026 21:53:16 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Fri, 28 Aug 2026 21:53:16 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Fri, 28 Aug 2026 21:53:16 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Fri, 28 Aug 2026 21:53:16 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Fri, 28 Aug 2026 21:53:16 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Fri, 28 Aug 2026 21:53:16 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 28 Aug 2026 21:53:16 GMT
ARG LIBERTY_URL
# Fri, 28 Aug 2026 21:53:16 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Aug 2026 21:53:29 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:53:29 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Fri, 28 Aug 2026 21:53:30 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 28 Aug 2026 21:53:30 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Fri, 28 Aug 2026 21:53:30 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Fri, 28 Aug 2026 21:53:30 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Fri, 28 Aug 2026 21:53:30 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 28 Aug 2026 21:53:35 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Fri, 28 Aug 2026 21:53:35 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Fri, 28 Aug 2026 21:53:35 GMT
USER 1001
# Fri, 28 Aug 2026 21:53:35 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 28 Aug 2026 21:53:35 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Fri, 28 Aug 2026 21:53:35 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8df40e81a854eea0b704e2dfbc8a3ac4c6532093862632f650a82efa836c6214`  
		Last Modified: Fri, 28 Aug 2026 21:37:09 GMT  
		Size: 1.4 MB (1409046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d98129fc3b9a81603d60fdf66fe143b7290ab951f052facd42b4e057e115af`  
		Last Modified: Fri, 28 Aug 2026 21:37:12 GMT  
		Size: 136.9 MB (136887493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8165e644d07e3d0703831adc7b4113a1cd8d88888df672f3469a87a557b307`  
		Last Modified: Fri, 28 Aug 2026 21:53:43 GMT  
		Size: 114.0 KB (114047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7461fc1b2ec99357ad5bfee61de48952f292c4b84a1308448f24ee2fc57f4dd9`  
		Last Modified: Fri, 28 Aug 2026 21:53:43 GMT  
		Size: 17.9 MB (17938491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2706156625acb50995ba9fce127beafede34a992e6882a16203e034f7426849c`  
		Last Modified: Fri, 28 Aug 2026 21:53:43 GMT  
		Size: 582.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c17576b249206893b6ebcabeeb563620887c5f9415d6f012b0fb83811976294e`  
		Last Modified: Fri, 28 Aug 2026 21:53:43 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5eae12848160b5b9f29780475cb2996eb1edc2ccf363410b32be3a9f9fec535`  
		Last Modified: Fri, 28 Aug 2026 21:53:44 GMT  
		Size: 14.3 KB (14273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba92c971e4915e3ad6cca0388a0ee8110f016d1d95d3cdcd095fa730346dc647`  
		Last Modified: Fri, 28 Aug 2026 21:53:44 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f92f5492e63fcdfb54f9d3ca5e14e17e0ad188c0c3a7dd595bd9d851a7ef0d`  
		Last Modified: Fri, 28 Aug 2026 21:53:44 GMT  
		Size: 15.1 KB (15141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0f0142edec5da92dabf521abd28a8ddd56ab23e1c119c83be032a60751e727b`  
		Last Modified: Fri, 28 Aug 2026 21:53:45 GMT  
		Size: 5.8 MB (5769849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:fcabeeecaccee06dd46ae5319d861dd228e013712467a2d7ff1d2c50f7f6bf9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2327662 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53d3ef6166da7c62b3af00c829af1c06c93db7dc8301561ad3c6a36cf56cfde3`

```dockerfile
```

-	Layers:
	-	`sha256:33aa64c2a940c094c5536070f75fc51114f869f8f5662756cbf5abb406d88b0a`  
		Last Modified: Fri, 28 Aug 2026 21:53:43 GMT  
		Size: 2.3 MB (2288682 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a17a2fd17c1a06d0dc17d5b0a02605832c298e04751f8f25220bfcd5a2266b8`  
		Last Modified: Fri, 28 Aug 2026 21:53:43 GMT  
		Size: 39.0 KB (38980 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:bb27c2bf72131e4203283de2f2e7db832c5c733912cc7ed8d77bd83d3a8011d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.1 MB (197130042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19becb89cdb96125beea56056f6410567efe8d4782dfeaacbe67fe81ab366f27`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Fri, 28 Aug 2026 21:34:22 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 28 Aug 2026 21:34:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:34:22 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 28 Aug 2026 21:35:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 28 Aug 2026 21:35:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Aug 2026 21:53:02 GMT
USER root
# Fri, 28 Aug 2026 21:53:02 GMT
ARG VERBOSE=false
# Fri, 28 Aug 2026 21:53:02 GMT
ARG OPENJ9_SCC=true
# Fri, 28 Aug 2026 21:53:02 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Fri, 28 Aug 2026 21:53:02 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Fri, 28 Aug 2026 21:53:02 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Fri, 28 Aug 2026 21:53:02 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Fri, 28 Aug 2026 21:53:02 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Fri, 28 Aug 2026 21:53:02 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Fri, 28 Aug 2026 21:53:02 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 28 Aug 2026 21:53:02 GMT
ARG LIBERTY_URL
# Fri, 28 Aug 2026 21:53:02 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Aug 2026 21:53:18 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:53:18 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Fri, 28 Aug 2026 21:53:19 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 28 Aug 2026 21:53:19 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Fri, 28 Aug 2026 21:53:19 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Fri, 28 Aug 2026 21:53:20 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Fri, 28 Aug 2026 21:53:21 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 28 Aug 2026 21:53:31 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Fri, 28 Aug 2026 21:53:31 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Fri, 28 Aug 2026 21:53:31 GMT
USER 1001
# Fri, 28 Aug 2026 21:53:31 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 28 Aug 2026 21:53:31 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Fri, 28 Aug 2026 21:53:31 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4edf91ff647a54d6f38ce36471279a2bb2c45d587bc8f656e0a99c2c9758ec`  
		Last Modified: Fri, 28 Aug 2026 21:35:11 GMT  
		Size: 1.5 MB (1494976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c193523366fb5d85c233c5fda25953a13133779948ea8437efbede51ae15c828`  
		Last Modified: Fri, 28 Aug 2026 21:35:41 GMT  
		Size: 137.5 MB (137470755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4c7e5734e577252197eec57b7957449e0019a926092d5d49607806d26328a8`  
		Last Modified: Fri, 28 Aug 2026 21:53:49 GMT  
		Size: 118.5 KB (118541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cc3338b74bd5b7c5d554b2b276b940c21673f675cfb0acd023abc44e20c1a58`  
		Last Modified: Fri, 28 Aug 2026 21:53:49 GMT  
		Size: 17.9 MB (17938787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07c72ec640724bdabdfa5568e07dd067e216789b3750be0c0071173559c23d02`  
		Last Modified: Fri, 28 Aug 2026 21:53:49 GMT  
		Size: 586.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21c543a94c33183e3c05153a026906a2989776c8732c5be46fe0b265c20a9998`  
		Last Modified: Fri, 28 Aug 2026 21:53:49 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb500fec13e294562c9ed1374a5e82998b2801b4e34f4749b0fcf89a7561bd7d`  
		Last Modified: Fri, 28 Aug 2026 21:53:50 GMT  
		Size: 14.3 KB (14270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf21ecc879bc15f5a9da30120fae11a130ba9c8fac59c0fe606244827ab4d8d3`  
		Last Modified: Fri, 28 Aug 2026 21:53:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c724e8dac7a7c678ca17faee9080a152880301699c8b67e0dfac47127f90edb`  
		Last Modified: Fri, 28 Aug 2026 21:53:50 GMT  
		Size: 15.2 KB (15156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37649f439ceb21ce37756f9422039849f429e256e20a92e4754908f6f840606b`  
		Last Modified: Fri, 28 Aug 2026 21:53:51 GMT  
		Size: 5.4 MB (5437055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:6d94c652cedcf6eeb9a7cc26e71bc06da144c3e50e7101636c20d3f83351fa0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2330983 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220e33580eea7f82687426a965fa76a5229d3af335e9e604b41dd9261682f2ea`

```dockerfile
```

-	Layers:
	-	`sha256:e129f6f06324f1f3271d28203d4c6426a8766426e28d5df99bd7bd8634ad1b0c`  
		Last Modified: Fri, 28 Aug 2026 21:53:49 GMT  
		Size: 2.3 MB (2291957 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8774fae53fef715456b8254c1432430c71bf569a710b8538b3cea771a13226c7`  
		Last Modified: Fri, 28 Aug 2026 21:53:49 GMT  
		Size: 39.0 KB (39026 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:d2efe88d71722822184986bd0a60503418ae75652d8a8aacfb52f8a01aa1a61d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (191970245 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11dcc18f1ce075aee9127709c8348ce88653a158209531b0d1b4a0b94d5b51a8`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Fri, 28 Aug 2026 21:34:26 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 28 Aug 2026 21:34:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:34:26 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 28 Aug 2026 21:35:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 28 Aug 2026 21:35:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 28 Aug 2026 21:52:22 GMT
USER root
# Fri, 28 Aug 2026 21:52:22 GMT
ARG VERBOSE=false
# Fri, 28 Aug 2026 21:52:22 GMT
ARG OPENJ9_SCC=true
# Fri, 28 Aug 2026 21:52:22 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Fri, 28 Aug 2026 21:52:22 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Fri, 28 Aug 2026 21:52:22 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Fri, 28 Aug 2026 21:52:22 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Fri, 28 Aug 2026 21:52:22 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Fri, 28 Aug 2026 21:52:22 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Fri, 28 Aug 2026 21:52:22 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 28 Aug 2026 21:52:22 GMT
ARG LIBERTY_URL
# Fri, 28 Aug 2026 21:52:22 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 28 Aug 2026 21:52:32 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 28 Aug 2026 21:52:32 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Fri, 28 Aug 2026 21:52:33 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 28 Aug 2026 21:52:33 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Fri, 28 Aug 2026 21:52:33 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Fri, 28 Aug 2026 21:52:33 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Fri, 28 Aug 2026 21:52:33 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 28 Aug 2026 21:52:40 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Fri, 28 Aug 2026 21:52:40 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Fri, 28 Aug 2026 21:52:40 GMT
USER 1001
# Fri, 28 Aug 2026 21:52:40 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 28 Aug 2026 21:52:40 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Fri, 28 Aug 2026 21:52:40 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2c588318a7b478c0bf21d53b66d89be83095a9bdb423b5538e29eb1bb3aa7e`  
		Last Modified: Fri, 28 Aug 2026 21:35:30 GMT  
		Size: 1.4 MB (1412319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e6d9c8a6748f1ca28e39afad7b3c4e5e41c60bf2b72b1f4e075fafd4cb3bed`  
		Last Modified: Fri, 28 Aug 2026 21:35:33 GMT  
		Size: 138.2 MB (138165829 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acadf1819155c1c5db5538f0b8f7a8254546a266f5c33f0c703bc05481ebf6ba`  
		Last Modified: Fri, 28 Aug 2026 21:52:56 GMT  
		Size: 115.0 KB (114968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b558a76658f5742b24a4d4529967b0d4d688bf3a70c72f36ed1ba46f240eac9d`  
		Last Modified: Fri, 28 Aug 2026 21:52:56 GMT  
		Size: 17.9 MB (17938379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a294f33f1b3b525ef4d86825984b148ec75f407e299b1aacefef9b9af68677`  
		Last Modified: Fri, 28 Aug 2026 21:52:56 GMT  
		Size: 589.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74e2c66dc712689981327e2a7543e270a3b8fae183f115d410b90f642ce21fc`  
		Last Modified: Fri, 28 Aug 2026 21:52:56 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a9eac96b88c54b8c323c4e066316e13b83ffce87414a02e722747c899245fc`  
		Last Modified: Fri, 28 Aug 2026 21:52:57 GMT  
		Size: 14.3 KB (14270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6667b17a6f67ca4f541136bbbd32fac2115788f1a1527646b5af60bfd1f0ba55`  
		Last Modified: Fri, 28 Aug 2026 21:52:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1f54c4819c3103961609025ec8b211226d098daf4e5af9103056df3af3819f`  
		Last Modified: Fri, 28 Aug 2026 21:52:57 GMT  
		Size: 15.1 KB (15146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6313024c5c0a7109ac7a2a5724857a341e43e0bca03a7ec821ffab636280013c`  
		Last Modified: Fri, 28 Aug 2026 21:52:57 GMT  
		Size: 6.1 MB (6096072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:4925cb510332809de199d29cc65da9362d9d7967bb9fb11f3656e870d46abfef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2326408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb6b5a74f93cfc96ddcf82c1ee2fca71c0fbede2e1d4fb0e62cf3a8c6aff3c0c`

```dockerfile
```

-	Layers:
	-	`sha256:e85d1b85dcb2e80b2c3733fe3363ee6f0cba28d90ed341ad7c66e9ab547f35aa`  
		Last Modified: Fri, 28 Aug 2026 21:52:56 GMT  
		Size: 2.3 MB (2287429 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:eb53d76914309afdd15b473c3f022cc5952ceaab634b32b719d09457361d063c`  
		Last Modified: Fri, 28 Aug 2026 21:52:56 GMT  
		Size: 39.0 KB (38979 bytes)  
		MIME: application/vnd.in-toto+json
