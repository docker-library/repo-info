## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:5341df408109ceb36c4283c8ab16237678dcbade94439c3570dd80d6a521c33c
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
$ docker pull ibmjava@sha256:26d49759c52afbe90e3afbaed42d74d9b97d44dd766afecc5a5c3de2b380953d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.7 MB (205725085 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19fc9c7d4d3b7d7423f085dccf9d8322e9ef4061babda03bd4cd79d14514811f`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:24 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:24 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:24 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:27 GMT
ADD file:577abcbf057cdd5d520b6dbfa56d772c9fb1fa3dd63cb6db8942d63dfc9d902b in / 
# Tue, 17 Nov 2026 09:18:27 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:22:48 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:48 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:48 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b9a6502ac2e0260c92004941250d488dfa21b0cad772448a472bc40a2593461`  
		Last Modified: Fri, 20 Nov 2026 03:23:56 GMT  
		Size: 1.4 MB (1407524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153007822adbfc5aaccb2debbdd68751dbd657f6c6553c2c5df8ebb8ed09b4bb`  
		Last Modified: Fri, 20 Nov 2026 03:24:00 GMT  
		Size: 174.2 MB (174247746 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:6245327a01fd8013b8e2969829c13f3a054e87ebc7ec3500fc9c4894479777ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3080850 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43f6f9294f08ebf6f3fd520ec1560a86f347927b096997f7ef7dbe03c8d3e5f4`

```dockerfile
```

-	Layers:
	-	`sha256:ede93a6c2f7bb00cda49da314911ca47bb53d0de6dde606b83463ffe8512a27a`  
		Last Modified: Fri, 20 Nov 2026 03:23:56 GMT  
		Size: 3.1 MB (3068252 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e9c82473f6eb2edbc227f1c87e1cc9d2b30f624c80270d1fa7c9bb698b935968`  
		Last Modified: Fri, 20 Nov 2026 03:23:56 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:616f1dc4af127db53e06a69d9e2f2105947548259227d0e441caf37dfaeafd9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.6 MB (211566643 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aece8c6a8c66a9d7eaf9506ba7761fa47798889fd70838c1c1077d8da09f3f49`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:20:22 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:20:22 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:20:22 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:20:25 GMT
ADD file:864e29ad8b1d92dce321e0401fe4ef4bbac836267e9967e73cb6394dc831cccb in / 
# Tue, 17 Nov 2026 09:20:26 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 04:58:04 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 04:58:04 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 04:58:04 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 05:00:42 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 05:00:42 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:a7ab357fd9dc2ccd4042230501ebce1346ff82314b13a35f8a4382786359aba5`  
		Last Modified: Tue, 17 Nov 2026 10:29:26 GMT  
		Size: 35.0 MB (35021662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52a5d6ea847aed2dbf4bd37029efb52dbaffaa908214b522a8f2e1c185778987`  
		Last Modified: Fri, 20 Nov 2026 04:59:20 GMT  
		Size: 1.5 MB (1493708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fa24d0c381118205b5dbfd48627b100e149220c336d3ea71f6353ade57fd594`  
		Last Modified: Fri, 20 Nov 2026 05:01:29 GMT  
		Size: 175.1 MB (175051273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:9fa548d11b625d50295efd0389f420996396ed4ee91c91d99452a0aa02548535
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3066833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf855af9edd718714489b13db8e215f2d45de7deeed28eceef277cdb037916f8`

```dockerfile
```

-	Layers:
	-	`sha256:15860c4f904d4e5bfc4a03b925743f5b341f5097856439fcf13b374c0cecaae2`  
		Last Modified: Fri, 20 Nov 2026 05:01:22 GMT  
		Size: 3.1 MB (3054201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d45d2dfb886920917093749d2cfe58e2a83b79ac6066ca6fa72618cc26b6aa3`  
		Last Modified: Fri, 20 Nov 2026 05:01:21 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:6b1a487950482eacea949254a851b7463c0ca7573e4750720991a6c6dea193dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.8 MB (198779173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a91362cd9f8680af0fc97a618b7c3eac669e2f6704a184e9186b43da5affe3d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Tue, 17 Nov 2026 09:18:34 GMT
ARG RELEASE
# Tue, 17 Nov 2026 09:18:34 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Tue, 17 Nov 2026 09:18:35 GMT
LABEL org.opencontainers.image.version=22.04
# Tue, 17 Nov 2026 09:18:36 GMT
ADD file:a83bdb195516c0bca280c16e544e4f0bdf6a82e6b162e8d9b57202bce79791b7 in / 
# Tue, 17 Nov 2026 09:18:36 GMT
CMD ["/bin/bash"]
# Fri, 20 Nov 2026 03:21:30 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:21:30 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:21:30 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:22:43 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='7ddf47ef27fe053cdf1de74bd6777c52e8d5c2999362daabaed66b6204d74b4b';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='a0180d27a3ea65e768cc982c5face20d7a68cbeda30abac74b16a31b33744add';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='dcd950995ee2d046c743382eae742ff3e80d08a65fc3a267003290d732c84d9b';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:22:43 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:0210d82c56b8b437087f28e0731e9e1fcb3ad03a1ea704993d475df7f4fc3a8d`  
		Last Modified: Tue, 17 Nov 2026 10:29:39 GMT  
		Size: 28.5 MB (28539018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a5afb9a53ffbb2b161b75df1a9232c049854075a90e16e65671be6893224f0`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 1.4 MB (1410498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac1748395b5d979a17729eb7de1d1dd09c3437c1f66363a40500574bbfd57cc`  
		Last Modified: Fri, 20 Nov 2026 03:23:11 GMT  
		Size: 168.8 MB (168829657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:66d102decdfc0edd4a9fac4fda485a740b830e5590052677a249c232a26bb012
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c97bb3d47774631af4c37cc988e88d5c1b9779ad5f499c76332852e585423b`

```dockerfile
```

-	Layers:
	-	`sha256:f6b6a52d07e90ed891abb7399b99a4275fc3dcfa6fc015126a9ad8e08a8c2905`  
		Last Modified: Fri, 20 Nov 2026 03:23:08 GMT  
		Size: 2.7 MB (2741554 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f7d43be411a69da3fb32d4c6731c8f91f1d1b91a35f1bec2eb84973455c16b34`  
		Last Modified: Fri, 20 Nov 2026 03:23:08 GMT  
		Size: 12.6 KB (12596 bytes)  
		MIME: application/vnd.in-toto+json
