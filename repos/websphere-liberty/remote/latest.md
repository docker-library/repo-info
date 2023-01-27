## `websphere-liberty:latest`

```console
$ docker pull websphere-liberty@sha256:b49daf2ea6ad60b1793d8e6b5472fe7b71078561971a25f72335700b579b9517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; ppc64le
	-	linux; s390x

### `websphere-liberty:latest` - linux; amd64

```console
$ docker pull websphere-liberty@sha256:06c6974b009e35ad85152e43b67e2fc580a640a5bb354422ea0a9704acaad275
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.1 MB (520102442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6661f5c404f56974d676e4030b574b2e2a03156b4c84a3a2a71d18df5040ed6c`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 02 Jan 2023 18:48:55 GMT
ADD file:132da97f77ddc534ddb931a461d83ac2aa601dd4481360c874eac33b6c3470d9 in / 
# Mon, 02 Jan 2023 18:48:56 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 20:27:17 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 02 Jan 2023 20:27:25 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 20:27:25 GMT
ENV JAVA_VERSION=8.0.7.20
# Mon, 02 Jan 2023 20:28:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='4abf605bdffc703f48c506177ee874da9498a4ee5ef322bfb9b4170b097bf2a8';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='225a8406e9a3134eb8674206caa131a7d5f528de96797a7a0cf69e292465d205';          YML_FILE='8.0/jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='052efe7ee98f17af3f027c11b9ef57edd136bf9431b8264a790d48cce905fffd';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='47384a0933d2a60b0126eeb49c44be66124320f70355cd09a238a830906819ff';          YML_FILE='8.0/jre/linux/s390/index.yml';          ;;        s390x)          ESUM='bea07ae6d8d56ad7ae2d4937bed352d39622d364be848a036b111fdf15e50cab';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 20:28:23 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jan 2023 21:11:17 GMT
ARG VERBOSE=false
# Mon, 02 Jan 2023 21:11:17 GMT
ARG OPENJ9_SCC=true
# Mon, 02 Jan 2023 21:11:17 GMT
ARG EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530
# Mon, 02 Jan 2023 21:11:17 GMT
ARG NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0
# Mon, 02 Jan 2023 21:11:17 GMT
ARG NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc
# Mon, 02 Jan 2023 21:11:17 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Arthur De Magalhaes, Chris Potter org.opencontainers.image.vendor=IBM org.opencontainers.image.url=http://wasdev.net org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=22.0.0.13 org.opencontainers.image.revision=cl221320221205-1900 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM's Java and Ubuntu as the base OS.  For more information on this image please see https://github.com/WASdev/ci.docker#building-an-application-image org.opencontainers.image.title=IBM WebSphere Liberty
# Mon, 02 Jan 2023 21:11:17 GMT
ENV LIBERTY_VERSION=22.0.0_13
# Mon, 02 Jan 2023 21:11:17 GMT
ARG LIBERTY_URL
# Mon, 02 Jan 2023 21:11:17 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 02 Jan 2023 21:11:34 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && LICENSE_BASE=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*license:\s//p' | sed 's/\(.*\)\/.*/\1\//' | tr -d '\r')     && wget ${LICENSE_BASE}en.html -U UA-IBM-WebSphere-Liberty-Docker -O /licenses/en.html     && wget ${LICENSE_BASE}non_ibm_license.html -U UA-IBM-WebSphere-Liberty-Docker -O /licenses/non_ibm_license.html     && wget ${LICENSE_BASE}notices.html -U UA-IBM-WebSphere-Liberty-Docker -O /licenses/notices.html     && echo "$EN_SHA /licenses/en.html" | sha256sum -c --strict --check     && echo "$NON_IBM_SHA /licenses/non_ibm_license.html" | sha256sum -c --strict --check     && echo "$NOTICES_SHA /licenses/notices.html" | sha256sum -c --strict --check     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 21:11:34 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jan 2023 21:11:34 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=22.0.0.13 BuildLabel=cl221320221205-1900
# Mon, 02 Jan 2023 21:11:34 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Mon, 02 Jan 2023 21:11:35 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc VERBOSE=false
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 02 Jan 2023 21:11:35 GMT
COPY dir:8bf844c49178cf63745af9ec643f57d70bd92c28166fabfad188dfc250d88353 in /opt/ibm/helpers/ 
# Mon, 02 Jan 2023 21:11:35 GMT
COPY dir:1cf5cc2663c6235241a5228340a9c566587fe27b3e434a313debbf75dacd7a4b in /opt/ibm/fixes/ 
# Mon, 02 Jan 2023 21:11:36 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc VERBOSE=false
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Mon, 02 Jan 2023 21:11:45 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output
# Mon, 02 Jan 2023 21:11:45 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Mon, 02 Jan 2023 21:11:45 GMT
USER 1001
# Mon, 02 Jan 2023 21:11:45 GMT
EXPOSE 9080 9443
# Mon, 02 Jan 2023 21:11:45 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Mon, 02 Jan 2023 21:11:45 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 02 Jan 2023 21:11:54 GMT
ARG VERBOSE=false
# Mon, 02 Jan 2023 21:11:54 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 02 Jan 2023 21:20:52 GMT
# ARGS: REPOSITORIES_PROPERTIES= VERBOSE=false
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense baseBundle   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs   && find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw
# Mon, 02 Jan 2023 21:20:53 GMT
COPY --chown=1001:0file:f212cc38605f508baa0f75a07632700533ad28792dd9761a792209e709b00f23 in /config/ 
# Mon, 02 Jan 2023 21:21:23 GMT
# ARGS: REPOSITORIES_PROPERTIES= VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx
```

-	Layers:
	-	`sha256:a055bf07b5b05332897ea9a464c5e76a507fafe72fa21370d3fccaf07d55f360`  
		Last Modified: Thu, 15 Dec 2022 21:00:39 GMT  
		Size: 26.7 MB (26711442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3b880d82c6d9aaa49caeb3df4f656f8ad6f0d4988b5a46ef9cad4b6a7742020d`  
		Last Modified: Mon, 02 Jan 2023 20:30:49 GMT  
		Size: 2.9 MB (2949647 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bd9aa28a11bfcdd7f0be6ccfed8fd0ba93e0be893e7eaa555306ed8f61ba7fc`  
		Last Modified: Mon, 02 Jan 2023 20:30:58 GMT  
		Size: 129.3 MB (129322620 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6297dfacea41b3b1f60ef7a92f4484af6ddefe354886499a1c699c7e7f7794a4`  
		Last Modified: Mon, 02 Jan 2023 21:41:48 GMT  
		Size: 14.3 MB (14284363 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b469d7b420b57b2b9c6e708e1622fd2a60d496529504ce703e8f8bbccab1cd4a`  
		Last Modified: Mon, 02 Jan 2023 21:41:45 GMT  
		Size: 685.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:450c9b092131f00d9a2b044534116431e3e1fec9cd87cc345c22dd72be69e51b`  
		Last Modified: Mon, 02 Jan 2023 21:41:45 GMT  
		Size: 9.8 KB (9757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9b242301a5a8e6199b7464bec392d0a3fe458ebbc8f18a031cdab16146caa28d`  
		Last Modified: Mon, 02 Jan 2023 21:41:45 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a8e591ed1e31eaa33afd8ef24c95ee592426839ade0cc1bc9ab9c51f1283e15b`  
		Last Modified: Mon, 02 Jan 2023 21:41:45 GMT  
		Size: 10.7 KB (10746 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:64f0d9e770d5a624f1f34e871f45de98396683be0cb64c11890f7a778cbaab65`  
		Last Modified: Mon, 02 Jan 2023 21:41:46 GMT  
		Size: 5.9 MB (5860147 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:99131fa6e1eaad0ef0d83f09a6e53842eafc814fafa9b66b28019779827d9110`  
		Last Modified: Mon, 02 Jan 2023 21:42:12 GMT  
		Size: 324.9 MB (324939761 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:179aa97bfaf945bed6928335846bfa38def7b366c5ec75d7b0466cde15a22caf`  
		Last Modified: Mon, 02 Jan 2023 21:41:55 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0b4ba9a0750aa638208c046ef6ff9ae33f46163146fc4c269fcded60860e6651`  
		Last Modified: Mon, 02 Jan 2023 21:41:58 GMT  
		Size: 16.0 MB (16012058 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; ppc64le

```console
$ docker pull websphere-liberty@sha256:a0246592a17dba48d904e90194b899b1e87c23c17f335eadab432780c7859f70
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.1 MB (521126137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db8a85a9a141b52cbe6a37fb6b9f4910a07e6b59551117906a79038aea6ccd0a`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 02 Jan 2023 19:01:19 GMT
ADD file:0bfaa9e69327bfd3f89d58fa598804b1e047724a7fa74ce6b8b79d10a39622d5 in / 
# Mon, 02 Jan 2023 19:01:21 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:30:43 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 02 Jan 2023 19:30:55 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:30:56 GMT
ENV JAVA_VERSION=8.0.7.20
# Mon, 02 Jan 2023 19:33:44 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='4abf605bdffc703f48c506177ee874da9498a4ee5ef322bfb9b4170b097bf2a8';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='225a8406e9a3134eb8674206caa131a7d5f528de96797a7a0cf69e292465d205';          YML_FILE='8.0/jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='052efe7ee98f17af3f027c11b9ef57edd136bf9431b8264a790d48cce905fffd';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='47384a0933d2a60b0126eeb49c44be66124320f70355cd09a238a830906819ff';          YML_FILE='8.0/jre/linux/s390/index.yml';          ;;        s390x)          ESUM='bea07ae6d8d56ad7ae2d4937bed352d39622d364be848a036b111fdf15e50cab';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 19:33:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jan 2023 20:09:08 GMT
ARG VERBOSE=false
# Mon, 02 Jan 2023 20:09:09 GMT
ARG OPENJ9_SCC=true
# Mon, 02 Jan 2023 20:09:09 GMT
ARG EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530
# Mon, 02 Jan 2023 20:09:09 GMT
ARG NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0
# Mon, 02 Jan 2023 20:09:09 GMT
ARG NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc
# Mon, 02 Jan 2023 20:09:10 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Arthur De Magalhaes, Chris Potter org.opencontainers.image.vendor=IBM org.opencontainers.image.url=http://wasdev.net org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=22.0.0.13 org.opencontainers.image.revision=cl221320221205-1900 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM's Java and Ubuntu as the base OS.  For more information on this image please see https://github.com/WASdev/ci.docker#building-an-application-image org.opencontainers.image.title=IBM WebSphere Liberty
# Mon, 02 Jan 2023 20:09:10 GMT
ENV LIBERTY_VERSION=22.0.0_13
# Mon, 02 Jan 2023 20:09:10 GMT
ARG LIBERTY_URL
# Mon, 02 Jan 2023 20:09:11 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 02 Jan 2023 20:09:50 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && LICENSE_BASE=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*license:\s//p' | sed 's/\(.*\)\/.*/\1\//' | tr -d '\r')     && wget ${LICENSE_BASE}en.html -U UA-IBM-WebSphere-Liberty-Docker -O /licenses/en.html     && wget ${LICENSE_BASE}non_ibm_license.html -U UA-IBM-WebSphere-Liberty-Docker -O /licenses/non_ibm_license.html     && wget ${LICENSE_BASE}notices.html -U UA-IBM-WebSphere-Liberty-Docker -O /licenses/notices.html     && echo "$EN_SHA /licenses/en.html" | sha256sum -c --strict --check     && echo "$NON_IBM_SHA /licenses/non_ibm_license.html" | sha256sum -c --strict --check     && echo "$NOTICES_SHA /licenses/notices.html" | sha256sum -c --strict --check     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 20:09:50 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jan 2023 20:09:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=22.0.0.13 BuildLabel=cl221320221205-1900
# Mon, 02 Jan 2023 20:09:51 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Mon, 02 Jan 2023 20:09:53 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc VERBOSE=false
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 02 Jan 2023 20:09:53 GMT
COPY dir:8bf844c49178cf63745af9ec643f57d70bd92c28166fabfad188dfc250d88353 in /opt/ibm/helpers/ 
# Mon, 02 Jan 2023 20:09:54 GMT
COPY dir:1cf5cc2663c6235241a5228340a9c566587fe27b3e434a313debbf75dacd7a4b in /opt/ibm/fixes/ 
# Mon, 02 Jan 2023 20:09:56 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc VERBOSE=false
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Mon, 02 Jan 2023 20:10:10 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output
# Mon, 02 Jan 2023 20:10:11 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Mon, 02 Jan 2023 20:10:11 GMT
USER 1001
# Mon, 02 Jan 2023 20:10:12 GMT
EXPOSE 9080 9443
# Mon, 02 Jan 2023 20:10:12 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Mon, 02 Jan 2023 20:10:12 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 02 Jan 2023 20:10:26 GMT
ARG VERBOSE=false
# Mon, 02 Jan 2023 20:10:27 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 02 Jan 2023 20:26:32 GMT
# ARGS: REPOSITORIES_PROPERTIES= VERBOSE=false
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense baseBundle   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs   && find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw
# Mon, 02 Jan 2023 20:26:38 GMT
COPY --chown=1001:0file:f212cc38605f508baa0f75a07632700533ad28792dd9761a792209e709b00f23 in /config/ 
# Mon, 02 Jan 2023 20:27:34 GMT
# ARGS: REPOSITORIES_PROPERTIES= VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx
```

-	Layers:
	-	`sha256:b0461f07ee3325b91e2abe6d0903319c9b81e89e23b6991a65302059fa916485`  
		Last Modified: Mon, 02 Jan 2023 19:02:55 GMT  
		Size: 30.4 MB (30442485 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f060e3f08f1800e0674f99557436462ceef1e756aae3d807e7046dcfeacb257`  
		Last Modified: Mon, 02 Jan 2023 19:38:50 GMT  
		Size: 3.1 MB (3075826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2244ed31beafcee6d4a42c44bbd087ed14e795017142a21f09be45c3e44fc17d`  
		Last Modified: Mon, 02 Jan 2023 19:39:06 GMT  
		Size: 129.0 MB (128996373 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1b3f5372d4bb7ea85725260cf09b37f9885a4542f3b6f9febcbc8165971facd4`  
		Last Modified: Mon, 02 Jan 2023 21:06:24 GMT  
		Size: 14.3 MB (14284813 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a961e5d1cae1f1c423ca4c7b54a53011df267948895270ad198ab0f288dff054`  
		Last Modified: Mon, 02 Jan 2023 21:06:20 GMT  
		Size: 677.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5643c77e1ab3824605397db490f67e9a3bba471640028a35b8949a7560626194`  
		Last Modified: Mon, 02 Jan 2023 21:06:20 GMT  
		Size: 9.8 KB (9757 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:67b8fe7d477bbedd0cff80972dbf68b5a4f75a911445fe337e33cf54cd2b5e2b`  
		Last Modified: Mon, 02 Jan 2023 21:06:20 GMT  
		Size: 272.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6eef1c056f47158c1c6e3f9686b3ffc1c6044ff5670cc828070adaca12c5bd6c`  
		Last Modified: Mon, 02 Jan 2023 21:06:20 GMT  
		Size: 10.7 KB (10735 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4461a4ded7a25c9cbb35ad57dfb6d8cfd56f0c8bbf9bfc130502b20394e9ee12`  
		Last Modified: Mon, 02 Jan 2023 21:06:21 GMT  
		Size: 5.6 MB (5558616 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4ec1445cf7b1c2645c89bac96d16dbbaa3123bb2d47fdf3cdb05a7f2f397a7de`  
		Last Modified: Mon, 02 Jan 2023 21:07:03 GMT  
		Size: 324.9 MB (324940379 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:447e72ed67ba1a65cae68087a363f959233e28a5950be326e4ba22d6ede4cfd1`  
		Last Modified: Mon, 02 Jan 2023 21:06:33 GMT  
		Size: 944.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2c6276f7f0a1b0a7f5bfc4d40d36893c5ac4125ef1d3daeb37e39af9fb2ec841`  
		Last Modified: Mon, 02 Jan 2023 21:06:37 GMT  
		Size: 13.8 MB (13805260 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `websphere-liberty:latest` - linux; s390x

```console
$ docker pull websphere-liberty@sha256:e0e553cd7746a828c37a655b164e9870ffc6d3d746fc83e72de14fc00f39d313
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **515.6 MB (515638157 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b57625e242c015fc952464c23ef46d022a3da7c38f499df4ba78e67ba810a2e2`
-	Entrypoint: `["\/opt\/ibm\/helpers\/runtime\/docker-server.sh"]`
-	Default Command: `["\/opt\/ibm\/wlp\/bin\/server","run","defaultServer"]`

```dockerfile
# Mon, 02 Jan 2023 18:43:32 GMT
ADD file:735e44144d502635bb4630f743d35453afe550177166dec1f1f6f698c04d4a07 in / 
# Mon, 02 Jan 2023 18:43:35 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 19:25:35 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 02 Jan 2023 19:25:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 19:25:52 GMT
ENV JAVA_VERSION=8.0.7.20
# Mon, 02 Jan 2023 19:26:55 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='4abf605bdffc703f48c506177ee874da9498a4ee5ef322bfb9b4170b097bf2a8';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        i386)          ESUM='225a8406e9a3134eb8674206caa131a7d5f528de96797a7a0cf69e292465d205';          YML_FILE='8.0/jre/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='052efe7ee98f17af3f027c11b9ef57edd136bf9431b8264a790d48cce905fffd';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390)          ESUM='47384a0933d2a60b0126eeb49c44be66124320f70355cd09a238a830906819ff';          YML_FILE='8.0/jre/linux/s390/index.yml';          ;;        s390x)          ESUM='bea07ae6d8d56ad7ae2d4937bed352d39622d364be848a036b111fdf15e50cab';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 19:27:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
# Mon, 02 Jan 2023 20:15:25 GMT
ARG VERBOSE=false
# Mon, 02 Jan 2023 20:15:26 GMT
ARG OPENJ9_SCC=true
# Mon, 02 Jan 2023 20:15:26 GMT
ARG EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530
# Mon, 02 Jan 2023 20:15:27 GMT
ARG NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0
# Mon, 02 Jan 2023 20:15:27 GMT
ARG NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc
# Mon, 02 Jan 2023 20:15:28 GMT
LABEL org.opencontainers.image.authors=Leo Christy Jesuraj, Arthur De Magalhaes, Chris Potter org.opencontainers.image.vendor=IBM org.opencontainers.image.url=http://wasdev.net org.opencontainers.image.documentation=https://www.ibm.com/support/knowledgecenter/SSAW57_liberty/com.ibm.websphere.wlp.nd.multiplatform.doc/ae/cwlp_about.html org.opencontainers.image.version=22.0.0.13 org.opencontainers.image.revision=cl221320221205-1900 org.opencontainers.image.description=This image contains the WebSphere Liberty runtime with IBM's Java and Ubuntu as the base OS.  For more information on this image please see https://github.com/WASdev/ci.docker#building-an-application-image org.opencontainers.image.title=IBM WebSphere Liberty
# Mon, 02 Jan 2023 20:15:28 GMT
ENV LIBERTY_VERSION=22.0.0_13
# Mon, 02 Jan 2023 20:15:29 GMT
ARG LIBERTY_URL
# Mon, 02 Jan 2023 20:15:30 GMT
ARG DOWNLOAD_OPTIONS=
# Mon, 02 Jan 2023 20:15:47 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc OPENJ9_SCC=true VERBOSE=false
RUN apt-get update     && apt-get install -y --no-install-recommends unzip wget openssl     && rm -rf /var/lib/apt/lists/*     && mkdir -p /licenses/     && useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default     && LIBERTY_URL=${LIBERTY_URL:-$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*kernel:\s//p' | tr -d '\r' )}      && wget $DOWNLOAD_OPTIONS $LIBERTY_URL -U UA-IBM-WebSphere-Liberty-Docker -O /tmp/wlp.zip     && unzip -q /tmp/wlp.zip -d /opt/ibm     && rm /tmp/wlp.zip     && chown -R 1001:0 /opt/ibm/wlp     && chmod -R g+rw /opt/ibm/wlp     && LICENSE_BASE=$(wget -q -O - https://public.dhe.ibm.com/ibmdl/export/pub/software/websphere/wasdev/downloads/wlp/index.yml  | grep $LIBERTY_VERSION -A 6 | sed -n 's/\s*license:\s//p' | sed 's/\(.*\)\/.*/\1\//' | tr -d '\r')     && wget ${LICENSE_BASE}en.html -U UA-IBM-WebSphere-Liberty-Docker -O /licenses/en.html     && wget ${LICENSE_BASE}non_ibm_license.html -U UA-IBM-WebSphere-Liberty-Docker -O /licenses/non_ibm_license.html     && wget ${LICENSE_BASE}notices.html -U UA-IBM-WebSphere-Liberty-Docker -O /licenses/notices.html     && echo "$EN_SHA /licenses/en.html" | sha256sum -c --strict --check     && echo "$NON_IBM_SHA /licenses/non_ibm_license.html" | sha256sum -c --strict --check     && echo "$NOTICES_SHA /licenses/notices.html" | sha256sum -c --strict --check     && apt-get purge --auto-remove -y unzip     && apt-get purge --auto-remove -y wget     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 20:15:49 GMT
ENV PATH=/opt/ibm/wlp/bin:/opt/ibm/helpers/build:/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 02 Jan 2023 20:15:50 GMT
LABEL ProductID=fbf6a96d49214c0abc6a3bc5da6e48cd ProductName=WebSphere Application Server Liberty ProductVersion=22.0.0.13 BuildLabel=cl221320221205-1900
# Mon, 02 Jan 2023 20:15:51 GMT
ENV LOG_DIR=/logs WLP_OUTPUT_DIR=/opt/ibm/wlp/output OPENJ9_SCC=true
# Mon, 02 Jan 2023 20:15:53 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc VERBOSE=false
RUN /opt/ibm/wlp/bin/server create     && rm -rf $WLP_OUTPUT_DIR/.classCache /output/workarea
# Mon, 02 Jan 2023 20:15:54 GMT
COPY dir:8bf844c49178cf63745af9ec643f57d70bd92c28166fabfad188dfc250d88353 in /opt/ibm/helpers/ 
# Mon, 02 Jan 2023 20:15:54 GMT
COPY dir:1cf5cc2663c6235241a5228340a9c566587fe27b3e434a313debbf75dacd7a4b in /opt/ibm/fixes/ 
# Mon, 02 Jan 2023 20:15:56 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc VERBOSE=false
RUN mkdir /logs     && mkdir /etc/wlp     && mkdir -p /opt/ibm/wlp/usr/shared/resources/lib.index.cache     && mkdir -p /home/default     && mkdir /output     && chmod -t /output     && rm -rf /output     && ln -s $WLP_OUTPUT_DIR/defaultServer /output     && ln -s /opt/ibm/wlp/usr/servers/defaultServer /config     && ln -s /opt/ibm /liberty     && ln -s /opt/ibm/wlp/usr/shared/resources/lib.index.cache /lib.index.cache     && mkdir -p /config/configDropins/defaults     && mkdir -p /config/configDropins/overrides     && chown -R 1001:0 /config     && chmod -R g+rw /config     && chown -R 1001:0 /opt/ibm/helpers     && chmod -R g+rwx /opt/ibm/helpers     && chown -R 1001:0 /opt/ibm/fixes     && chmod -R g+rwx /opt/ibm/fixes     && chown -R 1001:0 /opt/ibm/wlp/usr     && chmod -R g+rw /opt/ibm/wlp/usr     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rw /opt/ibm/wlp/output     && chown -R 1001:0 /logs     && chmod -R g+rw /logs     && chown -R 1001:0 /etc/wlp     && chmod -R g+rw /etc/wlp     && chown -R 1001:0 /home/default     && chmod -R g+rw /home/default
# Mon, 02 Jan 2023 20:16:09 GMT
# ARGS: DOWNLOAD_OPTIONS= EN_SHA=5062904442242bf7935fadec638812cdbce614a7d22d5dc267b7b47767a81530 NON_IBM_SHA=a0a7b4082bb39a2435f7ddc4d383746bf09d05834b545dd3dfa4405f6e4e9ff0 NOTICES_SHA=7376962045d167dddb46459382b15a4a6811feb29e032420f7f95383dba2a3dc VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && chown -R 1001:0 /opt/ibm/wlp/output     && chmod -R g+rwx /opt/ibm/wlp/output
# Mon, 02 Jan 2023 20:16:11 GMT
ENV RANDFILE=/tmp/.rnd IBM_JAVA_OPTIONS=-Xshareclasses:name=liberty,readonly,nonfatal,cacheDir=/output/.classCache/ -Dosgi.checkConfiguration=false -XX:+UseContainerSupport
# Mon, 02 Jan 2023 20:16:11 GMT
USER 1001
# Mon, 02 Jan 2023 20:16:12 GMT
EXPOSE 9080 9443
# Mon, 02 Jan 2023 20:16:13 GMT
ENTRYPOINT ["/opt/ibm/helpers/runtime/docker-server.sh"]
# Mon, 02 Jan 2023 20:16:13 GMT
CMD ["/opt/ibm/wlp/bin/server" "run" "defaultServer"]
# Mon, 02 Jan 2023 20:16:37 GMT
ARG VERBOSE=false
# Mon, 02 Jan 2023 20:16:38 GMT
ARG REPOSITORIES_PROPERTIES=
# Mon, 02 Jan 2023 20:25:31 GMT
# ARGS: REPOSITORIES_PROPERTIES= VERBOSE=false
RUN if [ ! -z $REPOSITORIES_PROPERTIES ]; then mkdir /opt/ibm/wlp/etc/   && echo $REPOSITORIES_PROPERTIES > /opt/ibm/wlp/etc/repositories.properties; fi   && installUtility install --acceptLicense baseBundle   && if [ ! -z $REPOSITORIES_PROPERTIES ]; then rm /opt/ibm/wlp/etc/repositories.properties; fi   && rm -rf /output/workarea /output/logs   && find /opt/ibm/wlp ! -perm -g=rw -print0 | xargs -r -0 chmod g+rw
# Mon, 02 Jan 2023 20:25:56 GMT
COPY --chown=1001:0file:f212cc38605f508baa0f75a07632700533ad28792dd9761a792209e709b00f23 in /config/ 
# Mon, 02 Jan 2023 20:26:33 GMT
# ARGS: REPOSITORIES_PROPERTIES= VERBOSE=false
RUN if [ "$OPENJ9_SCC" = "true" ]; then populate_scc.sh; fi     && rm -rf /output/messaging /output/resources/security /logs/* $WLP_OUTPUT_DIR/.classCache     && find /opt/ibm/wlp/output ! -path "*.classCache*" ! -perm -g=rwx -print0 | xargs -0 -r chmod g+rwx
```

-	Layers:
	-	`sha256:22dceda0ac2bcb2588338678999c8d219d3822e36f9e1f3c16e9cd33703c859b`  
		Last Modified: Mon, 02 Jan 2023 18:45:16 GMT  
		Size: 25.4 MB (25371161 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:20fc0762dd6cf8471cf9aaebbc2a65923a2797495d73bb277a7bb18401e8ea88`  
		Last Modified: Mon, 02 Jan 2023 19:30:37 GMT  
		Size: 2.7 MB (2667337 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:01f1d0e78e336fa4c4a6ee954ab4bf08cb09552c21aa8b8f2d8e234f37e30107`  
		Last Modified: Mon, 02 Jan 2023 19:30:46 GMT  
		Size: 126.5 MB (126472613 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:60a8f946b8b0d676f68a4508d4f6a9e63c0a3f761513d851d462a2fe0e63357c`  
		Last Modified: Mon, 02 Jan 2023 20:50:24 GMT  
		Size: 14.3 MB (14284442 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b65ef266d65cf37dc295db647df4dc4fb4fabfcdb45a218e35187d41ae9662e3`  
		Last Modified: Mon, 02 Jan 2023 20:50:22 GMT  
		Size: 679.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:69966066e431810ff7abc83e0921053829fc55c7ccc48fdfdd0f05cc7fd2b362`  
		Last Modified: Mon, 02 Jan 2023 20:50:22 GMT  
		Size: 9.8 KB (9751 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cf85f451d60109a0610f16b7b13c3fb9292a7a610584a6b9be28a14ba37924e`  
		Last Modified: Mon, 02 Jan 2023 20:50:22 GMT  
		Size: 271.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:98fc6a02abb9ef19a74597beabaf70525531b3c6c0dfd6290e427f84d999a32e`  
		Last Modified: Mon, 02 Jan 2023 20:50:22 GMT  
		Size: 10.7 KB (10739 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6d458ef0efd9a062e1963a1fd6feb551092e54d711103a67e23412a1b9f4e403`  
		Last Modified: Mon, 02 Jan 2023 20:50:22 GMT  
		Size: 6.1 MB (6060449 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c45d0b288165a4ad9e96d90276c063d27a45c8bd1b42876bb2afaf32820b94b0`  
		Last Modified: Mon, 02 Jan 2023 20:50:46 GMT  
		Size: 324.9 MB (324939676 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c09530e056c8579637585359e8e2e162524225aa8544c0b1e0ea16ea70540eb7`  
		Last Modified: Mon, 02 Jan 2023 20:50:32 GMT  
		Size: 947.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:134dab431b90565c3ca5cde7c3695b62646e7507447d6452c83e4549b0f53f04`  
		Last Modified: Mon, 02 Jan 2023 20:50:34 GMT  
		Size: 15.8 MB (15820092 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
