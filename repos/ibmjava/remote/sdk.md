## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:19b6e26d46e97d17b2f1b91b017244ffa0f0ca1e0d9de772b0da1d267f102d80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 4
	-	linux; amd64
	-	linux; 386
	-	linux; ppc64le
	-	linux; s390x

### `ibmjava:sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:fc4827d3905ce2d4786bdb0610c7bd08f0a5a8dd292ca8fea6edd815c02bb503
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **196.1 MB (196136063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c121f581a97fa3630cb8be6eea36dcaf0cd2d7cd99ac0f8babeb0fef531130cd`
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
# Mon, 02 Jan 2023 20:30:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0f6aef4c3550a8f85288da8bc6fada405b0ce2226d6b1b57d0aae98cd5eef5e4';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fa7661c2eb2982c4fb85c6894e7a975970b27b6ee82d5facb352f075cc1dfca3';          YML_FILE='8.0/sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a56803671fe7d1c85f18d566dbcb7fbaf1d60c6f1d6de34e35a257e0c8095f9b';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='71c913a1eed7daae952657e18eb9a2e71723106b6e7b56373f18564db77f551e';          YML_FILE='8.0/sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='c8641bc22443ebccaedf1822a12ec1303d89577d45c875702e1f628066c7f383';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 20:30:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:fad67eafbeaa480f0e91b766aa2eda864863c25adc167802035716c65be330f8`  
		Last Modified: Mon, 02 Jan 2023 20:31:35 GMT  
		Size: 166.5 MB (166474974 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sdk` - linux; 386

```console
$ docker pull ibmjava@sha256:ec3c1234489b541cb77c46caa537e1c83712f6d6a42cefcfcbaa947ae1a6c047
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.6 MB (184641462 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d086184a012ce6dc984c9aeb8a36013b00165ea97c3ffe0c29f65a34674aaf1`
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
# Mon, 02 Jan 2023 18:19:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0f6aef4c3550a8f85288da8bc6fada405b0ce2226d6b1b57d0aae98cd5eef5e4';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fa7661c2eb2982c4fb85c6894e7a975970b27b6ee82d5facb352f075cc1dfca3';          YML_FILE='8.0/sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a56803671fe7d1c85f18d566dbcb7fbaf1d60c6f1d6de34e35a257e0c8095f9b';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='71c913a1eed7daae952657e18eb9a2e71723106b6e7b56373f18564db77f551e';          YML_FILE='8.0/sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='c8641bc22443ebccaedf1822a12ec1303d89577d45c875702e1f628066c7f383';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 18:19:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:2faac65d385f880ffda561872b05603633ac3eddd661fa6e9bd2a118642dbf61`  
		Last Modified: Mon, 02 Jan 2023 18:21:23 GMT  
		Size: 154.5 MB (154494438 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:e0fe163d16209be01bd7ad70af796f9ecd1ae3d36fed1bd5f8d50db97178cc17
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **199.8 MB (199790449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2be0d7e4bce1f3731bb8d21529c9be7ec66b0875302ce9204474670297e39850`
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
# Mon, 02 Jan 2023 19:38:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0f6aef4c3550a8f85288da8bc6fada405b0ce2226d6b1b57d0aae98cd5eef5e4';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fa7661c2eb2982c4fb85c6894e7a975970b27b6ee82d5facb352f075cc1dfca3';          YML_FILE='8.0/sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a56803671fe7d1c85f18d566dbcb7fbaf1d60c6f1d6de34e35a257e0c8095f9b';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='71c913a1eed7daae952657e18eb9a2e71723106b6e7b56373f18564db77f551e';          YML_FILE='8.0/sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='c8641bc22443ebccaedf1822a12ec1303d89577d45c875702e1f628066c7f383';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 19:38:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:e7bc5b1e13b4ba729e57196a85aa463b2661910d69d388a85766731a9d4693ed`  
		Last Modified: Mon, 02 Jan 2023 19:40:00 GMT  
		Size: 166.3 MB (166272138 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `ibmjava:sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:3062f7bb408bc9a0f0bec00ee38414269439948d27fe07e79e5cb0b05eae3b7b
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.8 MB (184802887 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7a70b9c6cd4bbecd9d165d0f009beb9a18c176733ff794ba73b5c63c10825ed6`
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
# Mon, 02 Jan 2023 19:29:47 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0f6aef4c3550a8f85288da8bc6fada405b0ce2226d6b1b57d0aae98cd5eef5e4';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        i386)          ESUM='fa7661c2eb2982c4fb85c6894e7a975970b27b6ee82d5facb352f075cc1dfca3';          YML_FILE='8.0/sdk/linux/i386/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a56803671fe7d1c85f18d566dbcb7fbaf1d60c6f1d6de34e35a257e0c8095f9b';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390)          ESUM='71c913a1eed7daae952657e18eb9a2e71723106b6e7b56373f18564db77f551e';          YML_FILE='8.0/sdk/linux/s390/index.yml';          ;;        s390x)          ESUM='c8641bc22443ebccaedf1822a12ec1303d89577d45c875702e1f628066c7f383';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -;     echo "INSTALLER_UI=silent" > /tmp/response.properties;     echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties;     echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties;     mkdir -p /opt/ibm;     chmod +x /tmp/ibm-java.bin;     /tmp/ibm-java.bin -i silent -f /tmp/response.properties;     rm -f /tmp/response.properties;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.bin;
# Mon, 02 Jan 2023 19:29:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:976ec19d69055f4c1229fccfe4f1f1ea7f399423a276fc90dc068a89fe208913`  
		Last Modified: Mon, 02 Jan 2023 19:31:19 GMT  
		Size: 156.8 MB (156764389 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
