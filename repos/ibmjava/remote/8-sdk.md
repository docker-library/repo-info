## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:f674fbe8fccb6f71987bce54d076b3ae1ba3dd1da9f4091a40463d9ea1d4db49
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
$ docker pull ibmjava@sha256:23ed0bdf4d5b6be25a44dca58ccdffb5d644de85279eae84a2b9245125a50105
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.7 MB (205653727 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:279981eece74369f7e238be8f778622c2dda3e6f27041e17d3b29b48ec690496`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:08:35 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:08:35 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:08:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:08:37 GMT
ADD file:f5e63f24ff2ea992d0d2b5e5c013cff5b0b8054baa392912813e7d238f62d44c in / 
# Tue, 10 Nov 2026 08:08:37 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 17:05:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:05:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:05:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:06:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:06:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a30daeb5c0323ffedbffc871c306ac561c4080783c3fbe4d33e4191162e8145`  
		Last Modified: Thu, 12 Nov 2026 17:06:42 GMT  
		Size: 1.4 MB (1407439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b825fafce9599fc029205943a81bec534b65e2501c55cb7fa1f5098de19ee480`  
		Last Modified: Thu, 12 Nov 2026 17:06:46 GMT  
		Size: 174.2 MB (174176755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:e618e5185f5220e5918365b72954e59e2086b16923b933da767765d2cca032ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3081464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b6daf1a078b5398174ae56f4eb57e2f0c2b981be26dbc1989775cc61fdab8ae`

```dockerfile
```

-	Layers:
	-	`sha256:c3b96d9b9fe8cee20784f5476113df02cc05892ecd8ab53500a9bc1d350eb592`  
		Last Modified: Thu, 12 Nov 2026 17:06:42 GMT  
		Size: 3.1 MB (3068867 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f8b5bea9d8e9c0c2f48f52e5317a27b86525f942111e51b9d507c7eb9cf1bc29`  
		Last Modified: Thu, 12 Nov 2026 17:06:42 GMT  
		Size: 12.6 KB (12597 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:87a07f9fd48d2d29e02980eeef377c4d01621562d97c3eb5e2dd9de02cd7f441
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.5 MB (211470586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f3791e84b1a0058eb4d4af9db07ddd5bc7c760388192297e08a0bf6120ef5f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:23 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:23 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:23 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:28 GMT
ADD file:385fbf5f6ded013bc8053d3b154b3dafc78f1addd59a1388bd56f2253ef77d18 in / 
# Tue, 10 Nov 2026 08:09:29 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 17:03:46 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:03:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:03:46 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:06:05 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:06:05 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:930bdfdd5d19974adb0ba597663b144584e8fa18e103e857a3dd3eb2cd73ec5e`  
		Last Modified: Tue, 10 Nov 2026 08:55:08 GMT  
		Size: 35.0 MB (35018100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8800ed5d0e6c0c576b97de7b9fc3b15601a3348b44c928b530fffb0389b9b0`  
		Last Modified: Thu, 12 Nov 2026 17:04:53 GMT  
		Size: 1.5 MB (1493807 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25784add3f9272f8d50563de7a0b514702479019875a2e23a4e7b6f21e7c569a`  
		Last Modified: Thu, 12 Nov 2026 17:06:54 GMT  
		Size: 175.0 MB (174958679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:f7bbac94f90590ab9339ba99db43a3155d27e0ce22ee12c26eb4ca8cd423685f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3067447 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:339055e4eff396f5ecb82a82e87d19500a3f3f761c80631f783852d5699c5810`

```dockerfile
```

-	Layers:
	-	`sha256:0a361ba76972dd6b3d97f1a2201471fe45b527f1e389a81d62e88d97b031992e`  
		Last Modified: Thu, 12 Nov 2026 17:06:50 GMT  
		Size: 3.1 MB (3054816 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11dfacb71cb91a1aef78df17b0e81b7c1a4736e15c47f837a22fdd7eca24b549`  
		Last Modified: Thu, 12 Nov 2026 17:06:50 GMT  
		Size: 12.6 KB (12631 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:55f6a3e7770879352679b138b8aae6c61281a107c3ad9738591f93d2fe315cb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.7 MB (198662382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b1f119ec59f2b87923ea775c80cd397cf5f0554e1deba2d111e596a029a41e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 10 Nov 2026 08:09:25 GMT
ARG RELEASE
# Tue, 10 Nov 2026 08:09:25 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 10 Nov 2026 08:09:25 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 10 Nov 2026 08:09:27 GMT
ADD file:2eb742111a0ed752506db948cef18dd825d45b92c3bb8ae228a88ed48e1b7c11 in / 
# Tue, 10 Nov 2026 08:09:27 GMT
CMD ["/bin/bash"]
# Thu, 12 Nov 2026 17:19:57 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:19:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:19:57 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:20:54 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:20:54 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ee971bee4c45f08194cd2311c6f51955f945c5a0fa74935d1fe8a85ef452dc3b`  
		Last Modified: Tue, 10 Nov 2026 08:55:22 GMT  
		Size: 28.5 MB (28538219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:546056fec9ae7853ae83da83a1b70a31142b612b9cda5562eb8ca0d769975cd0`  
		Last Modified: Thu, 12 Nov 2026 17:20:48 GMT  
		Size: 1.4 MB (1410521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa4aa42c86219492abc1786f0bc4db9bfa42a9203dcbf2a6988ed28da835420`  
		Last Modified: Thu, 12 Nov 2026 17:21:38 GMT  
		Size: 168.7 MB (168713642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:d9de549518c7e57c862039afa086a9f92af36ce2f19a72d40255733319aeeebb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7def8d765ac2d4b48609a636c2824c0e8321f8a0a1e1b859749b7ba776cccd6`

```dockerfile
```

-	Layers:
	-	`sha256:e77a7da7695a9b1bd2e9f3298957deef6e7ec08699c1151eba10808945157229`  
		Last Modified: Thu, 12 Nov 2026 17:21:33 GMT  
		Size: 2.7 MB (2742169 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:75c9dc5c0fcf5cfb04d73fbfc72bbb1109f450c3b5c2af254a8013879a9c0d56`  
		Last Modified: Thu, 12 Nov 2026 17:21:31 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json
