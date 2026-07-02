## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:0667f68437c192f9b10c924e9ef0634076d6fe947685467549c9c28cc851a2df
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
$ docker pull ibmjava@sha256:647f3991bec9292a4d1f078a6d6a9ee0025f60a8a705b99d11120b53a76e264e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102319203 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:851ab20a7cd6d580589302432f9f173a68a456a95f3943474efac884e77cca55`
-	Default Command: `["\/bin\/bash"]`

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
# Thu, 02 Jul 2026 02:29:09 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 02 Jul 2026 02:29:09 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:29:09 GMT
ENV JAVA_VERSION=8.0.8.65
# Thu, 02 Jul 2026 02:29:14 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a21f423374e941588c9d22e69cc011821558d044ba6a30c27eeb333535ed30be';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e85af7337f10d424e2660093dc3fc9d04e8c7e018eaa353a49e4dfa6902dd31d';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='bd360b8ccf462c9537dd214c9cc5920b93145b44fe05d3b49e214d01d79cfb5c';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 02 Jul 2026 02:29:14 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0dce36d3ce785e070ccb4b88436a0b22ca5489c3e5443eda8cfd290ae69e74f`  
		Last Modified: Thu, 02 Jul 2026 02:29:23 GMT  
		Size: 1.4 MB (1408626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd89e053be297066e804f913c3f26da48db90a75fd95f9806e350c68ea4c948c`  
		Last Modified: Thu, 02 Jul 2026 02:29:26 GMT  
		Size: 71.2 MB (71171696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:36af1bfd658710ce23f61e1450c4d87fa06555eebaf34c004c215bc896bf3663
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d005daf2bf30680493023ce170c8305e0c1f5e0b54a2fe300af6a6e6aabae7b`

```dockerfile
```

-	Layers:
	-	`sha256:9428de777449c9e6f4a803a3748de51628415df61f5097c2d9f3896e70c3892d`  
		Last Modified: Thu, 02 Jul 2026 02:29:24 GMT  
		Size: 2.1 MB (2140289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f723ecdd047be2b790f44f6376502b8087341e11a8c0c550469d086991064a03`  
		Last Modified: Thu, 02 Jul 2026 02:29:23 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a8167a3695e5106989127f79833a3b1f02a95dca42969adfe62004c50da78528
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.3 MB (108251324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d9fd596ffc7a5e3de59f15dc05973ad93045abc94aa2e8d8ae6c7255d2df1a8c`
-	Default Command: `["\/bin\/bash"]`

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
# Thu, 02 Jul 2026 03:25:25 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a21f423374e941588c9d22e69cc011821558d044ba6a30c27eeb333535ed30be';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e85af7337f10d424e2660093dc3fc9d04e8c7e018eaa353a49e4dfa6902dd31d';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='bd360b8ccf462c9537dd214c9cc5920b93145b44fe05d3b49e214d01d79cfb5c';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 02 Jul 2026 03:25:25 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:a3be34c4bdb921136986c44f73cb4c584568b25ee15c57b9ce5e52df3864b562`  
		Last Modified: Thu, 02 Jul 2026 03:25:48 GMT  
		Size: 72.1 MB (72115335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:e1e7e72eaa5ec750c774f6d63cc97c282d385a870e97ffdc01190e73366973af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157425 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26436a81cb10d8359e2a801fd0785d815c270f078d438d1fa8c6fa37dc359bc8`

```dockerfile
```

-	Layers:
	-	`sha256:cc3449f7934ea28ff43a50c2593f4beab36ca6bf9bbead911cd3ea423c42042e`  
		Last Modified: Thu, 02 Jul 2026 03:25:45 GMT  
		Size: 2.1 MB (2144790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:524e0c10c05f4c102c46c91d1beb3bbf01db2423c5b596679ec56828d4d33fd1`  
		Last Modified: Thu, 02 Jul 2026 03:25:45 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:9dd07b061719e083c622f7abafe8d803f2b3de4e4892c555f4488d94c118e437
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102848033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f327f8581219733abb4e19a3408c20c21a06f6cef7f43ef113a72f08c9026d36`
-	Default Command: `["\/bin\/bash"]`

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
# Thu, 02 Jul 2026 02:24:14 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 02 Jul 2026 02:24:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:24:14 GMT
ENV JAVA_VERSION=8.0.8.65
# Thu, 02 Jul 2026 02:24:36 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a21f423374e941588c9d22e69cc011821558d044ba6a30c27eeb333535ed30be';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e85af7337f10d424e2660093dc3fc9d04e8c7e018eaa353a49e4dfa6902dd31d';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='bd360b8ccf462c9537dd214c9cc5920b93145b44fe05d3b49e214d01d79cfb5c';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 02 Jul 2026 02:24:36 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fec4e584e870a1fb1da4fe98131d0d941c08ebdde07862c32bad5226949972`  
		Last Modified: Thu, 02 Jul 2026 02:24:52 GMT  
		Size: 1.4 MB (1411771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e9c5c7e5a4d735cdb241e8ab6034c2a196cfa1d2ec2abc7455afc63bdba485`  
		Last Modified: Thu, 02 Jul 2026 02:24:55 GMT  
		Size: 73.2 MB (73232131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:57702184df9ddddb9157403c7b835595732d6b837946cef88e8b8016d94739a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd4249b063097ceee071ff2d4d6bff48022b46ee30d961fa93a9a713599863c5`

```dockerfile
```

-	Layers:
	-	`sha256:2f6216a70fab7373905c2feb25a15585aefccc17f885021594eb49b9739dbb2c`  
		Last Modified: Thu, 02 Jul 2026 02:24:52 GMT  
		Size: 2.1 MB (2143911 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bebd5f974acd67fe8341ce4ce90211cd162cab4e70d1c42a9b0f4a7421eea9a`  
		Last Modified: Thu, 02 Jul 2026 02:24:52 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
