## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:9b136b32efd99105908d5670160e2f7c82df8b870924f122c62257124e0561c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:4ce9bc900c429ce1d54231bedf40eee656fdef8678a3d8faeab125518265e4ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102381683 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60991121c71b4c3118efab6fb6e13986df99c0f81634bf52e95f7de1cf3f5bd5`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:04 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:04 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:04 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:06 GMT
ADD file:b0bf3f64519bf10a51e00d4f8ab9c8693620659a0c4a4a5090a9765e754e1d1c in / 
# Thu, 24 Sep 2026 22:24:07 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 01:28:49 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 02 Oct 2026 01:28:49 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:28:49 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 02 Oct 2026 01:29:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 02 Oct 2026 01:29:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a50a76add941f09046ec6793f83ab801a0f37b63bf753c95c19ac4b174a5f6`  
		Last Modified: Fri, 02 Oct 2026 01:29:20 GMT  
		Size: 1.4 MB (1409433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785f041c9c10a58ce32152847d020acd7e82bedf76c94d61aa5fe7f28be489e4`  
		Last Modified: Fri, 02 Oct 2026 01:29:22 GMT  
		Size: 71.2 MB (71220623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:b4d882cdd7a10be3cf5c7bc26783fa3ae015d9d6b197f1111d1ef843d42916c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2154897 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b10bb73ae1f8d1e354d492706ee20a5691990b0359cf386273484b007bbfab1`

```dockerfile
```

-	Layers:
	-	`sha256:0ab1a2dc40426301fb1c4c951beb758cb0860f084c1e51d085c39472a38178db`  
		Last Modified: Fri, 02 Oct 2026 01:29:20 GMT  
		Size: 2.1 MB (2142296 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2af23971defe70b0d245f1994d182b1eb0bb41c91f8aa266240567852e1926e4`  
		Last Modified: Fri, 02 Oct 2026 01:29:20 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a5c664dfd5f02f6dc4adb3683d5559c95158bd2915380321c80b5c698cf20051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108188072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bd2852f576853710a536ea09d3a8829d53b0c49c7b855b8ace263782fc9213e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:57:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:57:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:57:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:57:55 GMT
ADD file:432b9684ec0569be2be149e91ac77c16c05d7cfbb3e9cfbb7fd24d3ec4e3542c in / 
# Thu, 03 Sep 2026 12:57:55 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:46:37 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:46:37 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:46:37 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:47:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:47:09 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:1daec8f2ab5d99d77bf244f97fe9410551460a2a58e0b0cc7ecb9e6e4bf02aec`  
		Last Modified: Thu, 03 Sep 2026 17:08:41 GMT  
		Size: 34.7 MB (34702679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5b45737f938f2a8e4b0112fc123c0eeba7bc0b15f6ede392ac9a982fbaeee2`  
		Last Modified: Wed, 09 Sep 2026 02:48:00 GMT  
		Size: 1.5 MB (1494836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e983bc7d9c405c11f726b9edc791175aec9209af5cdb3309deb87cfb432bd9d7`  
		Last Modified: Wed, 09 Sep 2026 02:48:02 GMT  
		Size: 72.0 MB (71990557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:318bee1a01526624fa581bb9d750f7c0a67115df21ca6ba8d3c7d52c0d050df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a793586ad11ea785229f4e7553fea29453d27829ca230ef06856128751a33fcc`

```dockerfile
```

-	Layers:
	-	`sha256:c5749b9763e24255c5f11ade8346d0b46e3a91f44e20f2eb83f7a79cd945b121`  
		Last Modified: Wed, 09 Sep 2026 02:48:00 GMT  
		Size: 2.1 MB (2144866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd9fd88dbd9e124b21cf7715e2f1845292d6967cdfbbd00a9dd44c826111c66d`  
		Last Modified: Wed, 09 Sep 2026 02:48:00 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:6252465a1eef0f2917e2988854bed478ff4d5e04d2a411e8f6cc7c682879abfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104355470 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fcf820d8aaeab6b8cc5baace61d7e2d7123b6640adcbd5e9f492f6360d5621b6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 24 Sep 2026 22:24:54 GMT
ARG RELEASE
# Thu, 24 Sep 2026 22:24:55 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 24 Sep 2026 22:24:55 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 24 Sep 2026 22:24:56 GMT
ADD file:db47e3926ab7bde0eac1956f72b5e29cdfee4e7ba1a182277e89477759e0044a in / 
# Thu, 24 Sep 2026 22:24:56 GMT
CMD ["/bin/bash"]
# Fri, 02 Oct 2026 02:04:39 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 02 Oct 2026 02:04:39 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:04:39 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 02 Oct 2026 02:05:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 02 Oct 2026 02:05:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:923a5858b3db1173ff816401e65b0c4ba8dcc5a16ac5e04aefc778e19fcfee11`  
		Last Modified: Fri, 02 Oct 2026 02:05:17 GMT  
		Size: 1.4 MB (1412752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d612fec07d3eb4eba8628d987f5afbbcc241d7abedc59da81eef5c3dc1d0cf73`  
		Last Modified: Fri, 02 Oct 2026 02:05:18 GMT  
		Size: 74.7 MB (74720650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:ae4584ff02976fd1814e8e147891cc561bf60b29a7386092d91590512317ead6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2158518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb568ab406465ff4f370b5b92b986a72ddeda0ca9a16019cc90a4ab2d78bd07d`

```dockerfile
```

-	Layers:
	-	`sha256:b97c72c47e72ffe96b6729dced08725c5916680bada44b11f1cfd9f5a3dec6f6`  
		Last Modified: Fri, 02 Oct 2026 02:05:17 GMT  
		Size: 2.1 MB (2145918 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec7d54f2688d89da3171f99038486dd0412cc873a071d9af80573b045c925e99`  
		Last Modified: Fri, 02 Oct 2026 02:05:17 GMT  
		Size: 12.6 KB (12600 bytes)  
		MIME: application/vnd.in-toto+json
