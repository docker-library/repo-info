## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:aa790b1736b19567b56681e0c7dfc52a80a189ce3e0ded054d7718ce0207130b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:8-sfj` - linux; amd64

```console
$ docker pull ibmjava@sha256:d5f3bee14e717af7a498b876e95043c5096c8342bbaf0ef311ac8870d6515f3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102380236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34df43b1cb2576db4683cb357ce2d7d56bdbef160c051a0842ed520431f345a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:26 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:31:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:31:26 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:31:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:31:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22dd2d9ca6f9c21cda7a5384396e9d749e6ae6917e76fdff8c9779f23cda901f`  
		Last Modified: Wed, 09 Sep 2026 02:31:58 GMT  
		Size: 1.4 MB (1409367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dfbfe47ed49445b0780617a4448fa762bb873706cb8a84ff3ef82b4daa0b54c`  
		Last Modified: Wed, 09 Sep 2026 02:32:00 GMT  
		Size: 71.2 MB (71220618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:90969b79fc10280dc16a20103750c0e78a6669fd03fdd51cd8d41462119c1c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25968ee95b033ab4a02d387e2efad980d4098ebc60383c89fbcb7949e1093ee`

```dockerfile
```

-	Layers:
	-	`sha256:5d7da6973fff6534694c281f1fe201548ce53b5b2c1b6f13ff2820f58d041fb1`  
		Last Modified: Wed, 09 Sep 2026 02:31:58 GMT  
		Size: 2.1 MB (2140365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9b1bbe2a6ae32308db2ca27532a0ea11cb2688969c4fab45db55e4533d94d9a`  
		Last Modified: Wed, 09 Sep 2026 02:31:58 GMT  
		Size: 12.6 KB (12600 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

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

### `ibmjava:8-sfj` - unknown; unknown

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

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:3c73b3e2deb45230687e3e6f5296fe10338f81b4385e5c2ec5bd53d4f870e1f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104359440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a66935001e0bf83df3f5de627a868bce351a9f1040b18ebb20d925e9f42f38`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:55:11 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 17 Sep 2026 23:55:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:55:11 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 17 Sep 2026 23:55:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 17 Sep 2026 23:55:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e411ce79ed344941419dfca102f7d7e3293b74670f15f14da75677236f14bcaf`  
		Last Modified: Thu, 17 Sep 2026 23:55:48 GMT  
		Size: 1.4 MB (1414759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7748c5f96fb9c5de7538a90a7dd6d7bd8eaa6904c88de8858d42bf69e0e6df90`  
		Last Modified: Thu, 17 Sep 2026 23:55:49 GMT  
		Size: 74.7 MB (74720650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:44e197a86a85c14e1a70ee6cc696d3488ca5382a20793e0136a5ae5778a0ead5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c138ddc50e5c07e079d75f74382098cf582f98ac6a124c37d3c171cd931acaa`

```dockerfile
```

-	Layers:
	-	`sha256:3553a0c07968cff500e70de2371ea10372b0a526bef725bb29348389cb2288d0`  
		Last Modified: Thu, 17 Sep 2026 23:55:48 GMT  
		Size: 2.1 MB (2143987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ba0d99fcc4fca559642b36514c7cb9f63179a64a87fb3e49b784bc5c4f780f3`  
		Last Modified: Thu, 17 Sep 2026 23:55:48 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
