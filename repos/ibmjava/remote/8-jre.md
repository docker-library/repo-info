## `ibmjava:8-jre`

```console
$ docker pull ibmjava@sha256:d9aad1452978b26717e008b60500ab0a70aaf651062ad08169db5e251afa86f2
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
$ docker pull ibmjava@sha256:ab2b82f99e613401464fb2cbc89f7b063142b857ea46a64a5e57a4b6afa8215d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168048509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7643fef25001d087d706d76fdcf3641bf73753d9abbff165cb06db8e87216e8e`
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
# Fri, 02 Oct 2026 01:29:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 02 Oct 2026 01:29:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:98c4455a98982b35380ec62f90d5cf0edff02eeb4b3bb18595d871fdeb0c0c67`  
		Last Modified: Thu, 24 Sep 2026 23:36:04 GMT  
		Size: 29.8 MB (29751627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4cf307cde391b76ec763ac443ad6851a5fd84bc14496d14b1b06c2b13769888`  
		Last Modified: Fri, 02 Oct 2026 01:29:47 GMT  
		Size: 1.4 MB (1409383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6088741426514c4dfb7c944f82d1084fcf02db4b6ad557be8e22b059e7a6c537`  
		Last Modified: Fri, 02 Oct 2026 01:29:50 GMT  
		Size: 136.9 MB (136887499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:a5d5480b56b0374e15dfd19da4f01372b28452592f9c3ada88ab8832f9abe6ac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2173055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58166c2f32c5a2847ab7384cb426b9619e583238af92def97e96786451ab81d6`

```dockerfile
```

-	Layers:
	-	`sha256:c62efaf265936d5655092415852657ce9cf0f516c6bb3d388a808374476a789f`  
		Last Modified: Fri, 02 Oct 2026 01:29:47 GMT  
		Size: 2.2 MB (2159863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:396e29b664c2c61c557afbb52772899ad82eea27f66aaacc2d61c43376d8077c`  
		Last Modified: Fri, 02 Oct 2026 01:29:47 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:1d492819639ee55899e53529d120590b4347c3bfdcc72d00d11f73ba34d41b26
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173668260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f5f732b9f866f5e09f9103a623256c181e0b5943504c9880856db1c3f081f2f`
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
# Wed, 09 Sep 2026 02:47:20 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:47:20 GMT
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
	-	`sha256:4c6b2fb6a6763a715e45985f901b349f307da2c3c8bfe5c045d2c6d20dcd348e`  
		Last Modified: Wed, 09 Sep 2026 02:48:05 GMT  
		Size: 137.5 MB (137470745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:3f320143eac5236c8edd03dc100edd63261dced7fc46ec9f2ec979de496d5a67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3de376870c915c167dc4f8591944c5efa298e4da91bc2ec5e2bae38cf9b8b7af`

```dockerfile
```

-	Layers:
	-	`sha256:a4c5e75143aa16e6f260fbb8097d6e469c8289c1ad5baa6bcf109f4f15235880`  
		Last Modified: Wed, 09 Sep 2026 02:48:02 GMT  
		Size: 2.2 MB (2161222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:74e9732253727f42caa5bc4a7fab9d70ae725fdb2d19201f3c2b454492ca1731`  
		Last Modified: Wed, 09 Sep 2026 02:48:02 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:d32e5a7eb39e81b1f1d17cee7490541c97835b249fc0d1aa9225fa172fd0a9bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167800654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:071373eb9714e580de29a63d839589890759a037af5d386c30406406590653bc`
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
# Fri, 02 Oct 2026 02:04:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 02 Oct 2026 02:04:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:b7495ea58bf411c64486ef36771dce503ddfda226aaf0819337ae0d34f9ea152`  
		Last Modified: Fri, 02 Oct 2026 02:05:11 GMT  
		Size: 138.2 MB (138165832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:31a2864a2e634e351302a65286da7ddb0c8b8545aac0dba13c2475643ca6eaa2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2173002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af62c150029188a81d9c976646ca453fc51c438cd74e1de93601d55d8b571cae`

```dockerfile
```

-	Layers:
	-	`sha256:67e562c99e1aa4f52b92f43af9a0f46b26a36e90f673443d0d266954c8adc6e4`  
		Last Modified: Fri, 02 Oct 2026 02:05:07 GMT  
		Size: 2.2 MB (2159810 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16625c35a9786c988983420048c294a6444a6441b78fbc79d7dd48ede00f2306`  
		Last Modified: Fri, 02 Oct 2026 02:05:07 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json
