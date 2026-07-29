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
