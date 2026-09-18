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
$ docker pull ibmjava@sha256:b5acfdcd21633aea842edc59faa4a1cecedf0de787e9d313e1daa74fcea8a33f
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
$ docker pull ibmjava@sha256:221990b2affc3c7ad787f8f0071cb693e6cf1bda1b0f2fd93e2122c00ee14520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168047142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc77b68b1f8e5d6a21e41e3a32d92373caf631ce20b4aca4e0d57da31f074a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:20 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:31:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:31:20 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:32:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:32:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf740f467651ee6209dc8e0a3cb578805852a4f88833bfee2bc0f28eeffacc5`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 1.4 MB (1409375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67b2c20189a71fae279e8056376cad8e8f2f600da7f1c1484b9058d8deeeaf1`  
		Last Modified: Wed, 09 Sep 2026 02:32:20 GMT  
		Size: 136.9 MB (136887516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:0c94540798967ffa43dc532a90027f9e6b11aac04b61fb2974d96a654a6d7be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be73d393ddf9a9153abbf478e1bd1ddd36edf510dfc0388b04bb4f4b6bdcea2`

```dockerfile
```

-	Layers:
	-	`sha256:2f3afbca3aa43945fd2f84d91312bf57e6d48a839cac8929c27d96b83090cece`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 2.2 MB (2157932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e55b53ee4e374eec8d9be43ffdc78a8ab0973f819165950e7b470166e47438c`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 13.2 KB (13191 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; ppc64le

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

### `ibmjava:8` - unknown; unknown

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

### `ibmjava:8` - linux; s390x

```console
$ docker pull ibmjava@sha256:b7d5c94138a8c3251c0cdfbec22e6652ccccc3ec404a35f428180da8682ed3b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167804510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d1a43e471d7d96b40f5ac49d9947ad7476061d63f5497bcb65292cf23b41c0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:55:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 17 Sep 2026 23:55:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:55:00 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 17 Sep 2026 23:55:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 17 Sep 2026 23:55:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2de8f5e65ebe450606447bbc50560d80a886ffed3b63f8338f39c7dd80235f`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 1.4 MB (1414651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317349cbbfb3a303b565ea2f00a002bb73c82009241fb98397920dd0ba0ef4e2`  
		Last Modified: Thu, 17 Sep 2026 23:55:59 GMT  
		Size: 138.2 MB (138165828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:8776212bb289e7209cbe8f2d6e5fd91f5363333c18835877ee36dbb243140548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa0f0e8fe28b155ffe6f8b4dab7bd2d675b0bd4fe6059aa91dce3ec05ee9a75`

```dockerfile
```

-	Layers:
	-	`sha256:f5410a92b15baba7b9c12d641cc67e9d3731c0aabd393aa20185d0293fc908c4`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 2.2 MB (2157879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea103200d994b14ab41d207ab994145b3d9a2f686f98788af74d11e30528bc8`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-jre`

```console
$ docker pull ibmjava@sha256:b5acfdcd21633aea842edc59faa4a1cecedf0de787e9d313e1daa74fcea8a33f
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
$ docker pull ibmjava@sha256:221990b2affc3c7ad787f8f0071cb693e6cf1bda1b0f2fd93e2122c00ee14520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168047142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc77b68b1f8e5d6a21e41e3a32d92373caf631ce20b4aca4e0d57da31f074a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:20 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:31:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:31:20 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:32:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:32:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf740f467651ee6209dc8e0a3cb578805852a4f88833bfee2bc0f28eeffacc5`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 1.4 MB (1409375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67b2c20189a71fae279e8056376cad8e8f2f600da7f1c1484b9058d8deeeaf1`  
		Last Modified: Wed, 09 Sep 2026 02:32:20 GMT  
		Size: 136.9 MB (136887516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:0c94540798967ffa43dc532a90027f9e6b11aac04b61fb2974d96a654a6d7be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be73d393ddf9a9153abbf478e1bd1ddd36edf510dfc0388b04bb4f4b6bdcea2`

```dockerfile
```

-	Layers:
	-	`sha256:2f3afbca3aa43945fd2f84d91312bf57e6d48a839cac8929c27d96b83090cece`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 2.2 MB (2157932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e55b53ee4e374eec8d9be43ffdc78a8ab0973f819165950e7b470166e47438c`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 13.2 KB (13191 bytes)  
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
$ docker pull ibmjava@sha256:b7d5c94138a8c3251c0cdfbec22e6652ccccc3ec404a35f428180da8682ed3b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167804510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d1a43e471d7d96b40f5ac49d9947ad7476061d63f5497bcb65292cf23b41c0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:55:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 17 Sep 2026 23:55:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:55:00 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 17 Sep 2026 23:55:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 17 Sep 2026 23:55:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2de8f5e65ebe450606447bbc50560d80a886ffed3b63f8338f39c7dd80235f`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 1.4 MB (1414651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317349cbbfb3a303b565ea2f00a002bb73c82009241fb98397920dd0ba0ef4e2`  
		Last Modified: Thu, 17 Sep 2026 23:55:59 GMT  
		Size: 138.2 MB (138165828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:8776212bb289e7209cbe8f2d6e5fd91f5363333c18835877ee36dbb243140548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa0f0e8fe28b155ffe6f8b4dab7bd2d675b0bd4fe6059aa91dce3ec05ee9a75`

```dockerfile
```

-	Layers:
	-	`sha256:f5410a92b15baba7b9c12d641cc67e9d3731c0aabd393aa20185d0293fc908c4`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 2.2 MB (2157879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea103200d994b14ab41d207ab994145b3d9a2f686f98788af74d11e30528bc8`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:8766c6defc1ce8a6a6d81f4dc38b0bc056d6318e053bef035c9a999323852d7b
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
$ docker pull ibmjava@sha256:085f7430b32c0aa7d202894f0bf1da8d2855183c96302f5abfa0177d5125dea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205336312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2eac82e989cbe86f74427d5588aa0a4715818d561646b28ddf51eccc552ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:50 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:31:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:31:50 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:32:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:32:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768042c976768983a387dfe4ebe1172993c8ea134449dbe53940174cc8d82e99`  
		Last Modified: Wed, 09 Sep 2026 02:32:54 GMT  
		Size: 1.4 MB (1409317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd77770068298b012a453423720d26a738f9bd2d1d48f10fb6b219339050067`  
		Last Modified: Wed, 09 Sep 2026 02:32:58 GMT  
		Size: 174.2 MB (174176744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:de7f422bda52c5aa265f8be4d06fa48e40cb53f4eb2d85d4c5839434b6fbc3de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3081473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a193d936e8ce65ca4df399b227af6c7a8673c69afddb286c36672f40ba904470`

```dockerfile
```

-	Layers:
	-	`sha256:e51ac7a87946083fd926467740302c0fee8db4593d9a4b7581779ce10abb4706`  
		Last Modified: Wed, 09 Sep 2026 02:32:54 GMT  
		Size: 3.1 MB (3068875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84740e931ff06303bcad3f08d6852762aced016a590ac292c723dbcf9953cdd3`  
		Last Modified: Wed, 09 Sep 2026 02:32:54 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; ppc64le

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

### `ibmjava:8-sdk` - unknown; unknown

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

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:0dea8264a9378f3cb441659692cf9f749b4ee6200fe94498ffd9e270ee5a182e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198352346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e5720ffde0f72fd058751f6b22142a70ac631ddb8debc96974860e323b8947`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:55:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 17 Sep 2026 23:55:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:55:00 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 17 Sep 2026 23:56:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 17 Sep 2026 23:56:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2de8f5e65ebe450606447bbc50560d80a886ffed3b63f8338f39c7dd80235f`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 1.4 MB (1414651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ec394e39c9e430e746c2665ddc17906cdacea5998c808a704fa603414c161d`  
		Last Modified: Thu, 17 Sep 2026 23:56:48 GMT  
		Size: 168.7 MB (168713664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:74804f45a5f23f63a92fd6d914be0cdea3e393cc1fb2af46069f8d2d8cc8dff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b001c97ec72f697a085a24322a2005688b4ecf787d8acfe196178f91bf513d1`

```dockerfile
```

-	Layers:
	-	`sha256:2602b898b19d6d908c4656840daa3ff1785ead9427f6e528d7b54064c6a4b1fa`  
		Last Modified: Thu, 17 Sep 2026 23:56:45 GMT  
		Size: 2.7 MB (2742177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adb4f21241c4a11c04d1048998ef0dbd709e3054d576b2c705c380638b31799c`  
		Last Modified: Thu, 17 Sep 2026 23:56:45 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:aa790b1736b19567b56681e0c7dfc52a80a189ce3e0ded054d7718ce0207130b
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
$ docker pull ibmjava@sha256:d5f3bee14e717af7a498b876e95043c5096c8342bbaf0ef311ac8870d6515f3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102380236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34df43b1cb2576db4683cb357ce2d7d56bdbef160c051a0842ed520431f345a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:26 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:31:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:31:26 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:31:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:31:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22dd2d9ca6f9c21cda7a5384396e9d749e6ae6917e76fdff8c9779f23cda901f`  
		Last Modified: Wed, 09 Sep 2026 02:31:58 GMT  
		Size: 1.4 MB (1409367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dfbfe47ed49445b0780617a4448fa762bb873706cb8a84ff3ef82b4daa0b54c`  
		Last Modified: Wed, 09 Sep 2026 02:32:00 GMT  
		Size: 71.2 MB (71220618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:90969b79fc10280dc16a20103750c0e78a6669fd03fdd51cd8d41462119c1c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25968ee95b033ab4a02d387e2efad980d4098ebc60383c89fbcb7949e1093ee`

```dockerfile
```

-	Layers:
	-	`sha256:5d7da6973fff6534694c281f1fe201548ce53b5b2c1b6f13ff2820f58d041fb1`  
		Last Modified: Wed, 09 Sep 2026 02:31:58 GMT  
		Size: 2.1 MB (2140365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9b1bbe2a6ae32308db2ca27532a0ea11cb2688969c4fab45db55e4533d94d9a`  
		Last Modified: Wed, 09 Sep 2026 02:31:58 GMT  
		Size: 12.6 KB (12600 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a5c664dfd5f02f6dc4adb3683d5559c95158bd2915380321c80b5c698cf20051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108188072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bd2852f576853710a536ea09d3a8829d53b0c49c7b855b8ace263782fc9213e`
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
# Wed, 09 Sep 2026 02:47:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:47:09 GMT
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
	-	`sha256:e983bc7d9c405c11f726b9edc791175aec9209af5cdb3309deb87cfb432bd9d7`  
		Last Modified: Wed, 09 Sep 2026 02:48:02 GMT  
		Size: 72.0 MB (71990557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:318bee1a01526624fa581bb9d750f7c0a67115df21ca6ba8d3c7d52c0d050df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a793586ad11ea785229f4e7553fea29453d27829ca230ef06856128751a33fcc`

```dockerfile
```

-	Layers:
	-	`sha256:c5749b9763e24255c5f11ade8346d0b46e3a91f44e20f2eb83f7a79cd945b121`  
		Last Modified: Wed, 09 Sep 2026 02:48:00 GMT  
		Size: 2.1 MB (2144866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd9fd88dbd9e124b21cf7715e2f1845292d6967cdfbbd00a9dd44c826111c66d`  
		Last Modified: Wed, 09 Sep 2026 02:48:00 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:3c73b3e2deb45230687e3e6f5296fe10338f81b4385e5c2ec5bd53d4f870e1f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104359440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a66935001e0bf83df3f5de627a868bce351a9f1040b18ebb20d925e9f42f38`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:55:11 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 17 Sep 2026 23:55:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:55:11 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 17 Sep 2026 23:55:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 17 Sep 2026 23:55:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e411ce79ed344941419dfca102f7d7e3293b74670f15f14da75677236f14bcaf`  
		Last Modified: Thu, 17 Sep 2026 23:55:48 GMT  
		Size: 1.4 MB (1414759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7748c5f96fb9c5de7538a90a7dd6d7bd8eaa6904c88de8858d42bf69e0e6df90`  
		Last Modified: Thu, 17 Sep 2026 23:55:49 GMT  
		Size: 74.7 MB (74720650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:44e197a86a85c14e1a70ee6cc696d3488ca5382a20793e0136a5ae5778a0ead5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c138ddc50e5c07e079d75f74382098cf582f98ac6a124c37d3c171cd931acaa`

```dockerfile
```

-	Layers:
	-	`sha256:3553a0c07968cff500e70de2371ea10372b0a526bef725bb29348389cb2288d0`  
		Last Modified: Thu, 17 Sep 2026 23:55:48 GMT  
		Size: 2.1 MB (2143987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ba0d99fcc4fca559642b36514c7cb9f63179a64a87fb3e49b784bc5c4f780f3`  
		Last Modified: Thu, 17 Sep 2026 23:55:48 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:jre`

```console
$ docker pull ibmjava@sha256:b5acfdcd21633aea842edc59faa4a1cecedf0de787e9d313e1daa74fcea8a33f
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
$ docker pull ibmjava@sha256:221990b2affc3c7ad787f8f0071cb693e6cf1bda1b0f2fd93e2122c00ee14520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168047142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc77b68b1f8e5d6a21e41e3a32d92373caf631ce20b4aca4e0d57da31f074a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:20 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:31:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:31:20 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:32:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:32:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf740f467651ee6209dc8e0a3cb578805852a4f88833bfee2bc0f28eeffacc5`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 1.4 MB (1409375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67b2c20189a71fae279e8056376cad8e8f2f600da7f1c1484b9058d8deeeaf1`  
		Last Modified: Wed, 09 Sep 2026 02:32:20 GMT  
		Size: 136.9 MB (136887516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:0c94540798967ffa43dc532a90027f9e6b11aac04b61fb2974d96a654a6d7be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be73d393ddf9a9153abbf478e1bd1ddd36edf510dfc0388b04bb4f4b6bdcea2`

```dockerfile
```

-	Layers:
	-	`sha256:2f3afbca3aa43945fd2f84d91312bf57e6d48a839cac8929c27d96b83090cece`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 2.2 MB (2157932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e55b53ee4e374eec8d9be43ffdc78a8ab0973f819165950e7b470166e47438c`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 13.2 KB (13191 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; ppc64le

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

### `ibmjava:jre` - unknown; unknown

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

### `ibmjava:jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:b7d5c94138a8c3251c0cdfbec22e6652ccccc3ec404a35f428180da8682ed3b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167804510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d1a43e471d7d96b40f5ac49d9947ad7476061d63f5497bcb65292cf23b41c0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:55:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 17 Sep 2026 23:55:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:55:00 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 17 Sep 2026 23:55:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 17 Sep 2026 23:55:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2de8f5e65ebe450606447bbc50560d80a886ffed3b63f8338f39c7dd80235f`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 1.4 MB (1414651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317349cbbfb3a303b565ea2f00a002bb73c82009241fb98397920dd0ba0ef4e2`  
		Last Modified: Thu, 17 Sep 2026 23:55:59 GMT  
		Size: 138.2 MB (138165828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:8776212bb289e7209cbe8f2d6e5fd91f5363333c18835877ee36dbb243140548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa0f0e8fe28b155ffe6f8b4dab7bd2d675b0bd4fe6059aa91dce3ec05ee9a75`

```dockerfile
```

-	Layers:
	-	`sha256:f5410a92b15baba7b9c12d641cc67e9d3731c0aabd393aa20185d0293fc908c4`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 2.2 MB (2157879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea103200d994b14ab41d207ab994145b3d9a2f686f98788af74d11e30528bc8`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:latest`

```console
$ docker pull ibmjava@sha256:b5acfdcd21633aea842edc59faa4a1cecedf0de787e9d313e1daa74fcea8a33f
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
$ docker pull ibmjava@sha256:221990b2affc3c7ad787f8f0071cb693e6cf1bda1b0f2fd93e2122c00ee14520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.0 MB (168047142 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fc77b68b1f8e5d6a21e41e3a32d92373caf631ce20b4aca4e0d57da31f074a6`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:20 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:31:20 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:31:20 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:32:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:32:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf740f467651ee6209dc8e0a3cb578805852a4f88833bfee2bc0f28eeffacc5`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 1.4 MB (1409375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b67b2c20189a71fae279e8056376cad8e8f2f600da7f1c1484b9058d8deeeaf1`  
		Last Modified: Wed, 09 Sep 2026 02:32:20 GMT  
		Size: 136.9 MB (136887516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:0c94540798967ffa43dc532a90027f9e6b11aac04b61fb2974d96a654a6d7be2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9be73d393ddf9a9153abbf478e1bd1ddd36edf510dfc0388b04bb4f4b6bdcea2`

```dockerfile
```

-	Layers:
	-	`sha256:2f3afbca3aa43945fd2f84d91312bf57e6d48a839cac8929c27d96b83090cece`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 2.2 MB (2157932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8e55b53ee4e374eec8d9be43ffdc78a8ab0973f819165950e7b470166e47438c`  
		Last Modified: Wed, 09 Sep 2026 02:32:17 GMT  
		Size: 13.2 KB (13191 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; ppc64le

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

### `ibmjava:latest` - unknown; unknown

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

### `ibmjava:latest` - linux; s390x

```console
$ docker pull ibmjava@sha256:b7d5c94138a8c3251c0cdfbec22e6652ccccc3ec404a35f428180da8682ed3b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **167.8 MB (167804510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2d1a43e471d7d96b40f5ac49d9947ad7476061d63f5497bcb65292cf23b41c0`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:55:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 17 Sep 2026 23:55:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:55:00 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 17 Sep 2026 23:55:38 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 17 Sep 2026 23:55:38 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2de8f5e65ebe450606447bbc50560d80a886ffed3b63f8338f39c7dd80235f`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 1.4 MB (1414651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:317349cbbfb3a303b565ea2f00a002bb73c82009241fb98397920dd0ba0ef4e2`  
		Last Modified: Thu, 17 Sep 2026 23:55:59 GMT  
		Size: 138.2 MB (138165828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:8776212bb289e7209cbe8f2d6e5fd91f5363333c18835877ee36dbb243140548
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171071 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fa0f0e8fe28b155ffe6f8b4dab7bd2d675b0bd4fe6059aa91dce3ec05ee9a75`

```dockerfile
```

-	Layers:
	-	`sha256:f5410a92b15baba7b9c12d641cc67e9d3731c0aabd393aa20185d0293fc908c4`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 2.2 MB (2157879 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7ea103200d994b14ab41d207ab994145b3d9a2f686f98788af74d11e30528bc8`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sdk`

```console
$ docker pull ibmjava@sha256:8766c6defc1ce8a6a6d81f4dc38b0bc056d6318e053bef035c9a999323852d7b
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
$ docker pull ibmjava@sha256:085f7430b32c0aa7d202894f0bf1da8d2855183c96302f5abfa0177d5125dea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205336312 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9d2eac82e989cbe86f74427d5588aa0a4715818d561646b28ddf51eccc552ef`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:50 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:31:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:31:50 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:32:40 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:32:40 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768042c976768983a387dfe4ebe1172993c8ea134449dbe53940174cc8d82e99`  
		Last Modified: Wed, 09 Sep 2026 02:32:54 GMT  
		Size: 1.4 MB (1409317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd77770068298b012a453423720d26a738f9bd2d1d48f10fb6b219339050067`  
		Last Modified: Wed, 09 Sep 2026 02:32:58 GMT  
		Size: 174.2 MB (174176744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:de7f422bda52c5aa265f8be4d06fa48e40cb53f4eb2d85d4c5839434b6fbc3de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3081473 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a193d936e8ce65ca4df399b227af6c7a8673c69afddb286c36672f40ba904470`

```dockerfile
```

-	Layers:
	-	`sha256:e51ac7a87946083fd926467740302c0fee8db4593d9a4b7581779ce10abb4706`  
		Last Modified: Wed, 09 Sep 2026 02:32:54 GMT  
		Size: 3.1 MB (3068875 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84740e931ff06303bcad3f08d6852762aced016a590ac292c723dbcf9953cdd3`  
		Last Modified: Wed, 09 Sep 2026 02:32:54 GMT  
		Size: 12.6 KB (12598 bytes)  
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
$ docker pull ibmjava@sha256:0dea8264a9378f3cb441659692cf9f749b4ee6200fe94498ffd9e270ee5a182e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **198.4 MB (198352346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7e5720ffde0f72fd058751f6b22142a70ac631ddb8debc96974860e323b8947`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:55:00 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 17 Sep 2026 23:55:00 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:55:00 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 17 Sep 2026 23:56:24 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='bf96528c4be42e2fc4520e3e0ef32ec9ccd6fb3492aea2cded29fe39ec1ea503';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='946f8e56cc033e8b964da34c5554fa6b50b66a0a220699b5dfb436f780c192eb';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='3cb2cb64591dd4c438bed7cf5c5a5368b6b5a390bebb95828323947e5a7a91c1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 17 Sep 2026 23:56:24 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd2de8f5e65ebe450606447bbc50560d80a886ffed3b63f8338f39c7dd80235f`  
		Last Modified: Thu, 17 Sep 2026 23:55:57 GMT  
		Size: 1.4 MB (1414651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ec394e39c9e430e746c2665ddc17906cdacea5998c808a704fa603414c161d`  
		Last Modified: Thu, 17 Sep 2026 23:56:48 GMT  
		Size: 168.7 MB (168713664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:74804f45a5f23f63a92fd6d914be0cdea3e393cc1fb2af46069f8d2d8cc8dff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754775 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b001c97ec72f697a085a24322a2005688b4ecf787d8acfe196178f91bf513d1`

```dockerfile
```

-	Layers:
	-	`sha256:2602b898b19d6d908c4656840daa3ff1785ead9427f6e528d7b54064c6a4b1fa`  
		Last Modified: Thu, 17 Sep 2026 23:56:45 GMT  
		Size: 2.7 MB (2742177 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:adb4f21241c4a11c04d1048998ef0dbd709e3054d576b2c705c380638b31799c`  
		Last Modified: Thu, 17 Sep 2026 23:56:45 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:aa790b1736b19567b56681e0c7dfc52a80a189ce3e0ded054d7718ce0207130b
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
$ docker pull ibmjava@sha256:d5f3bee14e717af7a498b876e95043c5096c8342bbaf0ef311ac8870d6515f3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102380236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d34df43b1cb2576db4683cb357ce2d7d56bdbef160c051a0842ed520431f345a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:14:51 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:14:51 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:14:51 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:14:53 GMT
ADD file:81c01921c5f642ac2fcbfae682e489e8e64b347467d9fa1587707e310e64d790 in / 
# Thu, 03 Sep 2026 12:14:54 GMT
CMD ["/bin/bash"]
# Wed, 09 Sep 2026 02:31:26 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Wed, 09 Sep 2026 02:31:26 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 09 Sep 2026 02:31:26 GMT
ENV JAVA_VERSION=8.0.8.71
# Wed, 09 Sep 2026 02:31:48 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:31:48 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:20c3783cc497b5b0df1fc5f92bd64c3d2fbb24057c88692c8fda205b6ea8a2f2`  
		Last Modified: Thu, 03 Sep 2026 17:08:20 GMT  
		Size: 29.8 MB (29750251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22dd2d9ca6f9c21cda7a5384396e9d749e6ae6917e76fdff8c9779f23cda901f`  
		Last Modified: Wed, 09 Sep 2026 02:31:58 GMT  
		Size: 1.4 MB (1409367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dfbfe47ed49445b0780617a4448fa762bb873706cb8a84ff3ef82b4daa0b54c`  
		Last Modified: Wed, 09 Sep 2026 02:32:00 GMT  
		Size: 71.2 MB (71220618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:90969b79fc10280dc16a20103750c0e78a6669fd03fdd51cd8d41462119c1c72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152965 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25968ee95b033ab4a02d387e2efad980d4098ebc60383c89fbcb7949e1093ee`

```dockerfile
```

-	Layers:
	-	`sha256:5d7da6973fff6534694c281f1fe201548ce53b5b2c1b6f13ff2820f58d041fb1`  
		Last Modified: Wed, 09 Sep 2026 02:31:58 GMT  
		Size: 2.1 MB (2140365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a9b1bbe2a6ae32308db2ca27532a0ea11cb2688969c4fab45db55e4533d94d9a`  
		Last Modified: Wed, 09 Sep 2026 02:31:58 GMT  
		Size: 12.6 KB (12600 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:a5c664dfd5f02f6dc4adb3683d5559c95158bd2915380321c80b5c698cf20051
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.2 MB (108188072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bd2852f576853710a536ea09d3a8829d53b0c49c7b855b8ace263782fc9213e`
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
# Wed, 09 Sep 2026 02:47:09 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Wed, 09 Sep 2026 02:47:09 GMT
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
	-	`sha256:e983bc7d9c405c11f726b9edc791175aec9209af5cdb3309deb87cfb432bd9d7`  
		Last Modified: Wed, 09 Sep 2026 02:48:02 GMT  
		Size: 72.0 MB (71990557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:318bee1a01526624fa581bb9d750f7c0a67115df21ca6ba8d3c7d52c0d050df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a793586ad11ea785229f4e7553fea29453d27829ca230ef06856128751a33fcc`

```dockerfile
```

-	Layers:
	-	`sha256:c5749b9763e24255c5f11ade8346d0b46e3a91f44e20f2eb83f7a79cd945b121`  
		Last Modified: Wed, 09 Sep 2026 02:48:00 GMT  
		Size: 2.1 MB (2144866 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bd9fd88dbd9e124b21cf7715e2f1845292d6967cdfbbd00a9dd44c826111c66d`  
		Last Modified: Wed, 09 Sep 2026 02:48:00 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:3c73b3e2deb45230687e3e6f5296fe10338f81b4385e5c2ec5bd53d4f870e1f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.4 MB (104359440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3a66935001e0bf83df3f5de627a868bce351a9f1040b18ebb20d925e9f42f38`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Thu, 03 Sep 2026 12:51:36 GMT
ARG RELEASE
# Thu, 03 Sep 2026 12:51:36 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Thu, 03 Sep 2026 12:51:36 GMT
LABEL org.opencontainers.image.version=22.04
# Thu, 03 Sep 2026 12:51:37 GMT
ADD file:99e519ce4f36973ccf0c2b59d97d9545ed489aeb70f2d9d5b02cc88216f15ebf in / 
# Thu, 03 Sep 2026 12:51:37 GMT
CMD ["/bin/bash"]
# Thu, 17 Sep 2026 23:55:11 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 17 Sep 2026 23:55:11 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 17 Sep 2026 23:55:11 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 17 Sep 2026 23:55:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 17 Sep 2026 23:55:34 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:bf614dfe039d307c4291b9fb2c2a7e4330436f31d1af87cc6008eaf4ab48b571`  
		Last Modified: Thu, 03 Sep 2026 17:08:55 GMT  
		Size: 28.2 MB (28224031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e411ce79ed344941419dfca102f7d7e3293b74670f15f14da75677236f14bcaf`  
		Last Modified: Thu, 17 Sep 2026 23:55:48 GMT  
		Size: 1.4 MB (1414759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7748c5f96fb9c5de7538a90a7dd6d7bd8eaa6904c88de8858d42bf69e0e6df90`  
		Last Modified: Thu, 17 Sep 2026 23:55:49 GMT  
		Size: 74.7 MB (74720650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:44e197a86a85c14e1a70ee6cc696d3488ca5382a20793e0136a5ae5778a0ead5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c138ddc50e5c07e079d75f74382098cf582f98ac6a124c37d3c171cd931acaa`

```dockerfile
```

-	Layers:
	-	`sha256:3553a0c07968cff500e70de2371ea10372b0a526bef725bb29348389cb2288d0`  
		Last Modified: Thu, 17 Sep 2026 23:55:48 GMT  
		Size: 2.1 MB (2143987 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ba0d99fcc4fca559642b36514c7cb9f63179a64a87fb3e49b784bc5c4f780f3`  
		Last Modified: Thu, 17 Sep 2026 23:55:48 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
