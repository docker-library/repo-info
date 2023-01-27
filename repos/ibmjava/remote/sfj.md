## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:fa50eacf0ff4c0d77b5d3d6c2038b1aa3c5ca72a2bf564c5f82e9243f4423bd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:9a8c9c507760fc400a4e6f50f82682d56431622d0070272bfed7109d5398db4c
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.7 MB (94669952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:886c59403e4d3d1775400fcd9df46709657c32cf64486438b1c33e303c546ca5`
-	Default Command: `["bash"]`

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
# Mon, 02 Jan 2023 20:29:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb548976980c436b15e59e0db7b4e99a7ed273df39e17db60047f950c2863c1b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='768e6f8df5c9735d703f2dd5352b7c063949d59c6e15bc7d5c31d7ac667a241a';          YML_FILE='8.0/sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1ce92e9c420b2d081c8cd63c8441b324e49348360490d61e08a0908b830748cb';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e790dc7707417153227e1f3164db1c699e3b6b9f697d9e1c9c9142bc0e3d3409';          YML_FILE='8.0/sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='bfac3d6409a7996301d948faedfd4c19920dbb667ba699b7fd4719188366be8b';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 20:29:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:919f119406b1013abec8030e9fa9bac8fce1e73fdba1491091941f73aa866890`  
		Last Modified: Mon, 02 Jan 2023 20:31:16 GMT  
		Size: 65.0 MB (65008863 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; 386

```console
$ docker pull ibmjava@sha256:358a43ad8b9ac09544689fdc444d1bdf13a3287c54b9b530efd11c13376bf2bf
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.5 MB (94532127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b44bdfb616f53825307df86b887023a7ddf27e4f7157035e917597294465868e`
-	Default Command: `["bash"]`

```dockerfile
# Mon, 02 Jan 2023 18:00:42 GMT
ADD file:dc76519390168deb6f9bb6052d08c6e7840908a831276d99bb19c6c245f8517b in / 
# Mon, 02 Jan 2023 18:00:43 GMT
CMD ["bash"]
# Mon, 02 Jan 2023 18:16:43 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 02 Jan 2023 18:17:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/*
# Mon, 02 Jan 2023 18:17:02 GMT
ENV JAVA_VERSION=8.0.7.20
# Mon, 02 Jan 2023 18:18:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb548976980c436b15e59e0db7b4e99a7ed273df39e17db60047f950c2863c1b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='768e6f8df5c9735d703f2dd5352b7c063949d59c6e15bc7d5c31d7ac667a241a';          YML_FILE='8.0/sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1ce92e9c420b2d081c8cd63c8441b324e49348360490d61e08a0908b830748cb';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e790dc7707417153227e1f3164db1c699e3b6b9f697d9e1c9c9142bc0e3d3409';          YML_FILE='8.0/sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='bfac3d6409a7996301d948faedfd4c19920dbb667ba699b7fd4719188366be8b';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 18:18:47 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:1b284dbae22f155bfee2a25073c97c9758e66aa7129a455cb533d8e2cbc873f9`  
		Last Modified: Mon, 02 Jan 2023 18:01:17 GMT  
		Size: 27.2 MB (27165399 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2bfed9768a70dc0ba56e7fd9969f79fa2ebac801784981b1c52ca8415df7ae55`  
		Last Modified: Mon, 02 Jan 2023 18:20:25 GMT  
		Size: 3.0 MB (2981625 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:97229bb82bc2a976df402be61e6622e55770c6ba9cf87bd06e661244bc3efc18`  
		Last Modified: Mon, 02 Jan 2023 18:21:02 GMT  
		Size: 64.4 MB (64385103 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:db90a3d215c62c13d4c599435ea8ca0dc42f334a3e6ac9c622f3ab753223fb80
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **98.8 MB (98807996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ea12b9713d342b429fce54ee1d81752ae4df44a4b661459ea313db81f3b3b6`
-	Default Command: `["bash"]`

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
# Mon, 02 Jan 2023 19:35:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb548976980c436b15e59e0db7b4e99a7ed273df39e17db60047f950c2863c1b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='768e6f8df5c9735d703f2dd5352b7c063949d59c6e15bc7d5c31d7ac667a241a';          YML_FILE='8.0/sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1ce92e9c420b2d081c8cd63c8441b324e49348360490d61e08a0908b830748cb';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e790dc7707417153227e1f3164db1c699e3b6b9f697d9e1c9c9142bc0e3d3409';          YML_FILE='8.0/sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='bfac3d6409a7996301d948faedfd4c19920dbb667ba699b7fd4719188366be8b';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 19:35:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:edabdd355b08b03a79e668c873c26d25b050b233d89afdbf4f91703b61522ac8`  
		Last Modified: Mon, 02 Jan 2023 19:39:30 GMT  
		Size: 65.3 MB (65289685 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:7cd56127c8c4f159931688824a905753589f8473f1a6186a84ad1b5e6988b6f4
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.2 MB (94161660 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c00d56664e895f93d1d96b243378537beca0d726ce8b86078ecd320750d1873f`
-	Default Command: `["bash"]`

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
# Mon, 02 Jan 2023 19:28:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bb548976980c436b15e59e0db7b4e99a7ed273df39e17db60047f950c2863c1b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        i386)          ESUM='768e6f8df5c9735d703f2dd5352b7c063949d59c6e15bc7d5c31d7ac667a241a';          YML_FILE='8.0/sfj/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='1ce92e9c420b2d081c8cd63c8441b324e49348360490d61e08a0908b830748cb';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390)          ESUM='e790dc7707417153227e1f3164db1c699e3b6b9f697d9e1c9c9142bc0e3d3409';          YML_FILE='8.0/sfj/linux/s390/index.yml';          ;;        s390x)          ESUM='bfac3d6409a7996301d948faedfd4c19920dbb667ba699b7fd4719188366be8b';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 19:28:13 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:d4a9e9ed63e7da009c62ea33c6f73750d1fcea6fcc64b23364167c874b57cf40`  
		Last Modified: Mon, 02 Jan 2023 19:31:02 GMT  
		Size: 66.1 MB (66123162 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
