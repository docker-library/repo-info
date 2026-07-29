<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `ibmjava`

-	[`ibmjava:8`](#ibmjava8)
-	[`ibmjava:8-jre`](#ibmjava8-jre)
-	[`ibmjava:8-sdk`](#ibmjava8-sdk)
-	[`ibmjava:8-sfj`](#ibmjava8-sfj)
-	[`ibmjava:jre`](#ibmjavajre)
-	[`ibmjava:latest`](#ibmjavalatest)
-	[`ibmjava:sdk`](#ibmjavasdk)
-	[`ibmjava:sfj`](#ibmjavasfj)

## `ibmjava:8`

```console
$ docker pull ibmjava@sha256:a31b815a65646630d256e0abaacebffc4ac3093ce2c78a62ca96cd3dc98b7cdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:8` - linux; amd64

```console
$ docker pull ibmjava@sha256:cc12727f3695389a466ce3711945a1deed8003df7af653b2688819c18134e71e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168100126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11cb3e7adb88959c5255e7786f5e8185bc1e0c31f3aacb8fb921ef8b76151203`
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
# Tue, 28 Jul 2026 20:51:27 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:51:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:51:27 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a97167a891bd0171d5999b95022bb73434c49274e91aa14e05ec8f9120dceb`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 1.4 MB (1408916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ab57eca08ce4a48e3c999f4b9e782e0f82e7b07a4dba5cce8f8afb34278e48`  
		Last Modified: Tue, 28 Jul 2026 20:51:52 GMT  
		Size: 137.0 MB (136952329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:b559bb93d4c3d3a51cb41a7ac7a1c8a097495c130d35208cb663418e6d4fdd53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecdb9d7882089b5c844bc1393e5a53c2984087c00c4379052923a1598a6bca8`

```dockerfile
```

-	Layers:
	-	`sha256:184d5aa37071d257aa1ca2703102c5f137fc3023a982f790b626cba7c5578b35`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 2.2 MB (2157892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c41d3e671bc0a9bd6dbb91b3acd4f9b826123cfbc18a0967fb98272da1a00d6f`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a1831b2c4713f5bede6497ef1e8d131c243183ea35975bd246771ab88db86aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173657752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955f74cf504352c43a88e68f4289323cc0db097d980a9a05ad3d451c1f7deea8`
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
# Tue, 28 Jul 2026 20:49:58 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:49:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:49:58 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:50:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:50:08 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f187a8c0ad68f5a89a6a221f2ccd9af67c955a1add4c88670ea03a1e25541290`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 1.5 MB (1494912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee5f148dae296ae4f05cfe02263bbc3ed126363387a0832f3bad01c7ae7650`  
		Last Modified: Tue, 28 Jul 2026 20:50:47 GMT  
		Size: 137.5 MB (137520972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:9a313ec0d1a24cfd685b0b979887b1a89fe4c1380a892f96365a579e7300f9da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2917043ca3b165627a02d4a711a6baf08d3a2e903eae0d7bbb34c75682ce6df4`

```dockerfile
```

-	Layers:
	-	`sha256:dbb8ed7aced919f95271807747294c082d4a03597154e8dc8bb45cc760796c98`  
		Last Modified: Tue, 28 Jul 2026 20:50:44 GMT  
		Size: 2.2 MB (2161182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68768055cecb1dff6f02ba0e0815b407412af2583a47226d48f7f4877f54205`  
		Last Modified: Tue, 28 Jul 2026 20:50:43 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; s390x

```console
$ docker pull ibmjava@sha256:986fd839ee234a372b4cb48a0aae125649673e38b407c32ba4bec2d1e5d4eeb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167845969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f95c0d32c82e32705bd2bab98640c49ffb6ab10970659147a5de2cee1c4c76`
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
# Tue, 28 Jul 2026 21:43:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 21:43:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:43:00 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 21:45:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 21:45:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da9f2c5d6343453177cc3d26866ba033274eea7b135ed97e4a1b17bb580c928`  
		Last Modified: Tue, 28 Jul 2026 21:46:21 GMT  
		Size: 1.4 MB (1412339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e3b68a2e3f2678c0da6135c6c7266cb511b1cd6de55e2403204b1331facc7c`  
		Last Modified: Tue, 28 Jul 2026 21:46:43 GMT  
		Size: 138.2 MB (138229499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:7f350b54ff4fdab6230df3f989ce0d745bedcfc61a5adc5580a6e3336f89d6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10734f2d431e12d88e16f36dcc8c58967e425020d99ca2721ab41a92bd3d38ff`

```dockerfile
```

-	Layers:
	-	`sha256:fb65705067f2519afcba9447fe3ea1ebce25d53d019e496a6a314821bfa20d33`  
		Last Modified: Tue, 28 Jul 2026 21:46:21 GMT  
		Size: 2.2 MB (2157839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73c925084ae0109ea8ca2847f3b7435efc55c22baedbb02e591d6cdd17b05c7e`  
		Last Modified: Tue, 28 Jul 2026 21:46:17 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-jre`

```console
$ docker pull ibmjava@sha256:a31b815a65646630d256e0abaacebffc4ac3093ce2c78a62ca96cd3dc98b7cdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:8-jre` - linux; amd64

```console
$ docker pull ibmjava@sha256:cc12727f3695389a466ce3711945a1deed8003df7af653b2688819c18134e71e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168100126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11cb3e7adb88959c5255e7786f5e8185bc1e0c31f3aacb8fb921ef8b76151203`
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
# Tue, 28 Jul 2026 20:51:27 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:51:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:51:27 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a97167a891bd0171d5999b95022bb73434c49274e91aa14e05ec8f9120dceb`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 1.4 MB (1408916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ab57eca08ce4a48e3c999f4b9e782e0f82e7b07a4dba5cce8f8afb34278e48`  
		Last Modified: Tue, 28 Jul 2026 20:51:52 GMT  
		Size: 137.0 MB (136952329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:b559bb93d4c3d3a51cb41a7ac7a1c8a097495c130d35208cb663418e6d4fdd53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecdb9d7882089b5c844bc1393e5a53c2984087c00c4379052923a1598a6bca8`

```dockerfile
```

-	Layers:
	-	`sha256:184d5aa37071d257aa1ca2703102c5f137fc3023a982f790b626cba7c5578b35`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 2.2 MB (2157892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c41d3e671bc0a9bd6dbb91b3acd4f9b826123cfbc18a0967fb98272da1a00d6f`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a1831b2c4713f5bede6497ef1e8d131c243183ea35975bd246771ab88db86aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173657752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955f74cf504352c43a88e68f4289323cc0db097d980a9a05ad3d451c1f7deea8`
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
# Tue, 28 Jul 2026 20:49:58 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:49:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:49:58 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:50:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:50:08 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f187a8c0ad68f5a89a6a221f2ccd9af67c955a1add4c88670ea03a1e25541290`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 1.5 MB (1494912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee5f148dae296ae4f05cfe02263bbc3ed126363387a0832f3bad01c7ae7650`  
		Last Modified: Tue, 28 Jul 2026 20:50:47 GMT  
		Size: 137.5 MB (137520972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:9a313ec0d1a24cfd685b0b979887b1a89fe4c1380a892f96365a579e7300f9da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2917043ca3b165627a02d4a711a6baf08d3a2e903eae0d7bbb34c75682ce6df4`

```dockerfile
```

-	Layers:
	-	`sha256:dbb8ed7aced919f95271807747294c082d4a03597154e8dc8bb45cc760796c98`  
		Last Modified: Tue, 28 Jul 2026 20:50:44 GMT  
		Size: 2.2 MB (2161182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68768055cecb1dff6f02ba0e0815b407412af2583a47226d48f7f4877f54205`  
		Last Modified: Tue, 28 Jul 2026 20:50:43 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:986fd839ee234a372b4cb48a0aae125649673e38b407c32ba4bec2d1e5d4eeb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167845969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f95c0d32c82e32705bd2bab98640c49ffb6ab10970659147a5de2cee1c4c76`
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
# Tue, 28 Jul 2026 21:43:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 21:43:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:43:00 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 21:45:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 21:45:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da9f2c5d6343453177cc3d26866ba033274eea7b135ed97e4a1b17bb580c928`  
		Last Modified: Tue, 28 Jul 2026 21:46:21 GMT  
		Size: 1.4 MB (1412339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e3b68a2e3f2678c0da6135c6c7266cb511b1cd6de55e2403204b1331facc7c`  
		Last Modified: Tue, 28 Jul 2026 21:46:43 GMT  
		Size: 138.2 MB (138229499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:7f350b54ff4fdab6230df3f989ce0d745bedcfc61a5adc5580a6e3336f89d6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10734f2d431e12d88e16f36dcc8c58967e425020d99ca2721ab41a92bd3d38ff`

```dockerfile
```

-	Layers:
	-	`sha256:fb65705067f2519afcba9447fe3ea1ebce25d53d019e496a6a314821bfa20d33`  
		Last Modified: Tue, 28 Jul 2026 21:46:21 GMT  
		Size: 2.2 MB (2157839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73c925084ae0109ea8ca2847f3b7435efc55c22baedbb02e591d6cdd17b05c7e`  
		Last Modified: Tue, 28 Jul 2026 21:46:17 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:55ecfa03758ed41f08e25da19dbe7711aba1d55035e620a70e67749be956977d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:8-sdk` - linux; amd64

```console
$ docker pull ibmjava@sha256:1672770ceadcbae0d64031cc434b7227cf8778dd78228c996b47bbc8856ee352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205401360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14795d1f52e49f457096db1cc106d12b410ffdb8863f5bdef430d7da63906152`
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
# Tue, 28 Jul 2026 20:51:43 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:51:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:51:43 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:53 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1b2a34851f8e4d5dda02bd181ef0e883fa54552544f97154b54a8833cd4ff91`  
		Last Modified: Tue, 28 Jul 2026 20:52:09 GMT  
		Size: 1.4 MB (1408907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf520065bcc05354c1a4bd446e18d265c2d56c05b11dac5a702908d7a001c15`  
		Last Modified: Tue, 28 Jul 2026 20:52:13 GMT  
		Size: 174.3 MB (174253572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:d8b201b54c25824f5f55eb9dbb6d3d43d36ce624753d266d927bca8b0d5b3c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3081433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01d6e50ca56e1b984563114c7bdd1bf554e729eade2f58f1337f4c631d4e9f0`

```dockerfile
```

-	Layers:
	-	`sha256:94889b68df50caff4479d0353363123a26b202899d137f6e4a34839eb29e5e16`  
		Last Modified: Tue, 28 Jul 2026 20:52:09 GMT  
		Size: 3.1 MB (3068835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6523a1ebd866399a0c720e283231901a9c7e0f4e61cbf46c8adcc20b8b43148a`  
		Last Modified: Tue, 28 Jul 2026 20:52:09 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b89eeb22e9c827574227ca77277b83517e45b3f61ea63533080134848c41a348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211163396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a1ad74dc0b776d4510183ea2269cfa8a7715b3ef8080de6d4cfcf1742fd6be`
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
# Tue, 28 Jul 2026 20:49:58 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:49:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:49:58 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f187a8c0ad68f5a89a6a221f2ccd9af67c955a1add4c88670ea03a1e25541290`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 1.5 MB (1494912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eabd7ce83d2a438576838fbb4651118d0844b940505271536f4c45a75c06086`  
		Last Modified: Tue, 28 Jul 2026 20:51:34 GMT  
		Size: 175.0 MB (175026616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:4d089fa404fc17ff4606cd1ebec508aaef7e48d9dee39682f0ccb48ede24c648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3067416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc6f1acb4338f2f16b869a7c398a07514b76e4fa5bfec0d0c00e60642976cf5`

```dockerfile
```

-	Layers:
	-	`sha256:536ee8fec6cc9235c95c83e744f21f66bd5c3eb078600626828b1debec40b0c9`  
		Last Modified: Tue, 28 Jul 2026 20:51:30 GMT  
		Size: 3.1 MB (3054784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00e594cfa4ebc9a62e0f61fe4f864075efd0f5db774898bae133a40d297be507`  
		Last Modified: Tue, 28 Jul 2026 20:51:30 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:fb8e9d33772f11710b1a7c25d24bd9949bc6d22ca033ce8a02dc20c1f63a0018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198398498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e08b2eb28d1aba7cb8ef36d4ad4ac3e78d9ab7ca7bd5a09f47765307a0f19002`
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
# Tue, 28 Jul 2026 21:43:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 21:43:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:43:00 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 21:47:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 21:47:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da9f2c5d6343453177cc3d26866ba033274eea7b135ed97e4a1b17bb580c928`  
		Last Modified: Tue, 28 Jul 2026 21:46:21 GMT  
		Size: 1.4 MB (1412339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d901bedadb76de293934f60049ab6bd0c2292e0d98e74ad27c52ffadfa3078`  
		Last Modified: Tue, 28 Jul 2026 21:49:10 GMT  
		Size: 168.8 MB (168782028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:82e86d4aa8c56b6a44454908e95a8f386d053fc92d2a9e10445e02c23a75bd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d46bb119f6cc3c372aa189c048296b5027edb4add8823e121801dbeb09cd8bc`

```dockerfile
```

-	Layers:
	-	`sha256:b8774fd6ae05b2f7673c27aa3113c078a1abc7702f7a9384c83740a55e85f7fa`  
		Last Modified: Tue, 28 Jul 2026 21:48:57 GMT  
		Size: 2.7 MB (2742137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d58d98a880b922b238edd07f06e235691913db515e16d3ea43997da1aa4ea2f9`  
		Last Modified: Tue, 28 Jul 2026 21:48:51 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:44aef1ab65f1007c3e1cfab095c4c0274a0c77da769d5cd91aa8fca19af236aa
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
$ docker pull ibmjava@sha256:169c398e7f38c28108e43393ee41291bf74fcba8a40b8bd19fe211153e219acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.7 MB (102693342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7c9b1214946a9c5751eb99c04ef0e2196a0e57138fa0646785ce004ea1c23d`
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
# Tue, 28 Jul 2026 20:51:06 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:51:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:51:06 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:18 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6939bb21e3bed6f38f4c01ff6807f9be688b1fb57c953243ad5ff38e436898dd`  
		Last Modified: Tue, 28 Jul 2026 20:51:29 GMT  
		Size: 1.4 MB (1408939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f727309486a8283163d6b4e76915e53191e3636f10ca5fc19fd43982737623ad`  
		Last Modified: Tue, 28 Jul 2026 20:51:31 GMT  
		Size: 71.5 MB (71545522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:7f6fb715ad190ffb4985dcd5e1aaf24a7bfac82a5fe1c9dbd02fb4bf6a846921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1998ae0eea278cbc4494be20a46a9657a125277785156e85e6502a2dd20f513`

```dockerfile
```

-	Layers:
	-	`sha256:6adcfeb8541a715dea5fe6befa9bb85fe8f9989aa94c4006f2699b0ce85aa72d`  
		Last Modified: Tue, 28 Jul 2026 20:51:29 GMT  
		Size: 2.1 MB (2140325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9dbbd92251dd8599bca3c7a9ddf38dd0978c6d76c44a4cdbffca34c35ea7b06`  
		Last Modified: Tue, 28 Jul 2026 20:51:28 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:f1ebfb83bd8fcfc8007e1865b8105e3d82b84314fbb25b617d4a888b2fc55b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108450093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed23d311beddb721a2e6bb8d0f459c3787bd31acb4fe3f85af57e0a07b3b3c8a`
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
# Tue, 28 Jul 2026 20:49:58 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:49:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:49:58 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:50:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:50:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f187a8c0ad68f5a89a6a221f2ccd9af67c955a1add4c88670ea03a1e25541290`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 1.5 MB (1494912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ac5ee629a4848d9074c06b44e50731b972f5e3e95e822207b5dcc6543e2079`  
		Last Modified: Tue, 28 Jul 2026 20:50:33 GMT  
		Size: 72.3 MB (72313313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:dbeef7d4bf1a6607a408be4418c000b7ccae62b659e612b131c180d8bd95fe83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7d3e705fb3e1bd900daac57230ce75c135a767133f8ecd71c5119dd6d71c22`

```dockerfile
```

-	Layers:
	-	`sha256:07bb3c1686583287af7d77413c73fdade4084213483edc73d6e7cbdf3e4d0da9`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 2.1 MB (2144826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d7d2d24b0db346b335c9292c925046b0d8d7aee155d214844f5e12328b06b07`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:7ce27db62eb49f6d4a89723636baec717030d88030413d384ae8964c86109df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104665325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9044132f0ced63480d476cfd681db7713398506bb47ba8f648641ab7a510440`
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
# Tue, 28 Jul 2026 21:46:59 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 21:46:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:46:59 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 21:48:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 21:48:30 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3562d6411d4ce28f47260485c9c8b80e5e6795ebef08c4387aeded00384ad97`  
		Last Modified: Tue, 28 Jul 2026 21:50:58 GMT  
		Size: 1.4 MB (1412414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba10a9594e64eba536443af4b6146a8bf20fb91b81ce6790fbf656131e16587`  
		Last Modified: Tue, 28 Jul 2026 21:51:02 GMT  
		Size: 75.0 MB (75048780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:f09b4c6e5d182383dba52d03e77bcd164a299c15124ffe142b6951a017328357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd00ef02818ca8c6f9d51dc5f782bd91655ca4b63b95530804562e5ce995d90`

```dockerfile
```

-	Layers:
	-	`sha256:fde4330dce714f7bfd5f989f7661c4a4207a28711b27b41828607adf56db7476`  
		Last Modified: Tue, 28 Jul 2026 21:50:58 GMT  
		Size: 2.1 MB (2143947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff05c1e3b323ee516bff80403749704982799e8f1c3fdd1ddf7179d1c753e945`  
		Last Modified: Tue, 28 Jul 2026 21:50:58 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:jre`

```console
$ docker pull ibmjava@sha256:a31b815a65646630d256e0abaacebffc4ac3093ce2c78a62ca96cd3dc98b7cdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:jre` - linux; amd64

```console
$ docker pull ibmjava@sha256:cc12727f3695389a466ce3711945a1deed8003df7af653b2688819c18134e71e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168100126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11cb3e7adb88959c5255e7786f5e8185bc1e0c31f3aacb8fb921ef8b76151203`
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
# Tue, 28 Jul 2026 20:51:27 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:51:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:51:27 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a97167a891bd0171d5999b95022bb73434c49274e91aa14e05ec8f9120dceb`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 1.4 MB (1408916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ab57eca08ce4a48e3c999f4b9e782e0f82e7b07a4dba5cce8f8afb34278e48`  
		Last Modified: Tue, 28 Jul 2026 20:51:52 GMT  
		Size: 137.0 MB (136952329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:b559bb93d4c3d3a51cb41a7ac7a1c8a097495c130d35208cb663418e6d4fdd53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecdb9d7882089b5c844bc1393e5a53c2984087c00c4379052923a1598a6bca8`

```dockerfile
```

-	Layers:
	-	`sha256:184d5aa37071d257aa1ca2703102c5f137fc3023a982f790b626cba7c5578b35`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 2.2 MB (2157892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c41d3e671bc0a9bd6dbb91b3acd4f9b826123cfbc18a0967fb98272da1a00d6f`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a1831b2c4713f5bede6497ef1e8d131c243183ea35975bd246771ab88db86aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173657752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955f74cf504352c43a88e68f4289323cc0db097d980a9a05ad3d451c1f7deea8`
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
# Tue, 28 Jul 2026 20:49:58 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:49:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:49:58 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:50:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:50:08 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f187a8c0ad68f5a89a6a221f2ccd9af67c955a1add4c88670ea03a1e25541290`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 1.5 MB (1494912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee5f148dae296ae4f05cfe02263bbc3ed126363387a0832f3bad01c7ae7650`  
		Last Modified: Tue, 28 Jul 2026 20:50:47 GMT  
		Size: 137.5 MB (137520972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:9a313ec0d1a24cfd685b0b979887b1a89fe4c1380a892f96365a579e7300f9da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2917043ca3b165627a02d4a711a6baf08d3a2e903eae0d7bbb34c75682ce6df4`

```dockerfile
```

-	Layers:
	-	`sha256:dbb8ed7aced919f95271807747294c082d4a03597154e8dc8bb45cc760796c98`  
		Last Modified: Tue, 28 Jul 2026 20:50:44 GMT  
		Size: 2.2 MB (2161182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68768055cecb1dff6f02ba0e0815b407412af2583a47226d48f7f4877f54205`  
		Last Modified: Tue, 28 Jul 2026 20:50:43 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:986fd839ee234a372b4cb48a0aae125649673e38b407c32ba4bec2d1e5d4eeb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167845969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f95c0d32c82e32705bd2bab98640c49ffb6ab10970659147a5de2cee1c4c76`
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
# Tue, 28 Jul 2026 21:43:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 21:43:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:43:00 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 21:45:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 21:45:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da9f2c5d6343453177cc3d26866ba033274eea7b135ed97e4a1b17bb580c928`  
		Last Modified: Tue, 28 Jul 2026 21:46:21 GMT  
		Size: 1.4 MB (1412339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e3b68a2e3f2678c0da6135c6c7266cb511b1cd6de55e2403204b1331facc7c`  
		Last Modified: Tue, 28 Jul 2026 21:46:43 GMT  
		Size: 138.2 MB (138229499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:7f350b54ff4fdab6230df3f989ce0d745bedcfc61a5adc5580a6e3336f89d6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10734f2d431e12d88e16f36dcc8c58967e425020d99ca2721ab41a92bd3d38ff`

```dockerfile
```

-	Layers:
	-	`sha256:fb65705067f2519afcba9447fe3ea1ebce25d53d019e496a6a314821bfa20d33`  
		Last Modified: Tue, 28 Jul 2026 21:46:21 GMT  
		Size: 2.2 MB (2157839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73c925084ae0109ea8ca2847f3b7435efc55c22baedbb02e591d6cdd17b05c7e`  
		Last Modified: Tue, 28 Jul 2026 21:46:17 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:latest`

```console
$ docker pull ibmjava@sha256:a31b815a65646630d256e0abaacebffc4ac3093ce2c78a62ca96cd3dc98b7cdf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `ibmjava:latest` - linux; amd64

```console
$ docker pull ibmjava@sha256:cc12727f3695389a466ce3711945a1deed8003df7af653b2688819c18134e71e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168100126 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11cb3e7adb88959c5255e7786f5e8185bc1e0c31f3aacb8fb921ef8b76151203`
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
# Tue, 28 Jul 2026 20:51:27 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:51:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:51:27 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3a97167a891bd0171d5999b95022bb73434c49274e91aa14e05ec8f9120dceb`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 1.4 MB (1408916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9ab57eca08ce4a48e3c999f4b9e782e0f82e7b07a4dba5cce8f8afb34278e48`  
		Last Modified: Tue, 28 Jul 2026 20:51:52 GMT  
		Size: 137.0 MB (136952329 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:b559bb93d4c3d3a51cb41a7ac7a1c8a097495c130d35208cb663418e6d4fdd53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ecdb9d7882089b5c844bc1393e5a53c2984087c00c4379052923a1598a6bca8`

```dockerfile
```

-	Layers:
	-	`sha256:184d5aa37071d257aa1ca2703102c5f137fc3023a982f790b626cba7c5578b35`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 2.2 MB (2157892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c41d3e671bc0a9bd6dbb91b3acd4f9b826123cfbc18a0967fb98272da1a00d6f`  
		Last Modified: Tue, 28 Jul 2026 20:51:49 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a1831b2c4713f5bede6497ef1e8d131c243183ea35975bd246771ab88db86aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173657752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:955f74cf504352c43a88e68f4289323cc0db097d980a9a05ad3d451c1f7deea8`
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
# Tue, 28 Jul 2026 20:49:58 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:49:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:49:58 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:50:08 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:50:08 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f187a8c0ad68f5a89a6a221f2ccd9af67c955a1add4c88670ea03a1e25541290`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 1.5 MB (1494912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12ee5f148dae296ae4f05cfe02263bbc3ed126363387a0832f3bad01c7ae7650`  
		Last Modified: Tue, 28 Jul 2026 20:50:47 GMT  
		Size: 137.5 MB (137520972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:9a313ec0d1a24cfd685b0b979887b1a89fe4c1380a892f96365a579e7300f9da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2917043ca3b165627a02d4a711a6baf08d3a2e903eae0d7bbb34c75682ce6df4`

```dockerfile
```

-	Layers:
	-	`sha256:dbb8ed7aced919f95271807747294c082d4a03597154e8dc8bb45cc760796c98`  
		Last Modified: Tue, 28 Jul 2026 20:50:44 GMT  
		Size: 2.2 MB (2161182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d68768055cecb1dff6f02ba0e0815b407412af2583a47226d48f7f4877f54205`  
		Last Modified: Tue, 28 Jul 2026 20:50:43 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; s390x

```console
$ docker pull ibmjava@sha256:986fd839ee234a372b4cb48a0aae125649673e38b407c32ba4bec2d1e5d4eeb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167845969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5f95c0d32c82e32705bd2bab98640c49ffb6ab10970659147a5de2cee1c4c76`
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
# Tue, 28 Jul 2026 21:43:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 21:43:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:43:00 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 21:45:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 21:45:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da9f2c5d6343453177cc3d26866ba033274eea7b135ed97e4a1b17bb580c928`  
		Last Modified: Tue, 28 Jul 2026 21:46:21 GMT  
		Size: 1.4 MB (1412339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8e3b68a2e3f2678c0da6135c6c7266cb511b1cd6de55e2403204b1331facc7c`  
		Last Modified: Tue, 28 Jul 2026 21:46:43 GMT  
		Size: 138.2 MB (138229499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:7f350b54ff4fdab6230df3f989ce0d745bedcfc61a5adc5580a6e3336f89d6e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10734f2d431e12d88e16f36dcc8c58967e425020d99ca2721ab41a92bd3d38ff`

```dockerfile
```

-	Layers:
	-	`sha256:fb65705067f2519afcba9447fe3ea1ebce25d53d019e496a6a314821bfa20d33`  
		Last Modified: Tue, 28 Jul 2026 21:46:21 GMT  
		Size: 2.2 MB (2157839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:73c925084ae0109ea8ca2847f3b7435efc55c22baedbb02e591d6cdd17b05c7e`  
		Last Modified: Tue, 28 Jul 2026 21:46:17 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:55ecfa03758ed41f08e25da19dbe7711aba1d55035e620a70e67749be956977d
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
$ docker pull ibmjava@sha256:1672770ceadcbae0d64031cc434b7227cf8778dd78228c996b47bbc8856ee352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205401360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14795d1f52e49f457096db1cc106d12b410ffdb8863f5bdef430d7da63906152`
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
# Tue, 28 Jul 2026 20:51:43 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:51:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:51:43 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:53 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1b2a34851f8e4d5dda02bd181ef0e883fa54552544f97154b54a8833cd4ff91`  
		Last Modified: Tue, 28 Jul 2026 20:52:09 GMT  
		Size: 1.4 MB (1408907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf520065bcc05354c1a4bd446e18d265c2d56c05b11dac5a702908d7a001c15`  
		Last Modified: Tue, 28 Jul 2026 20:52:13 GMT  
		Size: 174.3 MB (174253572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:d8b201b54c25824f5f55eb9dbb6d3d43d36ce624753d266d927bca8b0d5b3c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3081433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01d6e50ca56e1b984563114c7bdd1bf554e729eade2f58f1337f4c631d4e9f0`

```dockerfile
```

-	Layers:
	-	`sha256:94889b68df50caff4479d0353363123a26b202899d137f6e4a34839eb29e5e16`  
		Last Modified: Tue, 28 Jul 2026 20:52:09 GMT  
		Size: 3.1 MB (3068835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6523a1ebd866399a0c720e283231901a9c7e0f4e61cbf46c8adcc20b8b43148a`  
		Last Modified: Tue, 28 Jul 2026 20:52:09 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b89eeb22e9c827574227ca77277b83517e45b3f61ea63533080134848c41a348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211163396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a1ad74dc0b776d4510183ea2269cfa8a7715b3ef8080de6d4cfcf1742fd6be`
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
# Tue, 28 Jul 2026 20:49:58 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:49:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:49:58 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f187a8c0ad68f5a89a6a221f2ccd9af67c955a1add4c88670ea03a1e25541290`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 1.5 MB (1494912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eabd7ce83d2a438576838fbb4651118d0844b940505271536f4c45a75c06086`  
		Last Modified: Tue, 28 Jul 2026 20:51:34 GMT  
		Size: 175.0 MB (175026616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:4d089fa404fc17ff4606cd1ebec508aaef7e48d9dee39682f0ccb48ede24c648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3067416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc6f1acb4338f2f16b869a7c398a07514b76e4fa5bfec0d0c00e60642976cf5`

```dockerfile
```

-	Layers:
	-	`sha256:536ee8fec6cc9235c95c83e744f21f66bd5c3eb078600626828b1debec40b0c9`  
		Last Modified: Tue, 28 Jul 2026 20:51:30 GMT  
		Size: 3.1 MB (3054784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00e594cfa4ebc9a62e0f61fe4f864075efd0f5db774898bae133a40d297be507`  
		Last Modified: Tue, 28 Jul 2026 20:51:30 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:fb8e9d33772f11710b1a7c25d24bd9949bc6d22ca033ce8a02dc20c1f63a0018
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198398498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e08b2eb28d1aba7cb8ef36d4ad4ac3e78d9ab7ca7bd5a09f47765307a0f19002`
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
# Tue, 28 Jul 2026 21:43:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 21:43:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:43:00 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 21:47:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 21:47:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da9f2c5d6343453177cc3d26866ba033274eea7b135ed97e4a1b17bb580c928`  
		Last Modified: Tue, 28 Jul 2026 21:46:21 GMT  
		Size: 1.4 MB (1412339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d901bedadb76de293934f60049ab6bd0c2292e0d98e74ad27c52ffadfa3078`  
		Last Modified: Tue, 28 Jul 2026 21:49:10 GMT  
		Size: 168.8 MB (168782028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:82e86d4aa8c56b6a44454908e95a8f386d053fc92d2a9e10445e02c23a75bd93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d46bb119f6cc3c372aa189c048296b5027edb4add8823e121801dbeb09cd8bc`

```dockerfile
```

-	Layers:
	-	`sha256:b8774fd6ae05b2f7673c27aa3113c078a1abc7702f7a9384c83740a55e85f7fa`  
		Last Modified: Tue, 28 Jul 2026 21:48:57 GMT  
		Size: 2.7 MB (2742137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d58d98a880b922b238edd07f06e235691913db515e16d3ea43997da1aa4ea2f9`  
		Last Modified: Tue, 28 Jul 2026 21:48:51 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:44aef1ab65f1007c3e1cfab095c4c0274a0c77da769d5cd91aa8fca19af236aa
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
$ docker pull ibmjava@sha256:169c398e7f38c28108e43393ee41291bf74fcba8a40b8bd19fe211153e219acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.7 MB (102693342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7c9b1214946a9c5751eb99c04ef0e2196a0e57138fa0646785ce004ea1c23d`
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
# Tue, 28 Jul 2026 20:51:06 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:51:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:51:06 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:18 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6939bb21e3bed6f38f4c01ff6807f9be688b1fb57c953243ad5ff38e436898dd`  
		Last Modified: Tue, 28 Jul 2026 20:51:29 GMT  
		Size: 1.4 MB (1408939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f727309486a8283163d6b4e76915e53191e3636f10ca5fc19fd43982737623ad`  
		Last Modified: Tue, 28 Jul 2026 20:51:31 GMT  
		Size: 71.5 MB (71545522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:7f6fb715ad190ffb4985dcd5e1aaf24a7bfac82a5fe1c9dbd02fb4bf6a846921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1998ae0eea278cbc4494be20a46a9657a125277785156e85e6502a2dd20f513`

```dockerfile
```

-	Layers:
	-	`sha256:6adcfeb8541a715dea5fe6befa9bb85fe8f9989aa94c4006f2699b0ce85aa72d`  
		Last Modified: Tue, 28 Jul 2026 20:51:29 GMT  
		Size: 2.1 MB (2140325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9dbbd92251dd8599bca3c7a9ddf38dd0978c6d76c44a4cdbffca34c35ea7b06`  
		Last Modified: Tue, 28 Jul 2026 20:51:28 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:f1ebfb83bd8fcfc8007e1865b8105e3d82b84314fbb25b617d4a888b2fc55b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108450093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed23d311beddb721a2e6bb8d0f459c3787bd31acb4fe3f85af57e0a07b3b3c8a`
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
# Tue, 28 Jul 2026 20:49:58 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:49:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:49:58 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:50:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:50:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f187a8c0ad68f5a89a6a221f2ccd9af67c955a1add4c88670ea03a1e25541290`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 1.5 MB (1494912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ac5ee629a4848d9074c06b44e50731b972f5e3e95e822207b5dcc6543e2079`  
		Last Modified: Tue, 28 Jul 2026 20:50:33 GMT  
		Size: 72.3 MB (72313313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:dbeef7d4bf1a6607a408be4418c000b7ccae62b659e612b131c180d8bd95fe83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7d3e705fb3e1bd900daac57230ce75c135a767133f8ecd71c5119dd6d71c22`

```dockerfile
```

-	Layers:
	-	`sha256:07bb3c1686583287af7d77413c73fdade4084213483edc73d6e7cbdf3e4d0da9`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 2.1 MB (2144826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d7d2d24b0db346b335c9292c925046b0d8d7aee155d214844f5e12328b06b07`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:7ce27db62eb49f6d4a89723636baec717030d88030413d384ae8964c86109df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104665325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9044132f0ced63480d476cfd681db7713398506bb47ba8f648641ab7a510440`
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
# Tue, 28 Jul 2026 21:46:59 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 21:46:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:46:59 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 21:48:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 21:48:30 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3562d6411d4ce28f47260485c9c8b80e5e6795ebef08c4387aeded00384ad97`  
		Last Modified: Tue, 28 Jul 2026 21:50:58 GMT  
		Size: 1.4 MB (1412414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba10a9594e64eba536443af4b6146a8bf20fb91b81ce6790fbf656131e16587`  
		Last Modified: Tue, 28 Jul 2026 21:51:02 GMT  
		Size: 75.0 MB (75048780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:f09b4c6e5d182383dba52d03e77bcd164a299c15124ffe142b6951a017328357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd00ef02818ca8c6f9d51dc5f782bd91655ca4b63b95530804562e5ce995d90`

```dockerfile
```

-	Layers:
	-	`sha256:fde4330dce714f7bfd5f989f7661c4a4207a28711b27b41828607adf56db7476`  
		Last Modified: Tue, 28 Jul 2026 21:50:58 GMT  
		Size: 2.1 MB (2143947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff05c1e3b323ee516bff80403749704982799e8f1c3fdd1ddf7179d1c753e945`  
		Last Modified: Tue, 28 Jul 2026 21:50:58 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
