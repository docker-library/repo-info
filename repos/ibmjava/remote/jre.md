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
