## `websphere-liberty:full-java8-ibmjava`

```console
$ docker pull websphere-liberty@sha256:b04083084f58befcd8443e9bd36ed9aa75b56f7c384f5c08630d47259e7d4def
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `websphere-liberty:full-java8-ibmjava` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:708378d22204fbd7f963e986eb8f507ab5b55ff8f9cd96162b635044e4e39a98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **595.0 MB (594959942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfea1b4d19202c600725af7e8c87cd3ba8ce2525683efe7a205c692d725933dc`
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
# Tue, 18 Aug 2026 01:18:19 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:18:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:18:19 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:18:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Tue, 18 Aug 2026 02:20:52 GMT
USER root
# Tue, 18 Aug 2026 02:20:52 GMT
ARG VERBOSE=false
# Tue, 18 Aug 2026 02:20:52 GMT
ARG OPENJ9_SCC=true
# Tue, 18 Aug 2026 02:20:52 GMT
ARG LIBERTY_VERSION=26.0.0.8
# Tue, 18 Aug 2026 02:20:52 GMT
ARG LIBERTY_BUILD_LABEL=cl260820260725-1102
# Tue, 18 Aug 2026 02:20:52 GMT
ARG LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
# Tue, 18 Aug 2026 02:20:52 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.8 org.opencontainers.image.revision=cl260820260725-1102 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.8 com.ibm.websphere.liberty.version=26.0.0.8
# Tue, 18 Aug 2026 02:20:52 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Tue, 18 Aug 2026 02:20:52 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.8 BuildLabel=cl260820260725-1102
# Tue, 18 Aug 2026 02:20:52 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Tue, 18 Aug 2026 02:20:52 GMT
ARG LIBERTY_URL
# Tue, 18 Aug 2026 02:20:52 GMT
ARG DOWNLOAD_OPTIONS=
# Tue, 18 Aug 2026 02:21:06 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 02:21:06 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Tue, 18 Aug 2026 02:21:06 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Tue, 18 Aug 2026 02:21:06 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Tue, 18 Aug 2026 02:21:06 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Tue, 18 Aug 2026 02:21:06 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Tue, 18 Aug 2026 02:21:06 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Tue, 18 Aug 2026 02:21:11 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.8 LIBERTY_BUILD_LABEL=cl260820260725-1102 LIBERTY_SHA=b1e668e68b05987880ce8ea20ba8ced87ee69cc3 LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Tue, 18 Aug 2026 02:21:11 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Tue, 18 Aug 2026 02:21:11 GMT
USER 1001
# Tue, 18 Aug 2026 02:21:11 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Tue, 18 Aug 2026 02:21:11 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Tue, 18 Aug 2026 02:21:11 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Tue, 18 Aug 2026 03:26:21 GMT
ARG VERBOSE=false
# Tue, 18 Aug 2026 03:26:21 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 18 Aug 2026 03:26:21 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Tue, 18 Aug 2026 03:26:21 GMT
COPY --chown=1001:0 server.xml /config/ # buildkit
# Tue, 18 Aug 2026 03:26:40 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5220b06eb3d6e3c89fb3067913b44fea7fbd6e446fdf7256da6c1ea1cd50e298`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 1.4 MB (1408986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf28c9544063b5941a8e069c95e0574e36967e1476a6ded29c4f5692669ff170`  
		Last Modified: Tue, 18 Aug 2026 01:18:44 GMT  
		Size: 137.0 MB (136952323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dc3db28929f85fb9ce3cd89734e45d613fc2b2dc5d271c37a8bd2b892f9b125`  
		Last Modified: Tue, 18 Aug 2026 02:21:21 GMT  
		Size: 114.0 KB (113997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c741ddb619eba993479800e52e262219e825bbc4def1fde34137c3594231014d`  
		Last Modified: Tue, 18 Aug 2026 02:21:21 GMT  
		Size: 17.9 MB (17938534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faec39b87ecd43f8ac0bbc66c0353b79552c01b2033be46ba6b87e22c7922b02`  
		Last Modified: Tue, 18 Aug 2026 02:21:21 GMT  
		Size: 577.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482da3739bbab5e289f47068a0db3b87fcc25ef82f6a260d5221768ee18388cd`  
		Last Modified: Tue, 18 Aug 2026 02:21:21 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c024bf3db5ffc9ad7dbb8a8bf000d1a242bcd4d580aedf1fa8984ed154f7f129`  
		Last Modified: Tue, 18 Aug 2026 02:21:22 GMT  
		Size: 14.3 KB (14271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b740c9d1e488bc3226a46bc0168021984d8401a68a8f9eae2ec7881e0796470`  
		Last Modified: Tue, 18 Aug 2026 02:21:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7c0fd3adabf0fafd3a7c1497a4b16a25a14512f65ee2462f9a1ab2de70d38bc`  
		Last Modified: Tue, 18 Aug 2026 02:21:22 GMT  
		Size: 15.1 KB (15134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be30e87128dbbad0677fdda932985cb7ec81e8780c02b1679edaeb5002a9399`  
		Last Modified: Tue, 18 Aug 2026 02:21:23 GMT  
		Size: 5.9 MB (5873371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e13eb5a68b811f9858fd461094dbbf70ef5f6c3f75b506104d73948bcb9dded`  
		Last Modified: Tue, 18 Aug 2026 03:27:13 GMT  
		Size: 387.9 MB (387882793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e00f4b638e1160039816bf00eacc77a5a3fac7c65626d941e4f3bdd4e816490`  
		Last Modified: Tue, 18 Aug 2026 03:27:05 GMT  
		Size: 945.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:214ed4509653fbf25a1592b73f9e4916904c065b07f2286ae41dc938ec84ad12`  
		Last Modified: Tue, 18 Aug 2026 03:27:06 GMT  
		Size: 15.0 MB (15020297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:4ff2f9e9e66559b79eecc5ad6d8f9328b3095520176b7a1597e8190f4aede755
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4418461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f17a54ecbc54b196d514ca4ec9ff5ed816732017830528aafecfcf1a28fc7c`

```dockerfile
```

-	Layers:
	-	`sha256:f0e19273fe5415d490a12ea80d4185d4403b1f46e613bc58157fb6c0aa6d1641`  
		Last Modified: Tue, 18 Aug 2026 03:27:05 GMT  
		Size: 4.4 MB (4399366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:384e2c1853717735a6395fe7da02850712fd54e8d2530ee8c2b5715c5856f354`  
		Last Modified: Tue, 18 Aug 2026 03:27:04 GMT  
		Size: 19.1 KB (19095 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:full-java8-ibmjava` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:3cfca4062fc869f52d64471e805f34cd283f86d1e17acfdc0c2b0052e8050428
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.2 MB (598184312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74752d82b55aeb42c14d1fa6ff44ceb0ee425cb7d05ed7e1ad28a4aea89d199a`
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
# Mon, 17 Aug 2026 22:19:35 GMT
ARG VERBOSE=false
# Mon, 17 Aug 2026 22:19:35 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 17 Aug 2026 22:19:35 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Mon, 17 Aug 2026 22:19:35 GMT
COPY --chown=1001:0 server.xml /config/ # buildkit
# Mon, 17 Aug 2026 22:20:22 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
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
	-	`sha256:5ae3981da8956867837e4367882cb39ec61f6e0e830547b8b123f7308f33d2f9`  
		Last Modified: Mon, 17 Aug 2026 22:21:37 GMT  
		Size: 387.9 MB (387882757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf9776ccf62baefaf05cf062ec42cdb2c43489d230c73e459e1cca483093a17a`  
		Last Modified: Mon, 17 Aug 2026 22:21:29 GMT  
		Size: 952.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5226940a6abdd0bfe6efc710cffc8de3b212cd234c861d315bcd796b713d5c94`  
		Last Modified: Mon, 17 Aug 2026 22:21:29 GMT  
		Size: 13.1 MB (13086291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:7101eb5f75be8b773f1e42b4f4ce24cb9954605402654c326afa6e5f71243e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4421776 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:803114f6891812af76b36b310cf717cc314c41662cc1aa92338c50520ebc195a`

```dockerfile
```

-	Layers:
	-	`sha256:f864df646145f55449869d4b8962a987e32be2f24cfbb73350e708b28be95360`  
		Last Modified: Mon, 17 Aug 2026 22:21:29 GMT  
		Size: 4.4 MB (4402641 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ba07ec20f56428f31227a5fff288b79b7db5be3acc9b29c3d79ff3ae8f6b94d`  
		Last Modified: Mon, 17 Aug 2026 22:21:28 GMT  
		Size: 19.1 KB (19135 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:full-java8-ibmjava` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:e72d4174d71ecf537fbadd9ac520a657acac2716c448f2af3a29f341e86b8b11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **594.9 MB (594934453 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:653e3e0165624e418d54eddf956503097ffdf1687c927a0e80d3929788c7a01a`
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
# Tue, 18 Aug 2026 02:24:42 GMT
ARG VERBOSE=false
# Tue, 18 Aug 2026 02:24:42 GMT
ARG REPOSITORIES_PROPERTIES=
# Tue, 18 Aug 2026 02:24:42 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN set -eux;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     mkdir /opt/ibm/wlp/etc/;     echo "$REPOSITORIES_PROPERTIES" > /opt/ibm/wlp/etc/repositories.properties;   fi;   installUtility install --acceptLicense baseBundle;   if [ ! -z "$REPOSITORIES_PROPERTIES" ]; then     rm /opt/ibm/wlp/etc/repositories.properties;   fi;   rm -rf /output/workarea /output/logs;   find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw; # buildkit
# Tue, 18 Aug 2026 02:24:42 GMT
COPY --chown=1001:0 server.xml /config/ # buildkit
# Tue, 18 Aug 2026 02:25:07 GMT
# ARGS: VERBOSE=false REPOSITORIES_PROPERTIES=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx # buildkit
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
	-	`sha256:4727adf93bc5b65685b92179498716e59600f9f5fa8aba21a48d52a3b40d4d9f`  
		Last Modified: Tue, 18 Aug 2026 02:25:54 GMT  
		Size: 387.9 MB (387883346 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69da8cbf81a3042e9662c17f0715a3a56f86f087f9c8a510709790bc87ea21c5`  
		Last Modified: Tue, 18 Aug 2026 02:25:46 GMT  
		Size: 947.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9091c4607945488dcedadb843d5f597fc77227be25c401216a9c78e1a86d0dd4`  
		Last Modified: Tue, 18 Aug 2026 02:25:47 GMT  
		Size: 15.0 MB (15013428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:full-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:a844b7ebdc44e90f33584f45f5f531373d573a99ec318b297aa55f634dc488fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.4 MB (4417208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf95ff0ea435d07e0589ffa840be005c3931c8c0149306f01c109371d448020d`

```dockerfile
```

-	Layers:
	-	`sha256:c5cc39b2a4f99328763c7ad4aada1cf77c45384c1bdb168aff1ad25c828a3499`  
		Last Modified: Tue, 18 Aug 2026 02:25:47 GMT  
		Size: 4.4 MB (4398113 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b33a40601d081715aef56ec0b8b8353a937bcc9932fad953903c2a0857d6c48`  
		Last Modified: Tue, 18 Aug 2026 02:25:46 GMT  
		Size: 19.1 KB (19095 bytes)  
		MIME: application/vnd.in-toto+json
