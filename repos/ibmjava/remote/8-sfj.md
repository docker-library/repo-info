## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:630d9c0da03142a8268f14badb85ef5f826e771ad98f15168b178d7788b437d9
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
$ docker pull ibmjava@sha256:29919fae82e4fc38f015cb023cc2c1b0c6d3a960a7cc062be4e6f3a7970241de
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.0 MB (103045742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf97e9181cc217db11af33aea57adaf5482cd024851f620e3251597299708e08`
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
# Mon, 16 Nov 2026 18:38:34 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Mon, 16 Nov 2026 18:38:34 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 16 Nov 2026 18:38:34 GMT
ENV JAVA_VERSION=8.0.8.75
# Mon, 16 Nov 2026 18:39:00 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 16 Nov 2026 18:39:00 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cc133e25df1acffba8e712b110805ab2bddb824391c78147cabe32e143c4d60`  
		Last Modified: Mon, 16 Nov 2026 18:39:11 GMT  
		Size: 1.4 MB (1407442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9de4bf187afc41bc0053f73cde9c22ff134bcdd61b67f574f9c5f5f97decd54`  
		Last Modified: Mon, 16 Nov 2026 18:39:12 GMT  
		Size: 71.6 MB (71568767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:5c6abdbe78d92c0714c9ba93739e41683eeebeb3d8d67a68a49d49644a7a1ac6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d5dd881a96ee321c57b0a265ee55fe5aedebb721a26fb6755a1fec232330c0e`

```dockerfile
```

-	Layers:
	-	`sha256:92bf9541d51a8bba09647760b6ad110b712803b1332430c468c23042ee64de06`  
		Last Modified: Mon, 16 Nov 2026 18:39:11 GMT  
		Size: 2.1 MB (2140357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:802516e088538f81167a546989ff7195627f3610442d35d51a606475beabb317`  
		Last Modified: Mon, 16 Nov 2026 18:39:10 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b6a61ea7f151926fb6c1fc9d9d185dbc2291822c0931d077f57adc339f4cabf8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.4 MB (110382665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d199bcd310b0736caa4aa5005f2a4db9e6ac24b829b86920057ec4bac163ca4`
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
ENV JAVA_VERSION=8.0.8.75
# Mon, 16 Nov 2026 18:34:46 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 16 Nov 2026 18:34:46 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:cd7c9db613ce7af2441de3497df7fd68d167cf3d8a8d629c22652637519cc923`  
		Last Modified: Mon, 16 Nov 2026 18:35:20 GMT  
		Size: 73.9 MB (73870758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:2f2b8f70eaaf81cac392880ba31e7e25a15562890151909d8773a6d4334586f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c829580fdaf170f481114198210a02de9ef4fea1d31add6150f966429d3f783b`

```dockerfile
```

-	Layers:
	-	`sha256:7d213875aae448e941c54369f99dc3b4da2efc1e6354e89d043e656d96fffc85`  
		Last Modified: Mon, 16 Nov 2026 18:35:18 GMT  
		Size: 2.1 MB (2144858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07ab671b8f3776c83e94f8062db73382546a69e2cdaaebd9a50f8316271c92fb`  
		Last Modified: Mon, 16 Nov 2026 18:35:18 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:4004d8afa54a9b3b79034ef2afc42e9b0de2888534c453317971b63e1fd297f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.0 MB (105035129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32bf6aa75ba4025d3bc3b2d7b58e4e2e084f358e4e5787ba717c9d3d897475c4`
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
ENV JAVA_VERSION=8.0.8.75
# Mon, 16 Nov 2026 18:34:59 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='971af27360c3646fa27513c7859e6e8876426f93ae0cab72dd7081e3b4145d2b';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='e1eb53cd2883942123e5dd74f3364059ec81f1e93d01969b0661ec7094787914';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='acd0a33e5c06df4a4f6f9dce7eed9e7a023f0c940618acd31c02b1ead22fe566';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Mon, 16 Nov 2026 18:34:59 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:c5f24910678b0b3cf4b3284a9e526308bc7f3401ba00e6a1147748f61678d239`  
		Last Modified: Mon, 16 Nov 2026 18:35:30 GMT  
		Size: 75.1 MB (75086389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:0d165aa93a541f0e272b543e2c21a55e29f0b10e026fa275b491d733c39e85c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e3881edf3b7572934252a0449917904ddb3517bb0af9eebe487234eff5326ae`

```dockerfile
```

-	Layers:
	-	`sha256:c5139531661ce39392a143198d5e6e6594a0bac1aedb68e45f05f94d1416b2d9`  
		Last Modified: Mon, 16 Nov 2026 18:35:27 GMT  
		Size: 2.1 MB (2143979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:615c8c253def281c2fefe8d2ba4fdd5bb9169d05fe26f78c99c43fd086b51e20`  
		Last Modified: Mon, 16 Nov 2026 18:35:28 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
