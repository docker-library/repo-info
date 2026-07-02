## `websphere-liberty:kernel`

```console
$ docker pull websphere-liberty@sha256:f67a0c272769e5ee3584195f97208a9b40077c2599dd422b99de3a5e2e5eacec
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
$ docker pull websphere-liberty@sha256:b9b6e5a8b0828403ba24a6d222dd4557186a595f068d4ea197ad41d9463c9c2e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.5 MB (191505204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b36927e54bd5b7400080ffd30da718d351608d99e33b0c36d3dfea2c94b46c88`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:28:58 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 02 Jul 2026 02:28:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:28:58 GMT
ENV JAVA_VERSION=8.0.8.65
# Thu, 02 Jul 2026 02:29:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='f848631ac7f7e61aa26d1e648bc7a96e97da64c33cbc4f76627ea3b367c9a085';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9fad050b730cf070b341e5f7b5353c6cdd0a5a6f2d2b150678bfdff1f94f2637';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='c844b329e2161a7d0c5810b30085b5deeec28b911844220cb3b930f860b10884';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 02 Jul 2026 02:29:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 02 Jul 2026 05:46:25 GMT
USER root
# Thu, 02 Jul 2026 05:46:25 GMT
ARG VERBOSE=false
# Thu, 02 Jul 2026 05:46:25 GMT
ARG OPENJ9_SCC=true
# Thu, 02 Jul 2026 05:46:25 GMT
ARG LIBERTY_VERSION=26.0.0.6
# Thu, 02 Jul 2026 05:46:25 GMT
ARG LIBERTY_BUILD_LABEL=cl260620260531-0302
# Thu, 02 Jul 2026 05:46:25 GMT
ARG LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d
# Thu, 02 Jul 2026 05:46:25 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.6 org.opencontainers.image.revision=cl260620260531-0302 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.6 com.ibm.websphere.liberty.version=26.0.0.6
# Thu, 02 Jul 2026 05:46:25 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 02 Jul 2026 05:46:25 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.6 BuildLabel=cl260620260531-0302
# Thu, 02 Jul 2026 05:46:25 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 02 Jul 2026 05:46:25 GMT
ARG LIBERTY_URL
# Thu, 02 Jul 2026 05:46:25 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 02 Jul 2026 05:46:33 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:46:33 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Thu, 02 Jul 2026 05:46:33 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 02 Jul 2026 05:46:33 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 02 Jul 2026 05:46:33 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Thu, 02 Jul 2026 05:46:33 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 02 Jul 2026 05:46:34 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 02 Jul 2026 05:46:39 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 02 Jul 2026 05:46:39 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Thu, 02 Jul 2026 05:46:39 GMT
USER 1001
# Thu, 02 Jul 2026 05:46:39 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 02 Jul 2026 05:46:39 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 02 Jul 2026 05:46:39 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdade8b567c4d961c9ef6ddfaddfab0aa97cb39f305ee356cb704863177f8424`  
		Last Modified: Thu, 02 Jul 2026 02:29:20 GMT  
		Size: 1.4 MB (1408641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79f1fff560d2e8b6be2d637b3416211aa84d0e7d91772c7aa27f21917580ca1`  
		Last Modified: Thu, 02 Jul 2026 02:29:24 GMT  
		Size: 136.2 MB (136233696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02fbba75aa4534c71acb160d16004e2ca3a132fa1fd3956f9d6ff6b79af54b1d`  
		Last Modified: Thu, 02 Jul 2026 05:46:49 GMT  
		Size: 113.9 KB (113943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459672e9ce516c4020acd5be8829c0ffdfd5115f5a7e6cdf964c47ff21b4b46c`  
		Last Modified: Thu, 02 Jul 2026 05:46:50 GMT  
		Size: 18.1 MB (18118775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:599eadc298988e45676bbdfc1587b0f7432fd749761cf2df873cf202ffc4eea8`  
		Last Modified: Thu, 02 Jul 2026 05:46:49 GMT  
		Size: 580.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1f08173c55dd9c92376b4d246ddecd0d92d0fc4f157dbca24677b638b306964`  
		Last Modified: Thu, 02 Jul 2026 05:46:49 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6880a1dea63cdf812b0af1c6f4063c725a45d68afe8c376aac0843b63c9d068`  
		Last Modified: Thu, 02 Jul 2026 05:46:50 GMT  
		Size: 14.2 KB (14189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31a0e335056e00168e03b0b441779e67b2184c77a0df9ee62f2d655acb88c5b9`  
		Last Modified: Thu, 02 Jul 2026 05:46:51 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53153515a5da65a408aeb7d38c5a17b07570c4a2c033f9a835b032be3329ff0f`  
		Last Modified: Thu, 02 Jul 2026 05:46:51 GMT  
		Size: 15.1 KB (15058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66bbcd243afabf7b71a07f8ad3e905ce3ab37bf14ace06ad24f57e0dd4bd1860`  
		Last Modified: Thu, 02 Jul 2026 05:46:52 GMT  
		Size: 5.9 MB (5859670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:e14be8871a49f2b10b5550af5d3ac3b3e18292d30115b55699c0cf80e8c38474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:262ef45cfff520d29435f1ee0e380107da02dd8b0e4f85ffa5fc27075fd85806`

```dockerfile
```

-	Layers:
	-	`sha256:888239f0c7d7ba74bf8e17b3f3d3fee4dc9805f432f20a85314347f8716f7d7a`  
		Last Modified: Thu, 02 Jul 2026 05:46:49 GMT  
		Size: 2.3 MB (2286743 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ea6e2e760df18ac1003aa776e7b39649768cb6b5929a3ade8b8a5d32ba8434c`  
		Last Modified: Thu, 02 Jul 2026 05:46:49 GMT  
		Size: 39.0 KB (38980 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:5daabf217853bbeb0cc530ddb0770d37f1b587f023d64c9969828cddf4434922
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.0 MB (196982769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3bc73a174dd3f432c63e8c8b29596f4c317f969e19a7d12cdd4f30a13a24395b`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:50:25 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 02 Jul 2026 02:50:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:50:25 GMT
ENV JAVA_VERSION=8.0.8.65
# Thu, 02 Jul 2026 02:50:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='f848631ac7f7e61aa26d1e648bc7a96e97da64c33cbc4f76627ea3b367c9a085';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9fad050b730cf070b341e5f7b5353c6cdd0a5a6f2d2b150678bfdff1f94f2637';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='c844b329e2161a7d0c5810b30085b5deeec28b911844220cb3b930f860b10884';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 02 Jul 2026 02:50:33 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 02 Jul 2026 06:35:32 GMT
USER root
# Thu, 02 Jul 2026 06:35:32 GMT
ARG VERBOSE=false
# Thu, 02 Jul 2026 06:35:32 GMT
ARG OPENJ9_SCC=true
# Thu, 02 Jul 2026 06:35:32 GMT
ARG LIBERTY_VERSION=26.0.0.6
# Thu, 02 Jul 2026 06:35:32 GMT
ARG LIBERTY_BUILD_LABEL=cl260620260531-0302
# Thu, 02 Jul 2026 06:35:32 GMT
ARG LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d
# Thu, 02 Jul 2026 06:35:32 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.6 org.opencontainers.image.revision=cl260620260531-0302 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.6 com.ibm.websphere.liberty.version=26.0.0.6
# Thu, 02 Jul 2026 06:35:32 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 02 Jul 2026 06:35:32 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.6 BuildLabel=cl260620260531-0302
# Thu, 02 Jul 2026 06:35:32 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 02 Jul 2026 06:35:32 GMT
ARG LIBERTY_URL
# Thu, 02 Jul 2026 06:35:32 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 02 Jul 2026 06:35:43 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 06:35:43 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Thu, 02 Jul 2026 06:35:44 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 02 Jul 2026 06:35:45 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 02 Jul 2026 06:35:45 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Thu, 02 Jul 2026 06:35:45 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 02 Jul 2026 06:35:46 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 02 Jul 2026 06:35:57 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 02 Jul 2026 06:35:57 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Thu, 02 Jul 2026 06:35:57 GMT
USER 1001
# Thu, 02 Jul 2026 06:35:57 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 02 Jul 2026 06:35:57 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 02 Jul 2026 06:35:57 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1256969b7c1e96f54787e7b97dd1cb6658d9e379228928e5cd9506c8eebd2af`  
		Last Modified: Thu, 02 Jul 2026 02:51:01 GMT  
		Size: 1.5 MB (1494121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108ad4bafdd56ab263c60902bdf6526343ba3ca771e070563159d89d20ddb2fc`  
		Last Modified: Thu, 02 Jul 2026 02:51:05 GMT  
		Size: 137.1 MB (137149814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afcce7866034520b0a7486cdee243ebf77dfaedf4ade48bc7795baf9d4361d7b`  
		Last Modified: Thu, 02 Jul 2026 06:36:17 GMT  
		Size: 118.5 KB (118467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fda9896af439611e0df1c5072ed59963607a9ab642afc5bb67b6812d2ed725c`  
		Last Modified: Thu, 02 Jul 2026 06:36:18 GMT  
		Size: 18.1 MB (18119289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:214c97f619828e37e095acfd3a051e2c0aeb561edb02eb532b3612f65c6f1f06`  
		Last Modified: Thu, 02 Jul 2026 06:36:17 GMT  
		Size: 592.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e4b520d594f51d43c7e72ede65de0b27abe96e52b8ad99b0d4e312dce37ff1`  
		Last Modified: Thu, 02 Jul 2026 06:36:17 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c97d0adfd1d6d81e9f3c7327e77470c0f83af960b8f18c1d98d49e5d09d56af`  
		Last Modified: Thu, 02 Jul 2026 06:36:18 GMT  
		Size: 14.2 KB (14189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d31efac50f1239372beda33c2d3c8165bfad46d3c8453484d057f9524fa6cf`  
		Last Modified: Thu, 02 Jul 2026 06:36:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3971c4660e8e9c2595c9fbee4e7ebf57fee399db3fe336315213c5a79f712c20`  
		Last Modified: Thu, 02 Jul 2026 06:36:18 GMT  
		Size: 15.1 KB (15072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cad9efb07f1861212e2834a7a88d7583e193868f62f031a1d03d99bc6e69ab9`  
		Last Modified: Thu, 02 Jul 2026 06:36:19 GMT  
		Size: 5.4 MB (5427586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:47acdf072e0eb610f99cbe74d34af2170ac3e6b3fc51522c39bfd976caeb38e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329044 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87a7d51b5f4c90b01b5c9535ed56b3122b440e1405c0ec521414b55f8b6a82ac`

```dockerfile
```

-	Layers:
	-	`sha256:5e3a6abf588023d114ca0377a3c10728391272266b32c55e1df5d17fe4385239`  
		Last Modified: Thu, 02 Jul 2026 06:36:17 GMT  
		Size: 2.3 MB (2290018 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1a91aaafae2189db5df80cc52306896df214ec6de9658e147cac36cda75848e`  
		Last Modified: Thu, 02 Jul 2026 06:36:17 GMT  
		Size: 39.0 KB (39026 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:d33a85786fd4b3ded00a471467bb41623caa893424d14d47721fdfc354f7d5c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.6 MB (188583914 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf9cab4ec77bb39c2061f2151d72a19043ead5d52cf6f0d544a153c8ac7fc320`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 29 Jun 2026 10:41:48 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:41:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:41:48 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:41:49 GMT
ADD file:a7caac22d71edeca734e094edaefd29ba696f6b6850656befefab899becd4181 in / 
# Mon, 29 Jun 2026 10:41:49 GMT
CMD ["/bin/bash"]
# Thu, 02 Jul 2026 02:24:01 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 02 Jul 2026 02:24:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:24:01 GMT
ENV JAVA_VERSION=8.0.8.65
# Thu, 02 Jul 2026 02:24:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='f848631ac7f7e61aa26d1e648bc7a96e97da64c33cbc4f76627ea3b367c9a085';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9fad050b730cf070b341e5f7b5353c6cdd0a5a6f2d2b150678bfdff1f94f2637';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='c844b329e2161a7d0c5810b30085b5deeec28b911844220cb3b930f860b10884';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 02 Jul 2026 02:24:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Thu, 02 Jul 2026 05:40:32 GMT
USER root
# Thu, 02 Jul 2026 05:40:32 GMT
ARG VERBOSE=false
# Thu, 02 Jul 2026 05:40:32 GMT
ARG OPENJ9_SCC=true
# Thu, 02 Jul 2026 05:40:32 GMT
ARG LIBERTY_VERSION=26.0.0.6
# Thu, 02 Jul 2026 05:40:32 GMT
ARG LIBERTY_BUILD_LABEL=cl260620260531-0302
# Thu, 02 Jul 2026 05:40:32 GMT
ARG LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d
# Thu, 02 Jul 2026 05:40:32 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.6 org.opencontainers.image.revision=cl260620260531-0302 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.6 com.ibm.websphere.liberty.version=26.0.0.6
# Thu, 02 Jul 2026 05:40:32 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 02 Jul 2026 05:40:32 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.6 BuildLabel=cl260620260531-0302
# Thu, 02 Jul 2026 05:40:32 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 02 Jul 2026 05:40:32 GMT
ARG LIBERTY_URL
# Thu, 02 Jul 2026 05:40:32 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 02 Jul 2026 05:40:37 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 05:40:37 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Thu, 02 Jul 2026 05:40:38 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 02 Jul 2026 05:40:38 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 02 Jul 2026 05:40:38 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Thu, 02 Jul 2026 05:40:38 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 02 Jul 2026 05:40:38 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 02 Jul 2026 05:40:45 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.6 LIBERTY_BUILD_LABEL=cl260620260531-0302 LIBERTY_SHA=7a614ebeb2fc9c6c542cc973b0575c0a8515173d LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 02 Jul 2026 05:40:45 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Thu, 02 Jul 2026 05:40:45 GMT
USER 1001
# Thu, 02 Jul 2026 05:40:45 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 02 Jul 2026 05:40:45 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 02 Jul 2026 05:40:45 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077d98d70f7175644539ba931cd352f09866041f33524d55b14b62e62c1a8769`  
		Last Modified: Thu, 02 Jul 2026 02:24:49 GMT  
		Size: 1.4 MB (1411768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e47ee2edf7b912bd2221415636ea5d2cc378c3290511104e9c5f89db73c8cb9`  
		Last Modified: Thu, 02 Jul 2026 02:24:51 GMT  
		Size: 134.6 MB (134620686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0425127f6f54cfa260dea65a3d89e414dae5fd74a6e9ff5e7657723bd3f39ee`  
		Last Modified: Thu, 02 Jul 2026 05:41:00 GMT  
		Size: 114.9 KB (114857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053835cbd144a435a9be17b1618bd3e68509c5013d347f5c4ed949f71c55fddf`  
		Last Modified: Thu, 02 Jul 2026 05:41:01 GMT  
		Size: 18.1 MB (18118502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4af34d78b3981a1ab03b493ddd74729454ce0ef7ccf9dad22a044724d3fc93`  
		Last Modified: Thu, 02 Jul 2026 05:41:00 GMT  
		Size: 580.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64ad47b22efbf3a72489cc2b9dcf1f5819c8c26f243c081cb35385eebca2b00b`  
		Last Modified: Thu, 02 Jul 2026 05:41:00 GMT  
		Size: 1.5 KB (1522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c612b52115e13caeb22f11763c4c1e89f4f23d663c8ffbad71afc9fc632e5e39`  
		Last Modified: Thu, 02 Jul 2026 05:41:01 GMT  
		Size: 14.2 KB (14188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f945c726b01258dc5bc47709b699fce3392e2c72ec5a8070933e4b14da7c0d`  
		Last Modified: Thu, 02 Jul 2026 05:41:01 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d42e20dd844849cbe130ea314892433e861177a81d0abd820e0df49e553c24c9`  
		Last Modified: Thu, 02 Jul 2026 05:41:01 GMT  
		Size: 15.1 KB (15057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62be134fd5552880c698d33ef27222f6e0b23b334b0882b53928fc09798445b6`  
		Last Modified: Thu, 02 Jul 2026 05:41:02 GMT  
		Size: 6.1 MB (6082377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:e4eae780c087aa2187e2fd001c1e3d77806b0144c580568fb5a4385574b1b6ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81725509c5bfc51821da70013e9ae299dba0e3e4cf2e71e06c022cb17b622289`

```dockerfile
```

-	Layers:
	-	`sha256:aebd75b5ffe801999ff277ca34a3ed33b4c497410613ce6651ec673cd1368696`  
		Last Modified: Thu, 02 Jul 2026 05:41:00 GMT  
		Size: 2.3 MB (2285490 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d16757e719b8b9378197b34f101fff42665284398efa4b51e89cce9fa3be048a`  
		Last Modified: Thu, 02 Jul 2026 05:41:00 GMT  
		Size: 39.0 KB (38980 bytes)  
		MIME: application/vnd.in-toto+json
