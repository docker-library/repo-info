## `websphere-liberty:kernel-java8-ibmjava`

```console
$ docker pull websphere-liberty@sha256:45d48494e2872824969791ec68601fccc696fd4b7329867266dfbd0c3d9e0add
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
$ docker pull websphere-liberty@sha256:1ba0118a091ba286b36559f17d0b87cb0b32e2571baf13a6dc44aad68c440603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **191.2 MB (191161540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9384490f2e2418682430e05ca9a9eaed0ae578052d75979b189df3aa8af993d`
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
# Thu, 16 Jul 2026 00:37:14 GMT
USER root
# Thu, 16 Jul 2026 00:37:14 GMT
ARG VERBOSE=false
# Thu, 16 Jul 2026 00:37:14 GMT
ARG OPENJ9_SCC=true
# Thu, 16 Jul 2026 00:37:14 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Thu, 16 Jul 2026 00:37:14 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Thu, 16 Jul 2026 00:37:14 GMT
ARG LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c
# Thu, 16 Jul 2026 00:37:14 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.7 org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.7 com.ibm.websphere.liberty.version=26.0.0.7
# Thu, 16 Jul 2026 00:37:14 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 16 Jul 2026 00:37:14 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.7 BuildLabel=cl260720260702-0043
# Thu, 16 Jul 2026 00:37:14 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 16 Jul 2026 00:37:14 GMT
ARG LIBERTY_URL
# Thu, 16 Jul 2026 00:37:14 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 16 Jul 2026 00:37:26 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:37:26 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Thu, 16 Jul 2026 00:37:26 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 16 Jul 2026 00:37:26 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 16 Jul 2026 00:37:26 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Thu, 16 Jul 2026 00:37:26 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 16 Jul 2026 00:37:27 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 16 Jul 2026 00:37:31 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 16 Jul 2026 00:37:31 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Thu, 16 Jul 2026 00:37:31 GMT
USER 1001
# Thu, 16 Jul 2026 00:37:31 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 16 Jul 2026 00:37:31 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 16 Jul 2026 00:37:31 GMT
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
	-	`sha256:7b2a27ed352d1780a1ed5c9d8dc4f7283662d2a4a37a11497158f6e0aeade2e4`  
		Last Modified: Thu, 16 Jul 2026 00:37:41 GMT  
		Size: 113.9 KB (113945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f54a983ac71d7240eb037887b96d3e1e3374d18a45aaafee737d6aeca6e093c`  
		Last Modified: Thu, 16 Jul 2026 00:37:42 GMT  
		Size: 17.9 MB (17883830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbe5d774ba726282eaa8701b371b763da958f497ac7bab62fbb465dce3203df`  
		Last Modified: Thu, 16 Jul 2026 00:37:41 GMT  
		Size: 581.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88cf4053534453e0918ee3b9304b2a00e5ef156621c70004ecb1656a5f910822`  
		Last Modified: Thu, 16 Jul 2026 00:37:41 GMT  
		Size: 1.5 KB (1523 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a8dc6a1e0292c0f122bab46002c986cafdc92393903447d939440632c654cd3`  
		Last Modified: Thu, 16 Jul 2026 00:37:42 GMT  
		Size: 14.2 KB (14190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e233f04f0e6f7100b1f563f3060e449fe1266b484e6912ae813379d0f15611`  
		Last Modified: Thu, 16 Jul 2026 00:37:43 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5442b2736c082c8c8b4996341c8f7a4499fbb7f48fb49b0ebde5d028b499b66a`  
		Last Modified: Thu, 16 Jul 2026 00:37:43 GMT  
		Size: 15.1 KB (15069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31854e0414c3ab5ffcb223df75fb2e7c7971270ad3af3c5e97e0b799f41de09d`  
		Last Modified: Thu, 16 Jul 2026 00:37:43 GMT  
		Size: 5.8 MB (5750936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:d7a37b388aaf5920e892a3def0c4cb0010f951fb7578df8455414a8f3c835ed8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2324991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b78e8cea70edd96e513b5b8e8b702d3201bb3cfb3ee3410e2c29708bb75941a6`

```dockerfile
```

-	Layers:
	-	`sha256:a2d2687b00f4d7b9a4ef6af598b7e873a8256398d8785923615999dadbc8f173`  
		Last Modified: Thu, 16 Jul 2026 00:37:41 GMT  
		Size: 2.3 MB (2286377 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f43488ffef952244db7c1446dfe1967ed2900d987392009705d16fddfdb5cbfb`  
		Last Modified: Thu, 16 Jul 2026 00:37:41 GMT  
		Size: 38.6 KB (38614 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel-java8-ibmjava` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:e4b8c73a1cd2f503adc734dc2ede843b6c4b176f89d789914f7ac4f12357276c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.7 MB (196734476 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be92a6c97890a71d558d857940b0e06bd52fcb5c560d653f68366cd209cc824`
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
# Thu, 16 Jul 2026 01:03:15 GMT
USER root
# Thu, 16 Jul 2026 01:03:15 GMT
ARG VERBOSE=false
# Thu, 16 Jul 2026 01:03:15 GMT
ARG OPENJ9_SCC=true
# Thu, 16 Jul 2026 01:03:15 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Thu, 16 Jul 2026 01:03:15 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Thu, 16 Jul 2026 01:03:15 GMT
ARG LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c
# Thu, 16 Jul 2026 01:03:15 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.7 org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.7 com.ibm.websphere.liberty.version=26.0.0.7
# Thu, 16 Jul 2026 01:03:15 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 16 Jul 2026 01:03:15 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.7 BuildLabel=cl260720260702-0043
# Thu, 16 Jul 2026 01:03:15 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 16 Jul 2026 01:03:15 GMT
ARG LIBERTY_URL
# Thu, 16 Jul 2026 01:03:15 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 16 Jul 2026 01:03:30 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 01:03:30 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Thu, 16 Jul 2026 01:03:31 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 16 Jul 2026 01:03:31 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 16 Jul 2026 01:03:31 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Thu, 16 Jul 2026 01:03:32 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 16 Jul 2026 01:03:33 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 16 Jul 2026 01:03:43 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 16 Jul 2026 01:03:43 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Thu, 16 Jul 2026 01:03:43 GMT
USER 1001
# Thu, 16 Jul 2026 01:03:43 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 16 Jul 2026 01:03:43 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 16 Jul 2026 01:03:43 GMT
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
	-	`sha256:33297794e32812f1e30965884de7023469cf069494ac29206246b69e52f40d83`  
		Last Modified: Thu, 16 Jul 2026 01:04:08 GMT  
		Size: 118.5 KB (118514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60fbf3ba7c75bb6dba637b66ebb38d5ffaac3ad72e7c4d0649991ffa681b6ba3`  
		Last Modified: Thu, 16 Jul 2026 01:04:08 GMT  
		Size: 17.9 MB (17884404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2aa65bafc0d5ffde8659bbe31fb458f9aacc9ab4b4a33e4bbaa44143353bfcb9`  
		Last Modified: Thu, 16 Jul 2026 01:04:08 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7347493b79bc0d1616d362decd5d96322faed348ea5816008e2a1d1c752e8d74`  
		Last Modified: Thu, 16 Jul 2026 01:04:08 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a460127cc9c27057e5e43b182c2527cd1f5a1558bb2fc08d600ece0755d3acb`  
		Last Modified: Thu, 16 Jul 2026 01:04:09 GMT  
		Size: 14.2 KB (14191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab79eceeb447e4afab49bfda224fa17674dc8bfe2ff17d5365de38c81ace468`  
		Last Modified: Thu, 16 Jul 2026 01:04:09 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a268d7b757fd7d990737cf096fe5839272e59a8fbcaeac763dc9bbcd98d7cb28`  
		Last Modified: Thu, 16 Jul 2026 01:04:09 GMT  
		Size: 15.1 KB (15069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd4cf8c8b1d058401637a1e95d80f0dbf28bbeae3fe7d6e8c3dc7ccb023837b`  
		Last Modified: Thu, 16 Jul 2026 01:04:10 GMT  
		Size: 5.4 MB (5414133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:3d2ea79f3956759eb4ad68b101f2a1bc317eb38a713e7937c004e4f263976d60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2328300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abb7b18cc066d003501a688cf8bb945ed96a9aa82d9072d8411d3b472fd03d31`

```dockerfile
```

-	Layers:
	-	`sha256:f83511bd388da09044bf95485b04f5c74fd30850cca159caaf488af0cfee4d1b`  
		Last Modified: Thu, 16 Jul 2026 01:04:08 GMT  
		Size: 2.3 MB (2289646 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c0e39d4b2c2d4f2308709f3ae922bd6676e2809b7594382c227fd747dde8ca4e`  
		Last Modified: Thu, 16 Jul 2026 01:04:08 GMT  
		Size: 38.7 KB (38654 bytes)  
		MIME: application/vnd.in-toto+json

### `websphere-liberty:kernel-java8-ibmjava` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:f9b6649e0909c496805b705ef903dd02daf89eb94478d1ee822aa7fd63fdad5b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **188.4 MB (188378059 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e02da5c6eed0a428992f51bc1ba03155e86ab285e3fc944b9a5980d56504c32`
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
# Thu, 16 Jul 2026 00:36:01 GMT
USER root
# Thu, 16 Jul 2026 00:36:01 GMT
ARG VERBOSE=false
# Thu, 16 Jul 2026 00:36:01 GMT
ARG OPENJ9_SCC=true
# Thu, 16 Jul 2026 00:36:01 GMT
ARG LIBERTY_VERSION=26.0.0.7
# Thu, 16 Jul 2026 00:36:01 GMT
ARG LIBERTY_BUILD_LABEL=cl260720260702-0043
# Thu, 16 Jul 2026 00:36:01 GMT
ARG LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c
# Thu, 16 Jul 2026 00:36:01 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Thomas Watson, Wendy Raschke, Michal Broz org.opencontainers.image.vendor=IBM org.opencontainers.image.url=https://github.com/WASdev/ci.docker org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=26.0.0.7 org.opencontainers.image.revision=cl260720260702-0043 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM Semeru Runtime Open Edition OpenJDK with OpenJ9 and Ubuntu as the base OS.  For more information on this image please see https://ibm.biz/wl-app-image-template org.opencontainers.image.title=IBM WebSphere Liberty liberty.version=26.0.0.7 com.ibm.websphere.liberty.version=26.0.0.7
# Thu, 16 Jul 2026 00:36:01 GMT
ENV PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/helpers/runtime
# Thu, 16 Jul 2026 00:36:01 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=26.0.0.7 BuildLabel=cl260720260702-0043
# Thu, 16 Jul 2026 00:36:01 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c
RUN set -eux;     apt-get update;     apt-get install -y curl;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        aarch64|arm64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_aarch64';          DUMB_INIT_SHA256=b7d648f97154a99c539b63c55979cd29f005f88430fb383007fe3458340b795e;          ;;        amd64|x86_64)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_x86_64';          DUMB_INIT_SHA256=e874b55f3279ca41415d290c512a7ba9d08f98041b28ae7c2acb19a545f1c4df;          ;;        ppc64el|ppc64le)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_ppc64le';          DUMB_INIT_SHA256=3d15e80e29f0f4fa1fc686b00613a2220bc37e83a35283d4b4cca1fbd0a5609f;          ;;        s390x)          DUMB_INIT_URL='https://github.com/Yelp/dumb-init/releases/download/v1.2.5/dumb-init_1.2.5_s390x';          DUMB_INIT_SHA256=47e4601b152fc6dcb1891e66c30ecc62a2939fd7ffd1515a7c30f281cfec53b7;          ;;       *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     curl -LfsSo /usr/bin/dumb-init ${DUMB_INIT_URL};     echo "${DUMB_INIT_SHA256} */usr/bin/dumb-init" | sha256sum -c -;     chmod +x /usr/bin/dumb-init;     apt-get purge --auto-remove -y curl;     rm -rf /var/lib/apt/lists/*; # buildkit
# Thu, 16 Jul 2026 00:36:01 GMT
ARG LIBERTY_URL
# Thu, 16 Jul 2026 00:36:01 GMT
ARG DOWNLOAD_OPTIONS=
# Thu, 16 Jul 2026 00:36:08 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml | grep -E "^\s*kernel:.*${LIBERTY_VERSION}\.zip" | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && echo "$LIBERTY_SHA  /tmp/wlp.zip" > /tmp/wlp.zip.sha1     && sha1sum -c /tmp/wlp.zip.sha1     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && cp -a /opt/ibm/wlp/lafiles/. /licenses/     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 00:36:08 GMT
ENV LOG_DIR=/liberty/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Thu, 16 Jul 2026 00:36:09 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea     && rm -rf /opt/ibm/wlp/usr/servers/defaultServer/server.env # buildkit
# Thu, 16 Jul 2026 00:36:09 GMT
COPY NOTICES /opt/ibm/NOTICES # buildkit
# Thu, 16 Jul 2026 00:36:09 GMT
COPY helpers/ /opt/ibm/helpers/ # buildkit
# Thu, 16 Jul 2026 00:36:09 GMT
COPY fixes/ /opt/ibm/fixes/ # buildkit
# Thu, 16 Jul 2026 00:36:09 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN mkdir /logs     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm/wlp /liberty     && ln -s /opt/ibm/fixes /fixes     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R ug+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default     && ln -s /logs /liberty/logs     && mkdir /serviceability     && chown -R 1001:0 /serviceability     && chmod -R g+rw /serviceability # buildkit
# Thu, 16 Jul 2026 00:36:17 GMT
# ARGS: VERBOSE=false OPENJ9_SCC=true LIBERTY_VERSION=26.0.0.7 LIBERTY_BUILD_LABEL=cl260720260702-0043 LIBERTY_SHA=840bc8bd1677b3765dfb704521174c66f637415c LIBERTY_URL= DOWNLOAD_OPTIONS=
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output # buildkit
# Thu, 16 Jul 2026 00:36:17 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Thu, 16 Jul 2026 00:36:17 GMT
USER 1001
# Thu, 16 Jul 2026 00:36:17 GMT
EXPOSE map[9080/tcp:{} 9443/tcp:{}]
# Thu, 16 Jul 2026 00:36:17 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Thu, 16 Jul 2026 00:36:17 GMT
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
	-	`sha256:a62c360f6ff40cbaf861ea228afff6d9d4dee28e0865188a844077ab8e12af07`  
		Last Modified: Thu, 16 Jul 2026 00:36:33 GMT  
		Size: 114.9 KB (114909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67247a71ab4e574de6286fb6cc092cf29c22c9e5af3dc4df5a0caff85a7c6e5a`  
		Last Modified: Thu, 16 Jul 2026 00:36:34 GMT  
		Size: 17.9 MB (17883569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6dbb0d97de58829d4e5a90b77caa3acd84e350f6088c3176e994f83e452f9d`  
		Last Modified: Thu, 16 Jul 2026 00:36:33 GMT  
		Size: 582.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba65a8dcfe967f766dff2f204b2a8ce152da1a210db3374b9be8f38016c726d4`  
		Last Modified: Thu, 16 Jul 2026 00:36:33 GMT  
		Size: 1.5 KB (1524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593afd03dcdd691c72922d5dd965a4f23ff1a8b5da2c706b4c5ccb13554255c6`  
		Last Modified: Thu, 16 Jul 2026 00:36:34 GMT  
		Size: 14.2 KB (14193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d2190451d11a3d8b985b90dba2aca9a1c017d617d586415374d0923de380e9`  
		Last Modified: Thu, 16 Jul 2026 00:36:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed1bed8efa22f9811306c4a6eb5b805339607d57428b4a7b217ebbeb696d7bd`  
		Last Modified: Thu, 16 Jul 2026 00:36:35 GMT  
		Size: 15.1 KB (15055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6511da287dc06cdb7b70e0dc678304445977bb9bf61345181e21283c82bc9164`  
		Last Modified: Thu, 16 Jul 2026 00:36:35 GMT  
		Size: 6.1 MB (6111394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `websphere-liberty:kernel-java8-ibmjava` - unknown; unknown

```console
$ docker pull websphere-liberty@sha256:8429ef51118c86c0baa07d4b6f116fd7f1ee61a2ae33ec9653c0d352782e83d0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.3 MB (2323738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea4f4e9972ff164df272d506489e5247771a50a1b9a07a53d75d3c2c7042e6aa`

```dockerfile
```

-	Layers:
	-	`sha256:543c883726732cd2e11002d55ab936aa9964a0be2e4022954298291b72350f15`  
		Last Modified: Thu, 16 Jul 2026 00:36:34 GMT  
		Size: 2.3 MB (2285124 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1cf922b51549045e194663cc6e7c57bd27d103b732d0a56e5117475f9c4fd194`  
		Last Modified: Thu, 16 Jul 2026 00:36:34 GMT  
		Size: 38.6 KB (38614 bytes)  
		MIME: application/vnd.in-toto+json
