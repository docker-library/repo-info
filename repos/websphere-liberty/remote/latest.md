## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:d28bd4352d0d4754e5c92a8355268b59a346eb7723b494fed6fae86294632bbb
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
$ docker pull websphere-liberty@sha256:a2c2dafb1366fd74a8408fbfa8b77015702fd705c1ebd7c4b436a8f29e622c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.0 MB (595005265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7ff23b5c53f21ebfc6954a27d22ff00efecdf7673f0f310e9a16cace673534`
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
# Fri, 28 Aug 2026 22:23:23 GMT
ARG VERBOSE=false
# Fri, 28 Aug 2026 22:23:23 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Aug 2026 22:23:23 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Fri, 28 Aug 2026 22:23:23 GMT
COPY --chown=1001:0 server.xml /config/ # buildkit
# Fri, 28 Aug 2026 22:23:43 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
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
	-	`sha256:aac88873600877ccda3b0cc643dc84fd0c4a4bfca026976cc31f09c59df4ebb7`  
		Last Modified: Fri, 28 Aug 2026 22:24:18 GMT  
		Size: 387.9 MB (387882872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44815943ffdba3d1e12d2acc6dfb44aebdf866551ed3c71684e68170662a2b8c`  
		Last Modified: Fri, 28 Aug 2026 22:24:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72df3cc910d4121e443c9edc76582a0c21d50e084c3b567c42d50793f9b53640`  
		Last Modified: Fri, 28 Aug 2026 22:24:11 GMT  
		Size: 15.2 MB (15233810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:latest` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:20154156b4016ae239de0de2a7468d2463e9253e668ccb3b9d9171c535c4b8d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4420364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:521d1cadb1fff92a8436bba86ce6e8058d8155528e46842b8413602ff82f0d2f`

```dockerfile
```

-	Layers:
	-	`sha256:c89a4a133320e5e5eb99efb14a1f670d3c8be347e8487f2d3fc89f986af8a488`  
		Last Modified: Fri, 28 Aug 2026 22:24:10 GMT  
		Size: 4.4 MB (4401269 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6130e687ca3df32f160b096a58446b58a2854d05eeca9f5f9a93f141e0f54eac`  
		Last Modified: Fri, 28 Aug 2026 22:24:10 GMT  
		Size: 19.1 KB (19095 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:99c66723ef3f6716c4e3b52d4254095fcce3649a6d822fae365912171ea5fdb6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.0 MB (598043161 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0365749ca44e2646e140b2424b5cc52e13d31b075894cee103383cdaf2e3bd7`
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
# Fri, 28 Aug 2026 22:22:22 GMT
ARG VERBOSE=false
# Fri, 28 Aug 2026 22:22:22 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Aug 2026 22:22:22 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Fri, 28 Aug 2026 22:22:23 GMT
COPY --chown=1001:0 server.xml /config/ # buildkit
# Fri, 28 Aug 2026 22:23:13 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
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
	-	`sha256:642e7588237c9f3a1705ebcdf67bc08d2747db86e650c21aa3b4c978d5b965c6`  
		Last Modified: Fri, 28 Aug 2026 22:24:18 GMT  
		Size: 387.9 MB (387882734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bbb8121bc23908e381da09816f702bf5f3fbdc0fd37bc1a68c06ae921a80379`  
		Last Modified: Fri, 28 Aug 2026 22:24:10 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a971c1af528d7685454f849b85357486f27d85eed8ebf295e3faf561b3a64df5`  
		Last Modified: Fri, 28 Aug 2026 22:24:10 GMT  
		Size: 13.0 MB (13029438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:latest` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:2b13539e8364c802ad5d3dfea480e435e399933f9496f28ff4e8f90f54ce880a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4423678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86dda753e7e3a95851b9a3e924a8f0a2e4bc97151a499a385bb23ccb5f5db1cd`

```dockerfile
```

-	Layers:
	-	`sha256:9dd0d8f5caed6971b8ef4be4109e67d112b7b5149d8f7cb28864e0ae3a848828`  
		Last Modified: Fri, 28 Aug 2026 22:24:09 GMT  
		Size: 4.4 MB (4404544 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ce4ec0708a16539932d39762398dbee64e6c7a7f877d6efe1177711b42c0faf`  
		Last Modified: Fri, 28 Aug 2026 22:24:09 GMT  
		Size: 19.1 KB (19134 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:e65fa0890a8f1eb8116e07ef85c0265c74f5618c9d3a78e068b1e862f13f5a94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.1 MB (595087378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2730ab9989d3dd653343ec328dd45d0ff8492198b162fe4a094a7e911c31a9ad`
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
# Fri, 28 Aug 2026 22:22:03 GMT
ARG VERBOSE=false
# Fri, 28 Aug 2026 22:22:03 GMT
ARG REPOSITORIES_PROPERTIES=
# Fri, 28 Aug 2026 22:22:03 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Fri, 28 Aug 2026 22:22:04 GMT
COPY --chown=1001:0 server.xml /config/ # buildkit
# Fri, 28 Aug 2026 22:22:42 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
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
	-	`sha256:a4183e7ce33d85007d984b76defd01a70544d09d83d920018dbf2092c6308750`  
		Last Modified: Fri, 28 Aug 2026 22:23:37 GMT  
		Size: 387.9 MB (387882719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84aee1943683ef07312b7973300b1ebaa451e4dcc1d52656e9cdae420ecc6724`  
		Last Modified: Fri, 28 Aug 2026 22:23:29 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373730762ecab220ceecc849ccf6c4dc3279d94af2e79e789613d09f723f5bfa`  
		Last Modified: Fri, 28 Aug 2026 22:23:30 GMT  
		Size: 15.2 MB (15233467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:latest` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:b46004f1f05c0c4560152967f53d2fe21d2b485456034c42a112d93b59f079e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4419111 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3fe174ebfaf807d85a230aa32b4b3ce0f55aac08e48ea952f82551b120ae9b3`

```dockerfile
```

-	Layers:
	-	`sha256:b31438eaadd967f9323fd38be86ee01daa0370f118d03a822dac6031737898be`  
		Last Modified: Fri, 28 Aug 2026 22:23:29 GMT  
		Size: 4.4 MB (4400016 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8c66b9a95428505bda7514dd13aa2f1e432b6026ffdf7fc299f7ad19d200524`  
		Last Modified: Fri, 28 Aug 2026 22:23:29 GMT  
		Size: 19.1 KB (19095 bytes)  
		MIME: application/vnd.in-toto+json
