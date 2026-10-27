## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:0940689bd677e630e320a98631d25be688974b15051b3eb5d869b4f55bc68153
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
$ docker pull websphere-liberty@sha256:929de7dde1131e2221893898ce41daac5f45a374a792fcdaea6644f170b925a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.1 MB (192052065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5b626f94772ccbde9c335f6c82dd6d84bcadc73a30dd5514018a1721d46d8f0c`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:22:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:22:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:22:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:23:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:23:18 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 27 Oct 2026 00:44:37 GMT
USER root
# Tue, 27 Oct 2026 00:44:37 GMT
ARG VERBOSE=false
# Tue, 27 Oct 2026 00:44:37 GMT
ARG OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:44:37 GMT
ARG LIBERTY_VERSION=26.0.0.10
# Tue, 27 Oct 2026 00:44:37 GMT
ARG LIBERTY_BUILD_LABEL=cl261020260922-1910
# Tue, 27 Oct 2026 00:44:37 GMT
ARG LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637
# Tue, 27 Oct 2026 00:44:37 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.10 org.opencontainers.image.revision=cl261020260922-1910 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.10 com.ibm.websphere.liberty.version=26.0.0.10
# Tue, 27 Oct 2026 00:44:37 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Tue, 27 Oct 2026 00:44:37 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.10 BuildLabel=cl261020260922-1910
# Tue, 27 Oct 2026 00:44:37 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 27 Oct 2026 00:44:37 GMT
ARG LIBERTY_URL
# Tue, 27 Oct 2026 00:44:37 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 27 Oct 2026 00:44:53 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:44:53 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Tue, 27 Oct 2026 00:44:53 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 27 Oct 2026 00:44:53 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Tue, 27 Oct 2026 00:44:53 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Tue, 27 Oct 2026 00:44:54 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Tue, 27 Oct 2026 00:44:54 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 27 Oct 2026 00:44:59 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Tue, 27 Oct 2026 00:44:59 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Tue, 27 Oct 2026 00:44:59 GMT
USER 1001
# Tue, 27 Oct 2026 00:44:59 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 27 Oct 2026 00:44:59 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Tue, 27 Oct 2026 00:44:59 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9682ea89c7660f803717e840a80cfc3a3ab9799f71cd0f832e10ed921b205994`  
		Last Modified: Mon, 26 Oct 2026 23:23:31 GMT  
		Size: 1.4 MB (1407375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c00262678665afea901bf9b407e0513703eb910dc88daa37a865fd928544431c`  
		Last Modified: Mon, 26 Oct 2026 23:23:34 GMT  
		Size: 136.9 MB (136887526 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc59752af66280008054f4195161c7cb72d1717d4a3434f170b0476df1630dcf`  
		Last Modified: Tue, 27 Oct 2026 00:45:09 GMT  
		Size: 114.4 KB (114447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c4b2283e2bc34da0124f46ad63676db11da5c1a94755a6a39940e36ba124b5`  
		Last Modified: Tue, 27 Oct 2026 00:45:10 GMT  
		Size: 18.1 MB (18116958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e83da2aeb78a167700ee5e952fc3d9de22586b54d86548cd2afa75edb1a301`  
		Last Modified: Tue, 27 Oct 2026 00:45:09 GMT  
		Size: 578.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b8d4a97d0e0e370e17d72cb58192b25c5029d7dcc375dfae79b30e71ff920b6`  
		Last Modified: Tue, 27 Oct 2026 00:45:09 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3c7c601976280754eb242a3b24f47056c23ecdff85a4172bc0c36197a39c8d0`  
		Last Modified: Tue, 27 Oct 2026 00:45:10 GMT  
		Size: 14.8 KB (14786 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4e86d963db0e23068ba94247d042dc9c182626b7b2441e2b0e07f7cc782187`  
		Last Modified: Tue, 27 Oct 2026 00:45:10 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857055791912c4799e0d38ebd4e08c90d2619680231aec759800effbc71e2766`  
		Last Modified: Tue, 27 Oct 2026 00:45:10 GMT  
		Size: 15.7 KB (15659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0873c81a9a0bbd1cebb5b3d721dc08da03b9a70ebcfe08fe161c7fdd968226f5`  
		Last Modified: Tue, 27 Oct 2026 00:45:11 GMT  
		Size: 5.7 MB (5740474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:08fd773c244983dc82f3bf464b087562c831ab3df79903e8e3f47201cb7ea02d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c0313f5a8ba56b4ec6e32b29f8bd779f855e555ee05bd7e0ccf3adea91ade66`

```dockerfile
```

-	Layers:
	-	`sha256:b9dae586de59b0fc4a339b48258d2410ab20f33241f542b0d28225c5bb9be281`  
		Last Modified: Tue, 27 Oct 2026 00:45:09 GMT  
		Size: 2.3 MB (2285727 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84ade07d2ea8618d8361471246f8e179c7e76b80dad13d032ccc3b634012efe6`  
		Last Modified: Tue, 27 Oct 2026 00:45:09 GMT  
		Size: 38.8 KB (38752 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:8447a84fc03f06655e391fe4bd2c28a531e6d6f5c976f9611d7cb0842e575284
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.4 MB (197391289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e49d8f28c4f15da65251b8ec147ac82c21e3597b0d699f1e6ab0b897e4798bf`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:30:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Sat, 17 Oct 2026 01:30:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:30:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Sat, 17 Oct 2026 01:30:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:30:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Fri, 23 Oct 2026 20:45:31 GMT
USER root
# Fri, 23 Oct 2026 20:45:31 GMT
ARG VERBOSE=false
# Fri, 23 Oct 2026 20:45:31 GMT
ARG OPENJ9_SCC=true
# Fri, 23 Oct 2026 20:45:31 GMT
ARG LIBERTY_VERSION=26.0.0.10
# Fri, 23 Oct 2026 20:45:31 GMT
ARG LIBERTY_BUILD_LABEL=cl261020260922-1910
# Fri, 23 Oct 2026 20:45:31 GMT
ARG LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637
# Fri, 23 Oct 2026 20:45:31 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.10 org.opencontainers.image.revision=cl261020260922-1910 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.10 com.ibm.websphere.liberty.version=26.0.0.10
# Fri, 23 Oct 2026 20:45:31 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Fri, 23 Oct 2026 20:45:31 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.10 BuildLabel=cl261020260922-1910
# Fri, 23 Oct 2026 20:45:31 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Fri, 23 Oct 2026 20:45:31 GMT
ARG LIBERTY_URL
# Fri, 23 Oct 2026 20:45:31 GMT
ARG DOWNLOAD_OPTIONS=
# Fri, 23 Oct 2026 20:45:47 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 23 Oct 2026 20:45:47 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Fri, 23 Oct 2026 20:45:50 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Fri, 23 Oct 2026 20:45:51 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Fri, 23 Oct 2026 20:45:53 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Fri, 23 Oct 2026 20:45:55 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Fri, 23 Oct 2026 20:45:57 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Fri, 23 Oct 2026 20:46:09 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Fri, 23 Oct 2026 20:46:09 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Fri, 23 Oct 2026 20:46:09 GMT
USER 1001
# Fri, 23 Oct 2026 20:46:09 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Fri, 23 Oct 2026 20:46:09 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Fri, 23 Oct 2026 20:46:09 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefd491047dbd546e62c24cc7784aec4e7c6c82b47394987d3d22ce87151f301`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 1.5 MB (1495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1ef953acc897852a3411be0de10b9c46be1f370ad5f36af1988095d537fc2c`  
		Last Modified: Sat, 17 Oct 2026 01:31:36 GMT  
		Size: 137.5 MB (137470708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2949f24dfa290569cc74fcc8b5d74522208dd7af3a9bd00b3669715ac9ed8264`  
		Last Modified: Fri, 23 Oct 2026 20:46:53 GMT  
		Size: 118.5 KB (118545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cb4040e447968cfe1153c86f4a86d4361083e2408971322f2196bbfdea7d91f`  
		Last Modified: Fri, 23 Oct 2026 20:46:53 GMT  
		Size: 18.1 MB (18117025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79dfad07db8a3d87d68512a218a961a0ce26eda61282205bc5e87c20da3951a`  
		Last Modified: Fri, 23 Oct 2026 20:46:53 GMT  
		Size: 590.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27786f18dd7410a4e9d14a872ca02d1465121a69d753b995850fa7c86c9c0ceb`  
		Last Modified: Fri, 23 Oct 2026 20:46:53 GMT  
		Size: 1.5 KB (1521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fafac7024708ed4190000ef4c73e629d54a7f63691115180601539a7c639ef01`  
		Last Modified: Fri, 23 Oct 2026 20:46:54 GMT  
		Size: 14.8 KB (14784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d781b5cd09f65514fc253f7cca79124c931550f1a0ef7e0612f9e52b5aa433`  
		Last Modified: Fri, 23 Oct 2026 20:46:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63b316a6ce5602fce6d63b2b592f0a169b8b0e95c64a5e17728dabe5e4406560`  
		Last Modified: Fri, 23 Oct 2026 20:46:54 GMT  
		Size: 15.7 KB (15681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1894e214bb70e01e26217e84201e31e35f16878b91321fb09dd53f7bdc9739`  
		Last Modified: Fri, 23 Oct 2026 20:46:55 GMT  
		Size: 5.5 MB (5453510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:071cbe447cc954605a931e2ad7562d7dd1d2fe85f16ff22c80e0f01b8e2d08bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2328433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a788631e54dd9f5d273fda282b945531b20696ffb299f862d35fb9d02d24f6aa`

```dockerfile
```

-	Layers:
	-	`sha256:101b32835753842ce037a74d0c4999e8911d3c2d3644fbc91b0349f786cdead2`  
		Last Modified: Fri, 23 Oct 2026 20:46:53 GMT  
		Size: 2.3 MB (2289640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:299469923d42451df4c899b0c66d1666e5f71f8fcc72dde7f56325d39beebfd6`  
		Last Modified: Fri, 23 Oct 2026 20:46:53 GMT  
		Size: 38.8 KB (38793 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:3d731c78cd8653d0aebad8a034418815d16b93f25199499102dc8f67f5e41915
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (192016737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:423e215f866e65549ecf622199aa6e2c5216c6e2c93444834545072960afe102`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:59:25 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:59:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:59:25 GMT
ENV JAVA_VERSION=8.0.8.71
# Tue, 27 Oct 2026 00:00:10 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 27 Oct 2026 00:00:10 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 27 Oct 2026 00:50:23 GMT
USER root
# Tue, 27 Oct 2026 00:50:23 GMT
ARG VERBOSE=false
# Tue, 27 Oct 2026 00:50:23 GMT
ARG OPENJ9_SCC=true
# Tue, 27 Oct 2026 00:50:23 GMT
ARG LIBERTY_VERSION=26.0.0.10
# Tue, 27 Oct 2026 00:50:23 GMT
ARG LIBERTY_BUILD_LABEL=cl261020260922-1910
# Tue, 27 Oct 2026 00:50:23 GMT
ARG LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637
# Tue, 27 Oct 2026 00:50:23 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.10 org.opencontainers.image.revision=cl261020260922-1910 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.10 com.ibm.websphere.liberty.version=26.0.0.10
# Tue, 27 Oct 2026 00:50:23 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Tue, 27 Oct 2026 00:50:23 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.10 BuildLabel=cl261020260922-1910
# Tue, 27 Oct 2026 00:50:23 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 27 Oct 2026 00:50:23 GMT
ARG LIBERTY_URL
# Tue, 27 Oct 2026 00:50:23 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 27 Oct 2026 00:50:33 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 00:50:33 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true ENABLE_HTTP_PORT=true
# Tue, 27 Oct 2026 00:50:33 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 27 Oct 2026 00:50:33 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Tue, 27 Oct 2026 00:50:33 GMT
COPY helpers-common/ /opt/ibm/helpers/ # buildkit
# Tue, 27 Oct 2026 00:50:34 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Tue, 27 Oct 2026 00:50:34 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 27 Oct 2026 00:50:39 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.10 LIBERTY_BUILD_LABEL=cl261020260922-1910 LIBERTY_SHA=3d2b156274415eb1d0f72416de863c36d9da8637 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Tue, 27 Oct 2026 00:50:39 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Tue, 27 Oct 2026 00:50:39 GMT
USER 1001
# Tue, 27 Oct 2026 00:50:39 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 27 Oct 2026 00:50:39 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Tue, 27 Oct 2026 00:50:39 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fda356205a2889df4884fa106b88a9007173146f1abe3b898026dbf66c80963`  
		Last Modified: Tue, 27 Oct 2026 00:00:33 GMT  
		Size: 1.4 MB (1410140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c02960b6b8b61659305790224d8cb01f8a5b8c30a5e4b79c64e8f6fc6be672f`  
		Last Modified: Tue, 27 Oct 2026 00:00:38 GMT  
		Size: 138.2 MB (138165827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7bed9a99411f3314738f49d0b91e45fe1d780e215802a1a84f59515dec79152`  
		Last Modified: Tue, 27 Oct 2026 00:50:54 GMT  
		Size: 115.3 KB (115267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbd05d453ad9b5cb9454ed79673895a2e648d9e89f9ae6743a27e122d90692d`  
		Last Modified: Tue, 27 Oct 2026 00:50:54 GMT  
		Size: 18.1 MB (18116635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2efea9e175a86aa9d3d05299f2ab47c1b7da217e5fd8003c3109a0811a0cde9a`  
		Last Modified: Tue, 27 Oct 2026 00:50:54 GMT  
		Size: 581.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d2699ce8ed0104f8aae6145104c8074dd10560337b92b8c0c3a3f33af64355`  
		Last Modified: Tue, 27 Oct 2026 00:50:54 GMT  
		Size: 1.5 KB (1520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22a10c94602e663bdcf4c1f3d27e26abd3461cd28bdf5801224a4e04701f15ba`  
		Last Modified: Tue, 27 Oct 2026 00:50:55 GMT  
		Size: 14.8 KB (14783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60e84fcbe75bce1ff900fccdd09865beb8ecd204928de56e2de4806190c952e6`  
		Last Modified: Tue, 27 Oct 2026 00:50:55 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82344bd43abe2eba9b5f25dbd5559b4b64d8ec4b2137a6938ebbc9f256c30601`  
		Last Modified: Tue, 27 Oct 2026 00:50:55 GMT  
		Size: 15.7 KB (15660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6247266f4b83b6266ebc75227fc83d5ef34a47740be38b9db1b3d9cdc1634028`  
		Last Modified: Tue, 27 Oct 2026 00:50:56 GMT  
		Size: 6.0 MB (5953272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:9354bd16458911f5e6a29330e7f4273aa23ef3c649d79d75de673a4e61f7f781
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2323228 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d402cdfdfe9781867ee7a81a72af09b19220d84a22d224bdb63b51c5c1703653`

```dockerfile
```

-	Layers:
	-	`sha256:cf951b77aa9b7d61167fb57eedf438a647e511d008ee9cf65cad738351886cf0`  
		Last Modified: Tue, 27 Oct 2026 00:50:54 GMT  
		Size: 2.3 MB (2284474 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8f354923a5438b5054841965394e080d37697c5a3065eb01e4e38df2b67e7dff`  
		Last Modified: Tue, 27 Oct 2026 00:50:54 GMT  
		Size: 38.8 KB (38754 bytes)  
		MIME: application/vnd.in-toto+json
