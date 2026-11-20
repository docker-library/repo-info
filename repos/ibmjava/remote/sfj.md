## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:a01c974b8e96976a3a66b723127ef6234b2e5dcc74e14b8b69d77328fd90f164
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
$ docker pull ibmjava@sha256:df769d16d40eaa8bde10f99a577264147a469812575b57dc54274426dc16bfe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103046145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4b2745fd8e1e55d28e1698a7e24e78df4241275adba8245cd701b45659f7cd1c`
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
# Fri, 20 Nov 2026 03:22:35 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Fri, 20 Nov 2026 03:22:35 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 20 Nov 2026 03:22:35 GMT
ENV JAVA_VERSION=8.0.8.75
# Fri, 20 Nov 2026 03:23:03 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:23:03 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ba082564e6605eeb2e1abc91a762985d2e8afea393433de08e798c1eee36d028`  
		Last Modified: Tue, 17 Nov 2026 10:29:03 GMT  
		Size: 30.1 MB (30069815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6f68f4b7bf1d2209be0c28dfaf8fc7464006bcd468aa325de5cdef6c423ce4f`  
		Last Modified: Fri, 20 Nov 2026 03:23:13 GMT  
		Size: 1.4 MB (1407564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed01233767f01e22db97d191faf33004e0705fbac5a2582022867a1be88b9a65`  
		Last Modified: Fri, 20 Nov 2026 03:23:15 GMT  
		Size: 71.6 MB (71568766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:89632e3012972a4983befc3f1feaf3a50f58a8f9c82abef65d3cd1075a4ac55b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ac3ec6e2854489272c6ce43451164bf0efa3277b2d18cbff1e262277bd9b748`

```dockerfile
```

-	Layers:
	-	`sha256:48a71e317763ad7d07422a8e09bbb5a5b966482f27937f6f09a56108ffdbb52d`  
		Last Modified: Fri, 20 Nov 2026 03:23:13 GMT  
		Size: 2.1 MB (2140357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:152e7d2d4aff4bc5763b7204e3ee9dc1ef61f2b9e26b977bc444ddf9cb42f1a2`  
		Last Modified: Fri, 20 Nov 2026 03:23:13 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:de7beed12d6547ca0cef2c017f53a44b3cb5c0983716e327d2a4a18165aa7100
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110386114 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3dd8e83de50dd19951c4e80c322fa753ba06050bb70f0b0ebe71ee95739dd2d8`
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
# Fri, 20 Nov 2026 04:59:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 04:59:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:2bcbd2d5d49ac2b6a21365d32cc177518907aba7404ac3a314cfeb66c0d46fb6`  
		Last Modified: Fri, 20 Nov 2026 04:59:29 GMT  
		Size: 73.9 MB (73870744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:5685ac8f8d4f94be64e8608f09fe194d4982531ef562a09ee16b8de5514c9014
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0d070b864698fad8b55d0373dd6fcab14aa46d9ed821225668f398d9d831f55`

```dockerfile
```

-	Layers:
	-	`sha256:ca5f858ebddc2fb7e90e0750e676b4d824bf35b4c8a42c0b187918a382cf47e2`  
		Last Modified: Fri, 20 Nov 2026 04:59:27 GMT  
		Size: 2.1 MB (2144858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f360406998bfb426b9362c937a78a35397c37745db800e413cd6ee4b018adfab`  
		Last Modified: Fri, 20 Nov 2026 04:59:27 GMT  
		Size: 12.6 KB (12634 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:315b46a1a2a94ae8ddccc7dbc479bd8f9cbdabdc515f3f0826332ff1c8f4db62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105035910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1a2fd63f397dad0c1559af4970418ced5585e6cfe98b659d98498ca8107700f`
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
# Fri, 20 Nov 2026 03:22:11 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Fri, 20 Nov 2026 03:22:11 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:9cc949da72a71a652d0f12b43801dbb01c901b04821a2cbf9b7aa54e2dad7a27`  
		Last Modified: Fri, 20 Nov 2026 03:22:30 GMT  
		Size: 75.1 MB (75086394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:b0048df210ee5011647c0a0eefee6d581cda871b8e7f9f5df5a6eec007332b3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d54ea61e37d13bbacbb3fcf13754a27da639235058bc8361b11bbcd58603507`

```dockerfile
```

-	Layers:
	-	`sha256:0da8dd72c2da0670ce423705e490e0731496cfd66cbf205beecd877f9dd393c2`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 2.1 MB (2143979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e0a5b2218d3fe4f95e582cd66b0a7c928c33ad6a878957d7dc67cea828090bf`  
		Last Modified: Fri, 20 Nov 2026 03:22:28 GMT  
		Size: 12.6 KB (12600 bytes)  
		MIME: application/vnd.in-toto+json
