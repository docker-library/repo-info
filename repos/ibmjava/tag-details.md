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
$ docker pull ibmjava@sha256:9039e1e4d748d17612fd24587f004dbed73dff3b92a975498c1da1e188e3fd0d
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
$ docker pull ibmjava@sha256:22cf0614bb68b6f0d09e45c2d3f41e30eb6bfab07c28fc8fc31c8669fc9fb8ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168098252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5becd9c326e9770c881b2dc8bfe3268f62753f168aca61c486b5519974b39b9`
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
# Tue, 18 Aug 2026 01:18:19 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:18:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:18:19 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:18:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5220b06eb3d6e3c89fb3067913b44fea7fbd6e446fdf7256da6c1ea1cd50e298`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 1.4 MB (1408986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf28c9544063b5941a8e069c95e0574e36967e1476a6ded29c4f5692669ff170`  
		Last Modified: Tue, 18 Aug 2026 01:18:44 GMT  
		Size: 137.0 MB (136952323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:4aa0d7c9d1de033ec584b677dc17a809bee9224a72ff19ace694f7953c0a01ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deff2f66fe363a418559cfa6e4f815ffa369e1e5de8c289be7a751d27ebf829`

```dockerfile
```

-	Layers:
	-	`sha256:b50d5fac940bc5d7716337b5b9a2807ade65e94a7908a5c91a9477a14cc2ab6c`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 2.2 MB (2157892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe83552066a2c24309eb77282032669a05d880e615fb5dedadb42c2c12d6fb77`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b2be3a858d8a772fb9235f374e2b321a55651e227dea40d42bb83998d18c4924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173654088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8674bbf40d9a6357198f62f5af1481f4241ec179583f78216f9ecf99df9624d3`
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
# Tue, 18 Aug 2026 01:27:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:27:07 GMT
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
	-	`sha256:14437afed231e43dcf572abfb4d3ad507652edada451c268f9a4ffa31b20dc1e`  
		Last Modified: Tue, 18 Aug 2026 01:27:40 GMT  
		Size: 137.5 MB (137521010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:cee706611957850a64e0f6cdaaf929237b2ad46bb6f3c4198515750ef5de0b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36b75a133958605b31322598f01ed51605f0d86dc78cf3fa194af2405a899cb`

```dockerfile
```

-	Layers:
	-	`sha256:91fb9e756d7e60c0712cb6229049341e85be5a3684ebbf904b2184e85035a84f`  
		Last Modified: Tue, 18 Aug 2026 01:27:36 GMT  
		Size: 2.2 MB (2161182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b785c79fe5b4f397274ab95bae3b08fd5c0c6de5ecdbab6ae7a0a74cc177c8`  
		Last Modified: Tue, 18 Aug 2026 01:27:36 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; s390x

```console
$ docker pull ibmjava@sha256:b6988a79a6c1231bd0f2330948c44903811e7de8b1aa7938f63e089196327ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167852668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7e3b3d95ce24138d96b47e53773d5ae49cb59bb93dd0a5e73b1a8fd856bc94`
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
# Tue, 18 Aug 2026 00:16:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 00:16:38 GMT
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
	-	`sha256:09fbd5880c9fe0d67d5be02d2f62d07d12603b837199a85224c2e24b337ae263`  
		Last Modified: Tue, 18 Aug 2026 00:17:05 GMT  
		Size: 138.2 MB (138229499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:a1a1766c44bd4c663397898b106b7e9a3af4b1872369372e5ea7c12e7b530a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9b23a5d97fd6644f96e411685a59dd9e4b7940039ea28d6be3ab2bbe98053c`

```dockerfile
```

-	Layers:
	-	`sha256:e58714c582597fc7a58a19b3c2b5f70fa97a843d0e86d60ef1debe7b893cfc8a`  
		Last Modified: Tue, 18 Aug 2026 00:17:02 GMT  
		Size: 2.2 MB (2157839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9b7ae2321c8df9bd3c787e05e56d9bb5ff504e4b7f37d4288f1f55f8942babc`  
		Last Modified: Tue, 18 Aug 2026 00:17:02 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-jre`

```console
$ docker pull ibmjava@sha256:9039e1e4d748d17612fd24587f004dbed73dff3b92a975498c1da1e188e3fd0d
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
$ docker pull ibmjava@sha256:22cf0614bb68b6f0d09e45c2d3f41e30eb6bfab07c28fc8fc31c8669fc9fb8ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168098252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5becd9c326e9770c881b2dc8bfe3268f62753f168aca61c486b5519974b39b9`
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
# Tue, 18 Aug 2026 01:18:19 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:18:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:18:19 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:18:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5220b06eb3d6e3c89fb3067913b44fea7fbd6e446fdf7256da6c1ea1cd50e298`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 1.4 MB (1408986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf28c9544063b5941a8e069c95e0574e36967e1476a6ded29c4f5692669ff170`  
		Last Modified: Tue, 18 Aug 2026 01:18:44 GMT  
		Size: 137.0 MB (136952323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:4aa0d7c9d1de033ec584b677dc17a809bee9224a72ff19ace694f7953c0a01ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deff2f66fe363a418559cfa6e4f815ffa369e1e5de8c289be7a751d27ebf829`

```dockerfile
```

-	Layers:
	-	`sha256:b50d5fac940bc5d7716337b5b9a2807ade65e94a7908a5c91a9477a14cc2ab6c`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 2.2 MB (2157892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe83552066a2c24309eb77282032669a05d880e615fb5dedadb42c2c12d6fb77`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b2be3a858d8a772fb9235f374e2b321a55651e227dea40d42bb83998d18c4924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173654088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8674bbf40d9a6357198f62f5af1481f4241ec179583f78216f9ecf99df9624d3`
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
# Tue, 18 Aug 2026 01:27:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:27:07 GMT
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
	-	`sha256:14437afed231e43dcf572abfb4d3ad507652edada451c268f9a4ffa31b20dc1e`  
		Last Modified: Tue, 18 Aug 2026 01:27:40 GMT  
		Size: 137.5 MB (137521010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:cee706611957850a64e0f6cdaaf929237b2ad46bb6f3c4198515750ef5de0b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36b75a133958605b31322598f01ed51605f0d86dc78cf3fa194af2405a899cb`

```dockerfile
```

-	Layers:
	-	`sha256:91fb9e756d7e60c0712cb6229049341e85be5a3684ebbf904b2184e85035a84f`  
		Last Modified: Tue, 18 Aug 2026 01:27:36 GMT  
		Size: 2.2 MB (2161182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b785c79fe5b4f397274ab95bae3b08fd5c0c6de5ecdbab6ae7a0a74cc177c8`  
		Last Modified: Tue, 18 Aug 2026 01:27:36 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:b6988a79a6c1231bd0f2330948c44903811e7de8b1aa7938f63e089196327ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167852668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7e3b3d95ce24138d96b47e53773d5ae49cb59bb93dd0a5e73b1a8fd856bc94`
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
# Tue, 18 Aug 2026 00:16:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 00:16:38 GMT
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
	-	`sha256:09fbd5880c9fe0d67d5be02d2f62d07d12603b837199a85224c2e24b337ae263`  
		Last Modified: Tue, 18 Aug 2026 00:17:05 GMT  
		Size: 138.2 MB (138229499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:a1a1766c44bd4c663397898b106b7e9a3af4b1872369372e5ea7c12e7b530a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9b23a5d97fd6644f96e411685a59dd9e4b7940039ea28d6be3ab2bbe98053c`

```dockerfile
```

-	Layers:
	-	`sha256:e58714c582597fc7a58a19b3c2b5f70fa97a843d0e86d60ef1debe7b893cfc8a`  
		Last Modified: Tue, 18 Aug 2026 00:17:02 GMT  
		Size: 2.2 MB (2157839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9b7ae2321c8df9bd3c787e05e56d9bb5ff504e4b7f37d4288f1f55f8942babc`  
		Last Modified: Tue, 18 Aug 2026 00:17:02 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:b69c5e9b525eaf182860523dbf490a0c247f50d5f620141fa9145956c4f0fac3
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
$ docker pull ibmjava@sha256:e0782e0c897ce5aed7473ea811f83b9997bebb4c49cd80d6a67b206a569cc212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205399528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f234df7ba904b79192e68d2b2afc7407e25245c150c42d7ab1fb7d49231c1b`
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
# Tue, 18 Aug 2026 01:18:42 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:18:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:18:42 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:18:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:18:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e79033bc4a3834c712aff420d5e68c705270f566c39afc5c8da9f0d863795a`  
		Last Modified: Tue, 18 Aug 2026 01:19:07 GMT  
		Size: 1.4 MB (1409004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acd88c104d0b92a5a12746d733f5924b10d7614af8a85fe2419cd16b991b3cf`  
		Last Modified: Tue, 18 Aug 2026 01:19:11 GMT  
		Size: 174.3 MB (174253581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:be83649410c341ceea0e0c455546dc110c9ef373390030421c34ff578d961fe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3081433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c2b54349d6fb4dac3654f7522c2950c794fd9afa9562285cbe54bd265c4a9a`

```dockerfile
```

-	Layers:
	-	`sha256:3630511a4076dfd90aa8e5f53c90737579f56ae7cd1ecb5d3ffcbe0cc9ff656a`  
		Last Modified: Tue, 18 Aug 2026 01:19:07 GMT  
		Size: 3.1 MB (3068835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b081349da705060d28503480a40c4a75741117663d04d82ffdd41554af21f6d`  
		Last Modified: Tue, 18 Aug 2026 01:19:07 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:96133595786838caf8e2602d0e7fbf15ff170aebb6ef3757ac185e641c95c200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211159690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4568936606ce06351c40fd7689ac46b071f86158453c03627488166e19de2c`
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
# Tue, 18 Aug 2026 01:28:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:28:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:f2c6e4faae564b06499a8f943a07504dd6cac47bba66982f37a51b80b9d3e080`  
		Last Modified: Tue, 18 Aug 2026 01:28:44 GMT  
		Size: 175.0 MB (175026612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:0e79ff8bb4373148526b41cecbb77983503f5714797da4c4a16d5f1c316baefd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3067416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125d1bde43ae410efe5b756397f1917704c118792299c866955f439f1ce72a53`

```dockerfile
```

-	Layers:
	-	`sha256:213a59145eb3ca28423d1d6c7f51929b0601f1c7b57e851b9a5499a0168887bf`  
		Last Modified: Tue, 18 Aug 2026 01:28:40 GMT  
		Size: 3.1 MB (3054784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce7485e3cc0c0f7d7f8b50ca5d1ebf74af472d9b81b008d94647892505b11151`  
		Last Modified: Tue, 18 Aug 2026 01:28:40 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:8fcdbe84f10089792544320400d421e7524cbc214d646ab0fd6e07aa1fba59ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198405163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb05f5096125f1129ef38a5bebc6e4b856ca85379792ac407905f38135e6fa37`
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
# Tue, 18 Aug 2026 00:17:14 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 00:17:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 00:17:14 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 00:17:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 00:17:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce487f4af036e6062c9afd9cfac3679a5fb362a6a7ec741c8ae55190f28a9ab`  
		Last Modified: Tue, 18 Aug 2026 00:18:29 GMT  
		Size: 1.4 MB (1412308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80ff42fac21867f1f12d4c0fd3b81449e568ee3ab8d507f32225fa589adc6a6`  
		Last Modified: Tue, 18 Aug 2026 00:18:33 GMT  
		Size: 168.8 MB (168781952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:4e1a433af53fa5b9ed34eb301b8d5d64f1a9567f1bec75d82584e7f88c10d998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b536d3896b227992e906897e7df26a9f2fdbdb209fa8edb07f5c3fcf620192`

```dockerfile
```

-	Layers:
	-	`sha256:32434e7eb88e78a67eff488b84c2113dc738f6d61c04b33fffdeb24aa7091110`  
		Last Modified: Tue, 18 Aug 2026 00:18:29 GMT  
		Size: 2.7 MB (2742137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42379d16314a68ba564b2be8a00cf386cb15193fefdbf8bee161ad2c71d4e37b`  
		Last Modified: Tue, 18 Aug 2026 00:18:28 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

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

## `ibmjava:jre`

```console
$ docker pull ibmjava@sha256:9039e1e4d748d17612fd24587f004dbed73dff3b92a975498c1da1e188e3fd0d
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
$ docker pull ibmjava@sha256:22cf0614bb68b6f0d09e45c2d3f41e30eb6bfab07c28fc8fc31c8669fc9fb8ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168098252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5becd9c326e9770c881b2dc8bfe3268f62753f168aca61c486b5519974b39b9`
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
# Tue, 18 Aug 2026 01:18:19 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:18:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:18:19 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:18:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5220b06eb3d6e3c89fb3067913b44fea7fbd6e446fdf7256da6c1ea1cd50e298`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 1.4 MB (1408986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf28c9544063b5941a8e069c95e0574e36967e1476a6ded29c4f5692669ff170`  
		Last Modified: Tue, 18 Aug 2026 01:18:44 GMT  
		Size: 137.0 MB (136952323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:4aa0d7c9d1de033ec584b677dc17a809bee9224a72ff19ace694f7953c0a01ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deff2f66fe363a418559cfa6e4f815ffa369e1e5de8c289be7a751d27ebf829`

```dockerfile
```

-	Layers:
	-	`sha256:b50d5fac940bc5d7716337b5b9a2807ade65e94a7908a5c91a9477a14cc2ab6c`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 2.2 MB (2157892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe83552066a2c24309eb77282032669a05d880e615fb5dedadb42c2c12d6fb77`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b2be3a858d8a772fb9235f374e2b321a55651e227dea40d42bb83998d18c4924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173654088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8674bbf40d9a6357198f62f5af1481f4241ec179583f78216f9ecf99df9624d3`
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
# Tue, 18 Aug 2026 01:27:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:27:07 GMT
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
	-	`sha256:14437afed231e43dcf572abfb4d3ad507652edada451c268f9a4ffa31b20dc1e`  
		Last Modified: Tue, 18 Aug 2026 01:27:40 GMT  
		Size: 137.5 MB (137521010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:cee706611957850a64e0f6cdaaf929237b2ad46bb6f3c4198515750ef5de0b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36b75a133958605b31322598f01ed51605f0d86dc78cf3fa194af2405a899cb`

```dockerfile
```

-	Layers:
	-	`sha256:91fb9e756d7e60c0712cb6229049341e85be5a3684ebbf904b2184e85035a84f`  
		Last Modified: Tue, 18 Aug 2026 01:27:36 GMT  
		Size: 2.2 MB (2161182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b785c79fe5b4f397274ab95bae3b08fd5c0c6de5ecdbab6ae7a0a74cc177c8`  
		Last Modified: Tue, 18 Aug 2026 01:27:36 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:b6988a79a6c1231bd0f2330948c44903811e7de8b1aa7938f63e089196327ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167852668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7e3b3d95ce24138d96b47e53773d5ae49cb59bb93dd0a5e73b1a8fd856bc94`
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
# Tue, 18 Aug 2026 00:16:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 00:16:38 GMT
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
	-	`sha256:09fbd5880c9fe0d67d5be02d2f62d07d12603b837199a85224c2e24b337ae263`  
		Last Modified: Tue, 18 Aug 2026 00:17:05 GMT  
		Size: 138.2 MB (138229499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:a1a1766c44bd4c663397898b106b7e9a3af4b1872369372e5ea7c12e7b530a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9b23a5d97fd6644f96e411685a59dd9e4b7940039ea28d6be3ab2bbe98053c`

```dockerfile
```

-	Layers:
	-	`sha256:e58714c582597fc7a58a19b3c2b5f70fa97a843d0e86d60ef1debe7b893cfc8a`  
		Last Modified: Tue, 18 Aug 2026 00:17:02 GMT  
		Size: 2.2 MB (2157839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9b7ae2321c8df9bd3c787e05e56d9bb5ff504e4b7f37d4288f1f55f8942babc`  
		Last Modified: Tue, 18 Aug 2026 00:17:02 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:latest`

```console
$ docker pull ibmjava@sha256:9039e1e4d748d17612fd24587f004dbed73dff3b92a975498c1da1e188e3fd0d
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
$ docker pull ibmjava@sha256:22cf0614bb68b6f0d09e45c2d3f41e30eb6bfab07c28fc8fc31c8669fc9fb8ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168098252 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5becd9c326e9770c881b2dc8bfe3268f62753f168aca61c486b5519974b39b9`
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
# Tue, 18 Aug 2026 01:18:19 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:18:19 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:18:19 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:18:27 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:18:27 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5220b06eb3d6e3c89fb3067913b44fea7fbd6e446fdf7256da6c1ea1cd50e298`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 1.4 MB (1408986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf28c9544063b5941a8e069c95e0574e36967e1476a6ded29c4f5692669ff170`  
		Last Modified: Tue, 18 Aug 2026 01:18:44 GMT  
		Size: 137.0 MB (136952323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:4aa0d7c9d1de033ec584b677dc17a809bee9224a72ff19ace694f7953c0a01ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171084 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5deff2f66fe363a418559cfa6e4f815ffa369e1e5de8c289be7a751d27ebf829`

```dockerfile
```

-	Layers:
	-	`sha256:b50d5fac940bc5d7716337b5b9a2807ade65e94a7908a5c91a9477a14cc2ab6c`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 2.2 MB (2157892 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe83552066a2c24309eb77282032669a05d880e615fb5dedadb42c2c12d6fb77`  
		Last Modified: Tue, 18 Aug 2026 01:18:41 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b2be3a858d8a772fb9235f374e2b321a55651e227dea40d42bb83998d18c4924
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.7 MB (173654088 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8674bbf40d9a6357198f62f5af1481f4241ec179583f78216f9ecf99df9624d3`
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
# Tue, 18 Aug 2026 01:27:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:27:07 GMT
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
	-	`sha256:14437afed231e43dcf572abfb4d3ad507652edada451c268f9a4ffa31b20dc1e`  
		Last Modified: Tue, 18 Aug 2026 01:27:40 GMT  
		Size: 137.5 MB (137521010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:cee706611957850a64e0f6cdaaf929237b2ad46bb6f3c4198515750ef5de0b35
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174420 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a36b75a133958605b31322598f01ed51605f0d86dc78cf3fa194af2405a899cb`

```dockerfile
```

-	Layers:
	-	`sha256:91fb9e756d7e60c0712cb6229049341e85be5a3684ebbf904b2184e85035a84f`  
		Last Modified: Tue, 18 Aug 2026 01:27:36 GMT  
		Size: 2.2 MB (2161182 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3b785c79fe5b4f397274ab95bae3b08fd5c0c6de5ecdbab6ae7a0a74cc177c8`  
		Last Modified: Tue, 18 Aug 2026 01:27:36 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; s390x

```console
$ docker pull ibmjava@sha256:b6988a79a6c1231bd0f2330948c44903811e7de8b1aa7938f63e089196327ac7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.9 MB (167852668 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d7e3b3d95ce24138d96b47e53773d5ae49cb59bb93dd0a5e73b1a8fd856bc94`
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
# Tue, 18 Aug 2026 00:16:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='48af4b3612968fb5289aabbc07333bb00e5998677ac6f8a6998af949b0ad1db5';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='d2c610017701936f50edbdc6b4f9a105e614522faa6c3ccadfaf94651cc91769';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8ef49d39831c6db5532f71834a50a384982e16f3880aa320ec67e07522949df0';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 00:16:38 GMT
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
	-	`sha256:09fbd5880c9fe0d67d5be02d2f62d07d12603b837199a85224c2e24b337ae263`  
		Last Modified: Tue, 18 Aug 2026 00:17:05 GMT  
		Size: 138.2 MB (138229499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:a1a1766c44bd4c663397898b106b7e9a3af4b1872369372e5ea7c12e7b530a24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c9b23a5d97fd6644f96e411685a59dd9e4b7940039ea28d6be3ab2bbe98053c`

```dockerfile
```

-	Layers:
	-	`sha256:e58714c582597fc7a58a19b3c2b5f70fa97a843d0e86d60ef1debe7b893cfc8a`  
		Last Modified: Tue, 18 Aug 2026 00:17:02 GMT  
		Size: 2.2 MB (2157839 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9b7ae2321c8df9bd3c787e05e56d9bb5ff504e4b7f37d4288f1f55f8942babc`  
		Last Modified: Tue, 18 Aug 2026 00:17:02 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:b69c5e9b525eaf182860523dbf490a0c247f50d5f620141fa9145956c4f0fac3
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
$ docker pull ibmjava@sha256:e0782e0c897ce5aed7473ea811f83b9997bebb4c49cd80d6a67b206a569cc212
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205399528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95f234df7ba904b79192e68d2b2afc7407e25245c150c42d7ab1fb7d49231c1b`
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
# Tue, 18 Aug 2026 01:18:42 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 01:18:42 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 01:18:42 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 01:18:50 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:18:50 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d544298cabd50e7c86bfef1e52b67f01db6b3a57bfecfe37a851873dee83e52a`  
		Last Modified: Mon, 10 Aug 2026 20:08:41 GMT  
		Size: 29.7 MB (29736943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e79033bc4a3834c712aff420d5e68c705270f566c39afc5c8da9f0d863795a`  
		Last Modified: Tue, 18 Aug 2026 01:19:07 GMT  
		Size: 1.4 MB (1409004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acd88c104d0b92a5a12746d733f5924b10d7614af8a85fe2419cd16b991b3cf`  
		Last Modified: Tue, 18 Aug 2026 01:19:11 GMT  
		Size: 174.3 MB (174253581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:be83649410c341ceea0e0c455546dc110c9ef373390030421c34ff578d961fe5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3081433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2c2b54349d6fb4dac3654f7522c2950c794fd9afa9562285cbe54bd265c4a9a`

```dockerfile
```

-	Layers:
	-	`sha256:3630511a4076dfd90aa8e5f53c90737579f56ae7cd1ecb5d3ffcbe0cc9ff656a`  
		Last Modified: Tue, 18 Aug 2026 01:19:07 GMT  
		Size: 3.1 MB (3068835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b081349da705060d28503480a40c4a75741117663d04d82ffdd41554af21f6d`  
		Last Modified: Tue, 18 Aug 2026 01:19:07 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:96133595786838caf8e2602d0e7fbf15ff170aebb6ef3757ac185e641c95c200
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211159690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c4568936606ce06351c40fd7689ac46b071f86158453c03627488166e19de2c`
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
# Tue, 18 Aug 2026 01:28:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 01:28:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:f2c6e4faae564b06499a8f943a07504dd6cac47bba66982f37a51b80b9d3e080`  
		Last Modified: Tue, 18 Aug 2026 01:28:44 GMT  
		Size: 175.0 MB (175026612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:0e79ff8bb4373148526b41cecbb77983503f5714797da4c4a16d5f1c316baefd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3067416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:125d1bde43ae410efe5b756397f1917704c118792299c866955f439f1ce72a53`

```dockerfile
```

-	Layers:
	-	`sha256:213a59145eb3ca28423d1d6c7f51929b0601f1c7b57e851b9a5499a0168887bf`  
		Last Modified: Tue, 18 Aug 2026 01:28:40 GMT  
		Size: 3.1 MB (3054784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce7485e3cc0c0f7d7f8b50ca5d1ebf74af472d9b81b008d94647892505b11151`  
		Last Modified: Tue, 18 Aug 2026 01:28:40 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:8fcdbe84f10089792544320400d421e7524cbc214d646ab0fd6e07aa1fba59ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198405163 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb05f5096125f1129ef38a5bebc6e4b856ca85379792ac407905f38135e6fa37`
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
# Tue, 18 Aug 2026 00:17:14 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 18 Aug 2026 00:17:14 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 18 Aug 2026 00:17:14 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 18 Aug 2026 00:17:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 18 Aug 2026 00:17:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:3c9503cfff1c82d12820c3c752940964f6a091cb183b44e45fc5a003b8d47e87`  
		Last Modified: Mon, 10 Aug 2026 20:09:16 GMT  
		Size: 28.2 MB (28210903 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ce487f4af036e6062c9afd9cfac3679a5fb362a6a7ec741c8ae55190f28a9ab`  
		Last Modified: Tue, 18 Aug 2026 00:18:29 GMT  
		Size: 1.4 MB (1412308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c80ff42fac21867f1f12d4c0fd3b81449e568ee3ab8d507f32225fa589adc6a6`  
		Last Modified: Tue, 18 Aug 2026 00:18:33 GMT  
		Size: 168.8 MB (168781952 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:4e1a433af53fa5b9ed34eb301b8d5d64f1a9567f1bec75d82584e7f88c10d998
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5b536d3896b227992e906897e7df26a9f2fdbdb209fa8edb07f5c3fcf620192`

```dockerfile
```

-	Layers:
	-	`sha256:32434e7eb88e78a67eff488b84c2113dc738f6d61c04b33fffdeb24aa7091110`  
		Last Modified: Tue, 18 Aug 2026 00:18:29 GMT  
		Size: 2.7 MB (2742137 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42379d16314a68ba564b2be8a00cf386cb15193fefdbf8bee161ad2c71d4e37b`  
		Last Modified: Tue, 18 Aug 2026 00:18:28 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sfj`

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

### `ibmjava:sfj` - linux; amd64

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

### `ibmjava:sfj` - unknown; unknown

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

### `ibmjava:sfj` - linux; ppc64le

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

### `ibmjava:sfj` - unknown; unknown

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

### `ibmjava:sfj` - linux; s390x

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

### `ibmjava:sfj` - unknown; unknown

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
