## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:7d617eef3b657abf3889fb6a943e15844ff65dc7d964d441820ffa658eb2f6a3
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:ef1e6271de755dde78d28db455dd7d88eebbf74a34995aed51f35278175c910d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205336574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ceeac25cfd3565b8a2a5e07024015f533fb714f737a24d42dbe583ff24cdb84a`
-	Default Command: `["\/bin\/bash"]`

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
# Mon, 26 Oct 2026 23:23:05 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:23:05 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:23:05 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:24:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:24:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99b4a30c81f6e9fd8bb89109487650f5a5293e51bc817aafb7d60330f8b3c75a`  
		Last Modified: Mon, 26 Oct 2026 23:24:14 GMT  
		Size: 1.4 MB (1407339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b02e34adc58ad73b65c0fbd8e535a2de402cf412520bbc036352364154ed6506`  
		Last Modified: Mon, 26 Oct 2026 23:24:18 GMT  
		Size: 174.2 MB (174176747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:29e7ecd7f1942cde929e179301613df0fc803fa21c411a652083976a49a455ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3080857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b63e014fd9a97b1204266097f08f903ba418b41674e19ce35d91e06412ff4de`

```dockerfile
```

-	Layers:
	-	`sha256:f5089cf4023604c7745e5e12701cf778d8c3de144d56fbea8e96eb76de000cc9`  
		Last Modified: Mon, 26 Oct 2026 23:24:14 GMT  
		Size: 3.1 MB (3068259 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa4ac9cbf83a0749fd9b8345239431a5f33aafc24a1980a11b85b2906d414380`  
		Last Modified: Mon, 26 Oct 2026 23:24:14 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:61c2f5e4bd38a5a291e1575625344697b1d03ff3d91c5756afb7a1c0c60a97d6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211157356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de556a6464bf17f79af78e50cb4028ccdb3fa7b29f0eb45ca8e5cdd73122db3d`
-	Default Command: `["\/bin\/bash"]`

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
# Sat, 17 Oct 2026 01:32:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:32:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:de98044becf9c31487da39686a9d7d2ecaf1c1d8b7c51903b8fcdcafb9012381`  
		Last Modified: Sat, 17 Oct 2026 01:32:54 GMT  
		Size: 175.0 MB (174958679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:2957189dd8545ea6a523cfbe713d478aaf5db762b0a4de7d1ccb569f3581d748
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3067484 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ee3fa1f708230d241662c81938a29c724a7f61dc831d4dceb6b30b5c95bdc01`

```dockerfile
```

-	Layers:
	-	`sha256:6dbc8da32bdd62d73343c14a7ac985cf234707175a2585acc88dac6086d43732`  
		Last Modified: Sat, 17 Oct 2026 01:32:50 GMT  
		Size: 3.1 MB (3054852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:33e8feb5201686f0960d89864e23f1e03a3bd9e8f14a0c42dfa89b8e83accc05`  
		Last Modified: Sat, 17 Oct 2026 01:32:49 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:68f78356dc25153f386547c529cc54a13f0d9bc4d44adb61a2419521f30c2c31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.3 MB (198346609 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1628b60793cd1bc464f4ffd00ca9fc3e86d3542709ae028862fafa93bbc2a616`
-	Default Command: `["\/bin\/bash"]`

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
# Tue, 27 Oct 2026 00:00:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 27 Oct 2026 00:00:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:e2ea34980efae3baed8929c485898d8949f8d460af3dc6f21880efb2d4c982be`  
		Last Modified: Tue, 27 Oct 2026 00:01:14 GMT  
		Size: 168.7 MB (168713663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:861a40f5455a2067243285f01ed4491ce85b743672772bd1dcf731e0d001cb45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12c189504328fdfbe7161bb93b2c501da92c2e21582b316ae0e8234fe06d5c5`

```dockerfile
```

-	Layers:
	-	`sha256:10e421698b13497ef18c8289a2fab8525ca47488f41e2c023c3df8ea1d64f8a2`  
		Last Modified: Tue, 27 Oct 2026 00:01:10 GMT  
		Size: 2.7 MB (2741561 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:af9c7ae249ca8c962b6166b42d834e27307eddefbb497fed60daf2b4385bbd82`  
		Last Modified: Tue, 27 Oct 2026 00:01:10 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json
