## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:97a43bc76dcfecdf8ed22e68d0029d2d462261e342943486a51dfe06c59f9ccd
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
$ docker pull ibmjava@sha256:f7d1d6df0fb244a067a57743d000e29d94c64d67b700e6ae43caee3e9d124fad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.7 MB (102691489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2867ad6079855c24ab78aa01e64de2e0bcbff401cd6b6778e09b37464519c9c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:38:09 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:38:09 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:38:09 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:38:12 GMT
ADD file:799f4e238d67485cc109d93512f4fe6f75bafc26a3476772191154125e52201d in / 
# Mon, 10 Aug 2026 17:38:12 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:18:27 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:18:27 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:18:27 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:18:33 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:18:33 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598dbaa351cd680a070f8a62f0688f1f5ff95e2da639ca2792313a1e5e8ea5bf`  
		Last Modified: Tue, 18 Aug 2026 01:18:42 GMT  
		Size: 1.4 MB (1409044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bde8c0405ec7c546289174e5f0278dbb50a89e6e9bfe6e16056ebdc6b33c518d`  
		Last Modified: Tue, 18 Aug 2026 01:18:44 GMT  
		Size: 71.5 MB (71545502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:6f609cb3d92a6f849b57c85566ba6a6f1a3969ee09c422a6763571ceec5482cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c88603e0143227bc24d105736a02ec97b3cb7863b8c36bc9d82a6779d0a6df`

```dockerfile
```

-	Layers:
	-	`sha256:f7815c908aa4de67550e66cabb44f7668118f597c4ebe60d009fbba1a10beb0c`  
		Last Modified: Tue, 18 Aug 2026 01:18:42 GMT  
		Size: 2.1 MB (2140325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5ec516e43583d94415546de9780cc51200b1c1d160cf0b124dcda9c2e627590c`  
		Last Modified: Tue, 18 Aug 2026 01:18:42 GMT  
		Size: 12.6 KB (12600 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:504fc0bf70d17b1413786c84e29faafcf07b5e944f1b093c42607a9baebd6263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.4 MB (108446398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76a8f7b83da3fb3633cc3b747ea885c2e2d7fc9237ea9db6806a8c7971c52441`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:01 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:01 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:01 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:05 GMT
ADD file:d76e60867a1f84b7db03c693179093620dc98a06de4f58fdcc806cfc4e4be11c in / 
# Mon, 10 Aug 2026 17:41:05 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 01:26:57 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:26:57 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:26:57 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:27:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:27:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:f91e00e792a8adfcd4df0b5c8e802d3b4d1e06477f9753454043a7ce76772758`  
		Last Modified: Mon, 10 Aug 2026 20:09:02 GMT  
		Size: 34.6 MB (34638145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91fa2da3cee1dd95a3af2422056b0291654a7a092a03194978b464cb9ec1680e`  
		Last Modified: Tue, 18 Aug 2026 01:27:36 GMT  
		Size: 1.5 MB (1494933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0cd800ec0ea0c027610ab5f65b9876890ab993e04987efcc1cc937077933861`  
		Last Modified: Tue, 18 Aug 2026 01:27:55 GMT  
		Size: 72.3 MB (72313320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:5162c1a371b0d4dba6ea681251c0e4eac29ecc8b375ba153cea42cd18469c777
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a6b9895bba0282cd72c59fdacb593d50b9a1b4875eea985521fab59a1d65327`

```dockerfile
```

-	Layers:
	-	`sha256:1236d5850bc01011e1d4884b6947942619f9e7796708f7c57b7dfdd5655f0852`  
		Last Modified: Tue, 18 Aug 2026 01:27:53 GMT  
		Size: 2.1 MB (2144826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c3aa7d3da0ad2c0328ce106e825ab288ff707cf05918901dc2f37df4f8599f6`  
		Last Modified: Tue, 18 Aug 2026 01:27:53 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:ff1808bab01f70141e2ec4f0c24c355aca3cba9f35675f5f07af400d650eb823
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104671948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f8b1f6ff5696a7fab0ed5e705514b0b7f3d6eed7838f09c0a572d8673160422`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 10 Aug 2026 17:41:22 GMT
ARG RELEASE
# Mon, 10 Aug 2026 17:41:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 10 Aug 2026 17:41:22 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 10 Aug 2026 17:41:24 GMT
ADD file:ebe1295278656f2efe95b21ab9586cdaa8c816836b56de7bf7a802fc92465272 in / 
# Mon, 10 Aug 2026 17:41:24 GMT
CMD ["/bin/bash"]
# Tue, 18 Aug 2026 00:15:46 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 00:15:46 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 00:15:46 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 00:17:12 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 00:17:12 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801fa7aae8557244d5bfc7e2889ca3edd63fd1a4b13756c665f0ea98b9e6d2ac`  
		Last Modified: Tue, 18 Aug 2026 00:17:02 GMT  
		Size: 1.4 MB (1412266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed28cc6a3a70851ac4dbdb898d4c971a24ca2271add6337c3bb901c4e79e5f28`  
		Last Modified: Tue, 18 Aug 2026 00:17:33 GMT  
		Size: 75.0 MB (75048779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:d4e61bb3718d5352f2072670a25be1c1d675fd1c2ca1e256e1e44cbdba10a43a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5daa6e263b98188102e7a79d04c450d00ab4d61323296dee460dbc5d16c760d5`

```dockerfile
```

-	Layers:
	-	`sha256:021b1ce6756a7d27b7659f3902f471b19aec9c6a5de0fc4ab845bd35be6d3d93`  
		Last Modified: Tue, 18 Aug 2026 00:17:31 GMT  
		Size: 2.1 MB (2143947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0bbb69a65d25a2c4dd333e8969bc2acf4a0b0737b4f273920c52b14937bf2002`  
		Last Modified: Tue, 18 Aug 2026 00:17:30 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
