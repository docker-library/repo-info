## `websphere-liberty:kernel-java8-ibmjava`

```console
$ docker pull websphere-liberty@sha256:24cb51d40407f2e1a4edfca073066b79cea3241bac47f86a79df449f5d58b3ce
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
$ docker pull websphere-liberty@sha256:2c57cf1e8181c4259488d4efd9897cfceb6536e1708afebde15e0565fd268de3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.1 MB (192079693 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc721d5b5484636de171a7b393e52551a2a4af8227d30f5cae5a65ec50e750b5`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 31 Jul 2026 21:53:09 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:53:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:53:09 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:53:11 GMT
ADD file:4501ff54ffd37d854b1cfbcd2e37da58bf8a49da3a6a82232d03e7556d337a92 in / 
# Fri, 31 Jul 2026 21:53:12 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 01:38:56 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 04 Aug 2026 01:38:56 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 01:38:56 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 04 Aug 2026 01:39:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 04 Aug 2026 01:39:12 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 17 Aug 2026 21:21:28 GMT
USER root
# Mon, 17 Aug 2026 21:21:28 GMT
ARG VERBOSE=false
# Mon, 17 Aug 2026 21:21:28 GMT
ARG OPENJ9_SCC=true
# Mon, 17 Aug 2026 21:21:28 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Mon, 17 Aug 2026 21:21:28 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 17 Aug 2026 21:21:28 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Mon, 17 Aug 2026 21:21:28 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Mon, 17 Aug 2026 21:21:28 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Mon, 17 Aug 2026 21:21:28 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Mon, 17 Aug 2026 21:21:28 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Mon, 17 Aug 2026 21:21:28 GMT
ARG LIBERTY_URL
# Mon, 17 Aug 2026 21:21:28 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 17 Aug 2026 21:21:39 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 21:21:39 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Mon, 17 Aug 2026 21:21:39 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 17 Aug 2026 21:21:39 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Mon, 17 Aug 2026 21:21:39 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Mon, 17 Aug 2026 21:21:39 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Mon, 17 Aug 2026 21:21:39 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 17 Aug 2026 21:21:45 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Mon, 17 Aug 2026 21:21:45 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Mon, 17 Aug 2026 21:21:45 GMT
USER 1001
# Mon, 17 Aug 2026 21:21:45 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 17 Aug 2026 21:21:45 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Mon, 17 Aug 2026 21:21:45 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:39a945af8df2ad9343f141c82355d3f2c4b576d432eda34c460d630607462b60`  
		Last Modified: Fri, 31 Jul 2026 22:53:51 GMT  
		Size: 29.7 MB (29736517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e432da5811cc99da31bd26afc0b347075f8f42a04ec2ff8d4146e9bdad645f0`  
		Last Modified: Tue, 04 Aug 2026 01:39:26 GMT  
		Size: 1.4 MB (1408962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:506a66e3495bd7d8a35f7640f621f4198d54fc8a18975447b3d6a0cb8dcf391d`  
		Last Modified: Tue, 04 Aug 2026 01:39:29 GMT  
		Size: 137.0 MB (136952306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b635519a0227310df76e97f42a8579b1a7568f1746fd1e1f40d05e8198240523`  
		Last Modified: Mon, 17 Aug 2026 21:21:54 GMT  
		Size: 114.0 KB (113986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d431bb68b1b536ebf85aa93a97d3bbf1cd609014d6d2a0658322c2ee70381e62`  
		Last Modified: Mon, 17 Aug 2026 21:21:55 GMT  
		Size: 17.9 MB (17938473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c548443bafb6870e5007947d7a6db1abf5ae8fdd6c1321d520ff5e4c5ad6760e`  
		Last Modified: Mon, 17 Aug 2026 21:21:54 GMT  
		Size: 583.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:349a93887954e7d61cc3a326fa4857322fa20c9eb2ef33cf32af7608482e836b`  
		Last Modified: Mon, 17 Aug 2026 21:21:54 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deda5232fe14080bcf58f975605e9f72f5cdd8aff4fc3988444a7a3663fe665b`  
		Last Modified: Mon, 17 Aug 2026 21:21:56 GMT  
		Size: 14.3 KB (14274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3cd956d0b59a11c5b1e0b41ecfe68e9dd37ba517c6a74ced6e12cd6c1f4905`  
		Last Modified: Mon, 17 Aug 2026 21:21:55 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df91164c83cbfea1d9dce83bf99307910ac75afb4d86701c2b9a1ceb07e73d17`  
		Last Modified: Mon, 17 Aug 2026 21:21:56 GMT  
		Size: 15.1 KB (15134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a8094769ae122ce4c9ebb85c1c8e6e98b021981e1854f3e542d388b9c18d252`  
		Last Modified: Mon, 17 Aug 2026 21:21:56 GMT  
		Size: 5.9 MB (5897683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:df4b21af8b2e37d1ea7eac2570a29bded6a636efc982e98e906977965ecc2239
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2325759 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99b822c806284d633341fe89d97e04e8926534cbdb46cb4bb76bab85b07e7146`

```dockerfile
```

-	Layers:
	-	`sha256:544e8e6effab10fe5c48ed8605f929f72ab06b63e725d7d070122773fceae40a`  
		Last Modified: Mon, 17 Aug 2026 21:21:55 GMT  
		Size: 2.3 MB (2286779 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd8206df3d8ea80368d773abda30768c5f6703ec39ada1ab43ca3ef934d9c1a7`  
		Last Modified: Mon, 17 Aug 2026 21:21:54 GMT  
		Size: 39.0 KB (38980 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel-java8-ibmjava` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:276ac6f5f70555c5f8eb5096ce45b72c83b7331f3e911271d573b4bfb26fc848
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **197.2 MB (197214312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac229db9891d95a15e201badd8a8c3441e51f969552b39a26982f5011d3e1c24`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Fri, 31 Jul 2026 21:52:30 GMT
ARG RELEASE
# Fri, 31 Jul 2026 21:52:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 31 Jul 2026 21:52:30 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 31 Jul 2026 21:52:33 GMT
ADD file:f48db2a791f6b574e2518d202e6b75268dc7b57826c0aa7a238e41ef3f2dbaeb in / 
# Fri, 31 Jul 2026 21:52:34 GMT
CMD ["/bin/bash"]
# Tue, 04 Aug 2026 02:04:21 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 04 Aug 2026 02:04:21 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 02:04:21 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 04 Aug 2026 02:04:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 04 Aug 2026 02:04:30 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 17 Aug 2026 21:43:21 GMT
USER root
# Mon, 17 Aug 2026 21:43:21 GMT
ARG VERBOSE=false
# Mon, 17 Aug 2026 21:43:21 GMT
ARG OPENJ9_SCC=true
# Mon, 17 Aug 2026 21:43:21 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Mon, 17 Aug 2026 21:43:21 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Mon, 17 Aug 2026 21:43:21 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Mon, 17 Aug 2026 21:43:21 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Mon, 17 Aug 2026 21:43:21 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Mon, 17 Aug 2026 21:43:21 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Mon, 17 Aug 2026 21:43:21 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Mon, 17 Aug 2026 21:43:21 GMT
ARG LIBERTY_URL
# Mon, 17 Aug 2026 21:43:21 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 17 Aug 2026 21:43:37 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 17 Aug 2026 21:43:37 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Mon, 17 Aug 2026 21:43:39 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Mon, 17 Aug 2026 21:43:39 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Mon, 17 Aug 2026 21:43:39 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Mon, 17 Aug 2026 21:43:39 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Mon, 17 Aug 2026 21:43:40 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Mon, 17 Aug 2026 21:43:54 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Mon, 17 Aug 2026 21:43:54 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Mon, 17 Aug 2026 21:43:54 GMT
USER 1001
# Mon, 17 Aug 2026 21:43:54 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Mon, 17 Aug 2026 21:43:54 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Mon, 17 Aug 2026 21:43:54 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:f47d82beca9eaeb15de580e2a4f77f430e6d50327a147c5b9295c3c9879cbaeb`  
		Last Modified: Fri, 31 Jul 2026 22:54:10 GMT  
		Size: 34.6 MB (34637666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be19289d7e26d515baa16ed5b13c21a1823bdf4f0ea85b4961b5fbd77cbcf3fc`  
		Last Modified: Tue, 04 Aug 2026 02:05:01 GMT  
		Size: 1.5 MB (1494500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aac31484168f885db3ecd6225ad103dece58f7302bcbbcc5fc1897278fcae61`  
		Last Modified: Tue, 04 Aug 2026 02:05:04 GMT  
		Size: 137.5 MB (137520968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6ffb8c51dacde9ec07f7461910535558836c4bcaeb621305b4a51e6eb1b5383`  
		Last Modified: Mon, 17 Aug 2026 21:44:18 GMT  
		Size: 118.2 KB (118154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9302cdcd032f56a787ef0fd00ace0d557f63ab398a4393d2c3e5166aa952ea3e`  
		Last Modified: Mon, 17 Aug 2026 21:44:18 GMT  
		Size: 17.9 MB (17938501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82695b1fa9ad6b44c5b35cedf8d3c1208029df7b68c89f8426d7fcf455511f30`  
		Last Modified: Mon, 17 Aug 2026 21:44:17 GMT  
		Size: 590.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e801af09738c791624e52bf750b76ad4971c4025fec1c341d53b7978f6cc4f`  
		Last Modified: Mon, 17 Aug 2026 21:44:17 GMT  
		Size: 1.5 KB (1525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050024d797b1ae2cd0856d4504f6799c4e95c8a558dbdf8f3b698d4198f0e488`  
		Last Modified: Mon, 17 Aug 2026 21:44:19 GMT  
		Size: 14.3 KB (14274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f306784acd9b8886e5c501e03ceaa603ef853d7e11e978a8881e4dd7f919e9b`  
		Last Modified: Mon, 17 Aug 2026 21:44:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ff1e8e6722488f7de2f87bf8a1abde27de2743627899f983f7326a882644f0c`  
		Last Modified: Mon, 17 Aug 2026 21:44:19 GMT  
		Size: 15.2 KB (15152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03343b0ef20287a7048a354d966b71801aa33e524986c12d94f4c61a9f56ea98`  
		Last Modified: Mon, 17 Aug 2026 21:44:20 GMT  
		Size: 5.5 MB (5472734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:366ff02de8e8bbab4e1a2afb0f2eecb6bf12a8f76633725f2cff50d2e2412cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2329080 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1434504f9b5acb758de1e53ccc9f6846460113a23faa86d388dbe49166379969`

```dockerfile
```

-	Layers:
	-	`sha256:1253d51261ea76f64303ad82b5cd227965460da692796c38bc94607365778570`  
		Last Modified: Mon, 17 Aug 2026 21:44:18 GMT  
		Size: 2.3 MB (2290054 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f29cfabb037818c9da4b71dd2ffe43d0a5b0971182b646fc37096e352780bbf`  
		Last Modified: Mon, 17 Aug 2026 21:44:18 GMT  
		Size: 39.0 KB (39026 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel-java8-ibmjava` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:4007f4add2d72a2434bf95b2ab608619abd66b6717a44c41fa18d549dad96f12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.0 MB (192036732 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e6f692f5031b941bf5f9b5e0be274dcdcdc629f875f935e3aefa41c8a9e61d`
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
# Tue, 18 Aug 2026 00:15:46 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 00:15:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 00:15:46 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 00:16:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 00:16:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 18 Aug 2026 01:18:56 GMT
USER root
# Tue, 18 Aug 2026 01:18:56 GMT
ARG VERBOSE=false
# Tue, 18 Aug 2026 01:18:56 GMT
ARG OPENJ9_SCC=true
# Tue, 18 Aug 2026 01:18:56 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Tue, 18 Aug 2026 01:18:56 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Tue, 18 Aug 2026 01:18:56 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Tue, 18 Aug 2026 01:18:56 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Tue, 18 Aug 2026 01:18:56 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Tue, 18 Aug 2026 01:18:56 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Tue, 18 Aug 2026 01:18:56 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 18 Aug 2026 01:18:56 GMT
ARG LIBERTY_URL
# Tue, 18 Aug 2026 01:18:56 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 18 Aug 2026 01:19:04 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:19:04 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Tue, 18 Aug 2026 01:19:05 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 18 Aug 2026 01:19:05 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Tue, 18 Aug 2026 01:19:05 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Tue, 18 Aug 2026 01:19:06 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Tue, 18 Aug 2026 01:19:06 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 18 Aug 2026 01:19:13 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Tue, 18 Aug 2026 01:19:13 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Tue, 18 Aug 2026 01:19:13 GMT
USER 1001
# Tue, 18 Aug 2026 01:19:13 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 18 Aug 2026 01:19:13 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Tue, 18 Aug 2026 01:19:13 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801fa7aae8557244d5bfc7e2889ca3edd63fd1a4b13756c665f0ea98b9e6d2ac`  
		Last Modified: Tue, 18 Aug 2026 00:17:02 GMT  
		Size: 1.4 MB (1412266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09fbd5880c9fe0d67d5be02d2f62d07d12603b837199a85224c2e24b337ae263`  
		Last Modified: Tue, 18 Aug 2026 00:17:05 GMT  
		Size: 138.2 MB (138229499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def782627a0c1ec9a6ce256e77d642ca7db16c4df1c39146762d0bb9b0af3e6c`  
		Last Modified: Tue, 18 Aug 2026 01:19:33 GMT  
		Size: 114.9 KB (114927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212f2b775854bc731a5bee531b360d20315e9a520ac4f2666c74c9f9ab3b81ac`  
		Last Modified: Tue, 18 Aug 2026 01:19:34 GMT  
		Size: 17.9 MB (17938390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f874c6ef9f47428b786111f7e08bb0ee24ce82f7c0bdad352dffb1e43aa14ee`  
		Last Modified: Tue, 18 Aug 2026 01:19:33 GMT  
		Size: 581.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2359471f589cd3e44ed0972f1370564cd1578dbfeca6daff7e9544c43553d10c`  
		Last Modified: Tue, 18 Aug 2026 01:19:33 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dd2c11cedd5eb8cd8a2c5436988d9a6f6b8d2de59789753c41ce7d7d3b6739f`  
		Last Modified: Tue, 18 Aug 2026 01:19:34 GMT  
		Size: 14.3 KB (14272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6538d01da52dbe79e9d018c3a1d663a33b06a3acc6bddf3dcaa44b6c632767`  
		Last Modified: Tue, 18 Aug 2026 01:19:35 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:076d5b209f1bdaed19d1ddc286be41dc8490006a739a8ecc2734279aaab50596`  
		Last Modified: Tue, 18 Aug 2026 01:19:34 GMT  
		Size: 15.1 KB (15148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7aead9e3064e6d3765dd4a61769022b3a0ec63afb8e4f4c4d0b11926076776f`  
		Last Modified: Tue, 18 Aug 2026 01:19:35 GMT  
		Size: 6.1 MB (6098976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:5d3879f4de941902347329b0caa24db616ce3d5cd7ecc54426c648d3c8fad070
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324506 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9c0c26bcf272d6ae1960da40b9cded907e8233c626cf7022a041de848582161`

```dockerfile
```

-	Layers:
	-	`sha256:c0313b661781a38801fc1a40c56f91bdeae1faea44223d85ab0f62b73a8bc96b`  
		Last Modified: Tue, 18 Aug 2026 01:19:33 GMT  
		Size: 2.3 MB (2285526 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42a9e603ef0f5e3efe3a0e55aac75ced50303220f2f1b2ac424a89b793358886`  
		Last Modified: Tue, 18 Aug 2026 01:19:33 GMT  
		Size: 39.0 KB (38980 bytes)  
		MIME: application/vnd.in-toto+json
