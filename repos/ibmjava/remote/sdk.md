## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:6fbf44aa3b4112d6df6c186ec285915c6ef76260fe9ac6b5aa3d35f331a708c4
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
$ docker pull ibmjava@sha256:4a52c40b6c44f7aacc96d2936d46cd93b546587f031b55ca325948f9c9d09461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205337843 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b1b90ad9734fb2ed1a98da3a34fcf13ce64c87655d8f9aa0fd4b02ecc094e0a`
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
# Fri, 02 Oct 2026 01:29:19 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 02 Oct 2026 01:29:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 01:29:19 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 02 Oct 2026 01:30:45 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 02 Oct 2026 01:30:45 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e759b58b736eaceab87043edd7dd3b0ab4b1448ee3f54d321daa0d68f9d9293`  
		Last Modified: Fri, 02 Oct 2026 01:31:00 GMT  
		Size: 1.4 MB (1409438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae6f968de2882644c31dc38afbda245f967a302b796dea474c569403aae7ebc8`  
		Last Modified: Fri, 02 Oct 2026 01:31:04 GMT  
		Size: 174.2 MB (174176778 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:7b57769584d6439fee6f9acd23df7719314495a834c782431955bfaa345695a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3083403 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e412d66f098697a1bdad19c5d0ef776b478e9445f5ac0222c14e722288d59af`

```dockerfile
```

-	Layers:
	-	`sha256:a31b804f67964fa3360667d7ae2c7823e82dddb17fca3fbf00bd594dd5e64f01`  
		Last Modified: Fri, 02 Oct 2026 01:31:00 GMT  
		Size: 3.1 MB (3070806 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e91d537af0a6a3d8bc2234b4c5b8b6c83d53121d36d3afd728d5d496c6af897b`  
		Last Modified: Fri, 02 Oct 2026 01:31:00 GMT  
		Size: 12.6 KB (12597 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b6029e373ec6275fd015da5947168748724e05b316534e79c3ffc5a313fa5e5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211156195 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7437d2ae08bbf4a30018896f9cca647dac55c2cc5c8a81ffe42ab6f78d21f60`
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
# Wed, 09 Sep 2026 04:12:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 04:12:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:928ee8e3556363dd91ea7eb64024ab542a4943f50ae9a18e6b3986eb02d2f6db`  
		Last Modified: Wed, 09 Sep 2026 04:13:38 GMT  
		Size: 175.0 MB (174958680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:10fa4f5d2c62702c62ca6a529100a19de2756cbfbf44ad6223abe297ed190045
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3067456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9475cf0a3727e8bea16835dfb87a35e0ba7ee0c29095884f9a1a4ddc2aa0d353`

```dockerfile
```

-	Layers:
	-	`sha256:d4f39573081e43767bf27cf65424c779a08b9f8723717529a39278ddd7b4df5f`  
		Last Modified: Wed, 09 Sep 2026 04:13:34 GMT  
		Size: 3.1 MB (3054824 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd0577360ecea3140dbfb9b12efe82fe48b2bd5e17b3c0ca3dfe3176699e6179`  
		Last Modified: Wed, 09 Sep 2026 04:13:34 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:57ebc5c5a46d84ebc0af261b683cb692da21ede76a01dd44074a76d0154cd31d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.3 MB (198348480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f40c04e01303cb5ae427e947e8f320c8293046a8e96483ee991280f17cfd25a3`
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
# Fri, 02 Oct 2026 02:04:02 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 02 Oct 2026 02:04:02 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 02 Oct 2026 02:04:02 GMT
ENV JAVA_VERSION=8.0.8.71
# Fri, 02 Oct 2026 02:06:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 02 Oct 2026 02:06:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:e1502cdfd138d89dddc82531455ad8426a7eaa0d843665253c16b88cb6870c91`  
		Last Modified: Thu, 24 Sep 2026 23:36:39 GMT  
		Size: 28.2 MB (28222068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0db7384dad11d88c451eb881ae35001ae2d5c471de779a867fb10a38c676be`  
		Last Modified: Fri, 02 Oct 2026 02:05:07 GMT  
		Size: 1.4 MB (1412754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed56f0fc758c3d098f7c9c0163b85448d984012090a66fca04b34f21540cdae1`  
		Last Modified: Fri, 02 Oct 2026 02:06:40 GMT  
		Size: 168.7 MB (168713658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:9231c1e92e8f14cbbfa4f5f97785337d380ef04daa36b2d0d27aa7e5c9434093
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2756706 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c944fee27739b3f52cbc79a096eebd7f678e18e56bf0fcab92c224d6079b0c8`

```dockerfile
```

-	Layers:
	-	`sha256:da50913fc93520f96ccac674da8be44e9001071fc166000945d1e33f46d0c2e7`  
		Last Modified: Fri, 02 Oct 2026 02:06:36 GMT  
		Size: 2.7 MB (2744108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07136004ba2ff11f7e7ebf73fbd30d37bbbb9286865f3b3f14223170a017a155`  
		Last Modified: Fri, 02 Oct 2026 02:06:35 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json
