## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:9f3bc9419796ef86df45497ec978fb9972be7a70c538ab1dbbc08711a5ce4f01
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
$ docker pull ibmjava@sha256:135e031832be3fc0cc1f05a2f4ee4fa4ef73682f0e24de9365aaefaccab19568
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102380502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dc61b26395c1cc3332ae4e57533ce56e6591a91c124b62390d94dbc9ee9c8e5b`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:42 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:42 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:42 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:44 GMT
ADD file:ba52f9eec2a5a7de74e9a460017725370755c2d4814dd746bde7507601befb53 in / 
# Sun, 25 Oct 2026 20:10:44 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:22:45 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:22:45 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:22:45 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:23:07 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:23:07 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0626d3cc316c9fea3d4891e2ec19b8f371fe22ffb915622f6072a2ee2ca9017f`  
		Last Modified: Sun, 25 Oct 2026 20:45:21 GMT  
		Size: 29.8 MB (29752488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50642579d2f600dfa5c7071889c77ec47d2329be24b9113fdc5ba4e084fd9ed`  
		Last Modified: Mon, 26 Oct 2026 23:23:17 GMT  
		Size: 1.4 MB (1407391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbf44fa8118dd69f5c3dc5b3d11cabadfcd38128be2c5d410902e9361383093a`  
		Last Modified: Mon, 26 Oct 2026 23:23:19 GMT  
		Size: 71.2 MB (71220623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:c29a1963679373cc325ef4658ec0e8f6ba0f563853645f1a9c2bfb3453eb47de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152350 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a968459c30829f13c2c0b8591711e7485efbdacaef4d9201f9cac874c70b5a7`

```dockerfile
```

-	Layers:
	-	`sha256:18fbc3206f2bcddec9fba2fcf43d50ce2be4c318b4a201e5b811b0fa90b67d10`  
		Last Modified: Mon, 26 Oct 2026 23:23:17 GMT  
		Size: 2.1 MB (2139749 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7eded8e6a8a65ce97883cd364015a5f003735b653f813c62637fac99fb182235`  
		Last Modified: Mon, 26 Oct 2026 23:23:17 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:747d1503a4a02c78c8cd1cb030ba1dbe8eadc8399383840fb158022dfca39e85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108189211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ea9081be803b81c811e7982f0e427eaaeca396d5736389c48db6633870daf4d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 02 Oct 2026 10:27:53 GMT
ARG RELEASE
# Fri, 02 Oct 2026 10:27:53 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Fri, 02 Oct 2026 10:27:53 GMT
LABEL org.opencontainers.image.version=22.04
# Fri, 02 Oct 2026 10:27:57 GMT
ADD file:033fc20cee581415b0b5d9441dc9a9af10b4d991f467367349c2265b54a799c2 in / 
# Fri, 02 Oct 2026 10:27:57 GMT
CMD ["/bin/bash"]
# Sat, 17 Oct 2026 01:30:36 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Sat, 17 Oct 2026 01:30:36 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 17 Oct 2026 01:30:36 GMT
ENV JAVA_VERSION=8.0.8.71
# Sat, 17 Oct 2026 01:31:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Sat, 17 Oct 2026 01:31:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf7d831abc657dc196c50ba9532f1c89b9e6a286ef2c33e0d522eed83f644ce4`  
		Last Modified: Fri, 02 Oct 2026 11:08:47 GMT  
		Size: 34.7 MB (34703637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefd491047dbd546e62c24cc7784aec4e7c6c82b47394987d3d22ce87151f301`  
		Last Modified: Sat, 17 Oct 2026 01:31:33 GMT  
		Size: 1.5 MB (1495040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7740925e853cd3ae3cb8c1cd4166f7d8a5cb4f3137fbf6714c0f936e31e6deb`  
		Last Modified: Sat, 17 Oct 2026 01:32:01 GMT  
		Size: 72.0 MB (71990534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:a7413ef28696fe5e31d789b3b61ad1927cd64b023627d9f550207f4db09ff39f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e95d63663aec6d3b90a5f398ea7244f342fcaaf9cebee6ab6e478637e9ca8e55`

```dockerfile
```

-	Layers:
	-	`sha256:4c452f139702230d7daa233ce8b330bf0d7a3ca21f53ae1d9a03c5993fc4095e`  
		Last Modified: Sat, 17 Oct 2026 01:31:59 GMT  
		Size: 2.1 MB (2144894 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a5df4fbde3f0d7459c4bb45b5cc7f339507a0c937f97f5d77786c7409d1398c`  
		Last Modified: Sat, 17 Oct 2026 01:31:59 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:e0f9e34a7632c85f2e72d56b4a343cad61e35c4e15aa78d8de0f682fc50468da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104353634 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0177d8a1f6f992496b1e87c04922c05dd62f0be8aeb875cbe55ce307fd7a1c3e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Sun, 25 Oct 2026 20:10:37 GMT
ARG RELEASE
# Sun, 25 Oct 2026 20:10:37 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Sun, 25 Oct 2026 20:10:37 GMT
LABEL org.opencontainers.image.version=22.04
# Sun, 25 Oct 2026 20:10:38 GMT
ADD file:d70985f343b928adff62278c4163ebbf647660762ba70888621a1d5074b65885 in / 
# Sun, 25 Oct 2026 20:10:39 GMT
CMD ["/bin/bash"]
# Mon, 26 Oct 2026 23:59:29 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 26 Oct 2026 23:59:29 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 26 Oct 2026 23:59:29 GMT
ENV JAVA_VERSION=8.0.8.71
# Mon, 26 Oct 2026 23:59:51 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 26 Oct 2026 23:59:51 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:6d5278bf453b336290a4ae5a6635916b6c428017410108ed8e9b4394a20bec9f`  
		Last Modified: Sun, 25 Oct 2026 20:45:54 GMT  
		Size: 28.2 MB (28222806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfff157f6ca7dff0a2b10b17d6007cdd92f170f3371775f306b5883020580544`  
		Last Modified: Tue, 27 Oct 2026 00:00:11 GMT  
		Size: 1.4 MB (1410170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec00098bffaa6dd6236f9669827e1e93dd741fc72d30eff615392fefb2b6241d`  
		Last Modified: Tue, 27 Oct 2026 00:00:14 GMT  
		Size: 74.7 MB (74720658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:c3a630444c12af35cf02f66fe1fe0ecea065bc794a4891d1d5a8d40e6a5cdbc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2155972 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e062ea681d12abdc1f06e6f3d6e1768e526a549ff09440afaf1840f95d0439b2`

```dockerfile
```

-	Layers:
	-	`sha256:24042a3c1dd4464fde619346db16f397d3039379c8534b90ed0a5310fe442b49`  
		Last Modified: Tue, 27 Oct 2026 00:00:13 GMT  
		Size: 2.1 MB (2143371 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0feed676e6dd24eee8788fd1e63f2a0d65ed07b6d5d886f798ec4a42c55f3021`  
		Last Modified: Tue, 27 Oct 2026 00:00:12 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
