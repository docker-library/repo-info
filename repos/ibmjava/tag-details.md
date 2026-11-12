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
$ docker pull ibmjava@sha256:9b543708bee7a882d1fd27b3b6bd08cd36688aecb84e6d1adb2930af9c70bed6
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
$ docker pull ibmjava@sha256:0f30dadba9b26210f4200e54b9e3093be7ca21f26348a781bfd674ebff023edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168364396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773e6b0b35567ba7254de14c9caa82b642937dd2c09f53bcb1f579beca58be8`
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
# Thu, 12 Nov 2026 17:04:22 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:04:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:04:22 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:05:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:05:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb49cd017182ac738b6e0406a6633a4d333730dade53919ad725ae1e2fcf9510`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 1.4 MB (1407366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dcc709562cc1e07dab930d7d23a32afff049b8601448bb82f2bfee8797b0ed`  
		Last Modified: Thu, 12 Nov 2026 17:05:18 GMT  
		Size: 136.9 MB (136887497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:78bdaf9aa9eca16a417be13658e9410bdf75ffc696dcc6edb09c770fc19b47d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fca47788c8ffcc13b61e9767f09834fab0ebffbed32635bf3f469201cf41fc1`

```dockerfile
```

-	Layers:
	-	`sha256:e3be46f705a36f51dc4f26657bd50c298f66898259b038f9f89ca03c1a15f3ea`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 2.2 MB (2157924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cea1b9f9a70d3586fce68d060b24281df987297ab421a61dd191e0d2f78bf9`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:d1df9a697e45da04ba01e6d485c870d21124652ee4697722c00f4b3032eaac02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (173982666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9bb2cbd1a6e56c7e57e5c86a35a9419d016cb4b659bd4f51f6c1803e3f8654`
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
# Thu, 12 Nov 2026 17:04:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:04:34 GMT
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
	-	`sha256:49e0307f1be0b1bab2ed3fe92e5137c438de28c7790bbf3120f9e99beda6acbe`  
		Last Modified: Thu, 12 Nov 2026 17:05:13 GMT  
		Size: 137.5 MB (137470759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:f4f84914ca9c76bf9376fb843a1833934cf1558871c671f8ca264a7a3d30d205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbcbe63ed77b19a965d87c8fe631240520d2554528aa3d789b4774223794c99`

```dockerfile
```

-	Layers:
	-	`sha256:c61c3ad7545449e3eb0859d27ba61c19490f11bba8011f39d64191bfbf4783de`  
		Last Modified: Thu, 12 Nov 2026 17:05:09 GMT  
		Size: 2.2 MB (2161214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36d02aa9f47d20cbda216fb9c573d67ec307946c211f81c5b5aea38ab4119588`  
		Last Modified: Thu, 12 Nov 2026 17:05:09 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8` - linux; s390x

```console
$ docker pull ibmjava@sha256:a3130b8ab0935e3dddf92f2334e3a89945e604dfbdc32b305958b660432c90ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168114512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5458d8c48e1b6562f980f4ce66610f0933b48530068e788b40b81e6dec65102f`
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
# Thu, 12 Nov 2026 17:19:50 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:19:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:19:50 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:21:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:21:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ee971bee4c45f08194cd2311c6f51955f945c5a0fa74935d1fe8a85ef452dc3b`  
		Last Modified: Tue, 10 Nov 2026 08:55:22 GMT  
		Size: 28.5 MB (28538219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64b559f9bb3caf51a4780c110eb775d5755bdb285a0ab1a8ae0ea706a273da2`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 1.4 MB (1410463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c4deace7930b9865edf222774fed9e467c71de12740ce762e253b6cda14bc8`  
		Last Modified: Thu, 12 Nov 2026 17:21:47 GMT  
		Size: 138.2 MB (138165830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8` - unknown; unknown

```console
$ docker pull ibmjava@sha256:99efd2955ec5d7e1f5785c2b1dc66083cbd2242f4d118b62fe40a55efa9e76bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd31bf34bb728a1b19b9e1deb811da05718dcfd9e84f29aecd6f61df2a093db5`

```dockerfile
```

-	Layers:
	-	`sha256:8b71f666d84ac7f410098001a65540f12a06bd1cd74b5dad5a3ec3641ee5e919`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 2.2 MB (2157871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5720117044c7115b8137c3b6d051f21d98e9a85e66ceeb9068c5e429c3745729`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:8-jre`

```console
$ docker pull ibmjava@sha256:9b543708bee7a882d1fd27b3b6bd08cd36688aecb84e6d1adb2930af9c70bed6
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
$ docker pull ibmjava@sha256:0f30dadba9b26210f4200e54b9e3093be7ca21f26348a781bfd674ebff023edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168364396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773e6b0b35567ba7254de14c9caa82b642937dd2c09f53bcb1f579beca58be8`
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
# Thu, 12 Nov 2026 17:04:22 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:04:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:04:22 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:05:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:05:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb49cd017182ac738b6e0406a6633a4d333730dade53919ad725ae1e2fcf9510`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 1.4 MB (1407366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dcc709562cc1e07dab930d7d23a32afff049b8601448bb82f2bfee8797b0ed`  
		Last Modified: Thu, 12 Nov 2026 17:05:18 GMT  
		Size: 136.9 MB (136887497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:78bdaf9aa9eca16a417be13658e9410bdf75ffc696dcc6edb09c770fc19b47d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fca47788c8ffcc13b61e9767f09834fab0ebffbed32635bf3f469201cf41fc1`

```dockerfile
```

-	Layers:
	-	`sha256:e3be46f705a36f51dc4f26657bd50c298f66898259b038f9f89ca03c1a15f3ea`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 2.2 MB (2157924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cea1b9f9a70d3586fce68d060b24281df987297ab421a61dd191e0d2f78bf9`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:d1df9a697e45da04ba01e6d485c870d21124652ee4697722c00f4b3032eaac02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (173982666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9bb2cbd1a6e56c7e57e5c86a35a9419d016cb4b659bd4f51f6c1803e3f8654`
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
# Thu, 12 Nov 2026 17:04:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:04:34 GMT
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
	-	`sha256:49e0307f1be0b1bab2ed3fe92e5137c438de28c7790bbf3120f9e99beda6acbe`  
		Last Modified: Thu, 12 Nov 2026 17:05:13 GMT  
		Size: 137.5 MB (137470759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:f4f84914ca9c76bf9376fb843a1833934cf1558871c671f8ca264a7a3d30d205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbcbe63ed77b19a965d87c8fe631240520d2554528aa3d789b4774223794c99`

```dockerfile
```

-	Layers:
	-	`sha256:c61c3ad7545449e3eb0859d27ba61c19490f11bba8011f39d64191bfbf4783de`  
		Last Modified: Thu, 12 Nov 2026 17:05:09 GMT  
		Size: 2.2 MB (2161214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36d02aa9f47d20cbda216fb9c573d67ec307946c211f81c5b5aea38ab4119588`  
		Last Modified: Thu, 12 Nov 2026 17:05:09 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:a3130b8ab0935e3dddf92f2334e3a89945e604dfbdc32b305958b660432c90ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168114512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5458d8c48e1b6562f980f4ce66610f0933b48530068e788b40b81e6dec65102f`
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
# Thu, 12 Nov 2026 17:19:50 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:19:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:19:50 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:21:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:21:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ee971bee4c45f08194cd2311c6f51955f945c5a0fa74935d1fe8a85ef452dc3b`  
		Last Modified: Tue, 10 Nov 2026 08:55:22 GMT  
		Size: 28.5 MB (28538219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64b559f9bb3caf51a4780c110eb775d5755bdb285a0ab1a8ae0ea706a273da2`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 1.4 MB (1410463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c4deace7930b9865edf222774fed9e467c71de12740ce762e253b6cda14bc8`  
		Last Modified: Thu, 12 Nov 2026 17:21:47 GMT  
		Size: 138.2 MB (138165830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:99efd2955ec5d7e1f5785c2b1dc66083cbd2242f4d118b62fe40a55efa9e76bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd31bf34bb728a1b19b9e1deb811da05718dcfd9e84f29aecd6f61df2a093db5`

```dockerfile
```

-	Layers:
	-	`sha256:8b71f666d84ac7f410098001a65540f12a06bd1cd74b5dad5a3ec3641ee5e919`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 2.2 MB (2157871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5720117044c7115b8137c3b6d051f21d98e9a85e66ceeb9068c5e429c3745729`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

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

## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:c9460f579ff21d462c307cd92ba7110669ad965cb975e3d9a7696a04b067992c
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
$ docker pull ibmjava@sha256:eb2d7077412d3fb7d0d24d44b5932515c948ade285618b8dea1342a851cc56cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.7 MB (102697534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7451791847de72bbcde9e465b51c89babbe31c39692256b26edf46b01ba40d`
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
# Thu, 12 Nov 2026 17:05:08 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:05:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:05:08 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:05:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:05:31 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6452123695e9695728b6ca82011a61946e92f744231e41d392a1fdc7a5c14d5`  
		Last Modified: Thu, 12 Nov 2026 17:05:42 GMT  
		Size: 1.4 MB (1407380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989b6500538f2cbcdec84edb380f966aaa38445d244b0c218537b59f821754ad`  
		Last Modified: Thu, 12 Nov 2026 17:05:44 GMT  
		Size: 71.2 MB (71220621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:6707704b1df4b2d7cf963f8612549624ce40351c9e49b43c1508dab3e38a0021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28d456b5d3dcfaeb6ad49e9f1efae7a309f62ec719e915d379a7de8b7fffcb`

```dockerfile
```

-	Layers:
	-	`sha256:665145a71d87a15493f52351dc7394508c664d2209cfee51132a0f55713eef6e`  
		Last Modified: Thu, 12 Nov 2026 17:05:42 GMT  
		Size: 2.1 MB (2140357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da30e0325d34cdcde1bd5d8d77c3c92729d658e1746f1ce25d680d8bce57932e`  
		Last Modified: Thu, 12 Nov 2026 17:05:42 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:f14e5479c60520047fbc17b31e231667127301fdfb5d1a96831fefbe2bfa0fc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108502434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5306920001765c86779f59957deda8bece87d759898bfaa506bc2808d5857ccb`
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
# Thu, 12 Nov 2026 17:04:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:04:13 GMT
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
	-	`sha256:4e20a8aef29b8dca186c397b958c8438db54e9d1b8d31baf4cb8263b53a95c76`  
		Last Modified: Thu, 12 Nov 2026 17:04:55 GMT  
		Size: 72.0 MB (71990527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:36be2a798796e774ca108961bd652cd7dea34ca247191f2a036d987f19dc8058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74f125785d0bab65aca79c32ddc93ce650616148685e4cf76d17804b39c1b4c`

```dockerfile
```

-	Layers:
	-	`sha256:698467cff7629626bbee9603867bb7916f29ab6da3c9cb8842bce712aa7c3562`  
		Last Modified: Thu, 12 Nov 2026 17:04:53 GMT  
		Size: 2.1 MB (2144858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:422965fc27b02fa21130b36b8c264740c0b6c955d2c3e2c145a68afffc144f74`  
		Last Modified: Thu, 12 Nov 2026 17:04:53 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:7cad557ee90196965eb9ab0cea97b287b01acb432d500c4db6313d11fe623ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104669392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fc72d4de0b3ac4379c4195b71012d5ac0a883876ad1bb7eaa6c0bf1aac3f19`
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
# Thu, 12 Nov 2026 17:20:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:20:23 GMT
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
	-	`sha256:b497df64d9e7916042490d73513a8f473e55c8c7e4e18014e0e0c2af3b10e6ab`  
		Last Modified: Thu, 12 Nov 2026 17:20:51 GMT  
		Size: 74.7 MB (74720652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:de8ef212ec7ad1a38dc8e4838104caa872438c22338ea7533bf18170aaa3b908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ce9eb1894c4d5ad6cfdf23053b54963ea11ebcb75c4cdee9205518b91dae21`

```dockerfile
```

-	Layers:
	-	`sha256:7c1f42b0cf4ad4ead464907ee7eead7280f8dfaccb824ecc3c9042a4ea188353`  
		Last Modified: Thu, 12 Nov 2026 17:20:48 GMT  
		Size: 2.1 MB (2143979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e727d5809b8af7cd073eff2fc035abbe212feeb8190657b5f423bf483b484ac2`  
		Last Modified: Thu, 12 Nov 2026 17:20:48 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:jre`

```console
$ docker pull ibmjava@sha256:9b543708bee7a882d1fd27b3b6bd08cd36688aecb84e6d1adb2930af9c70bed6
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
$ docker pull ibmjava@sha256:0f30dadba9b26210f4200e54b9e3093be7ca21f26348a781bfd674ebff023edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168364396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773e6b0b35567ba7254de14c9caa82b642937dd2c09f53bcb1f579beca58be8`
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
# Thu, 12 Nov 2026 17:04:22 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:04:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:04:22 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:05:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:05:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb49cd017182ac738b6e0406a6633a4d333730dade53919ad725ae1e2fcf9510`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 1.4 MB (1407366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dcc709562cc1e07dab930d7d23a32afff049b8601448bb82f2bfee8797b0ed`  
		Last Modified: Thu, 12 Nov 2026 17:05:18 GMT  
		Size: 136.9 MB (136887497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:78bdaf9aa9eca16a417be13658e9410bdf75ffc696dcc6edb09c770fc19b47d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fca47788c8ffcc13b61e9767f09834fab0ebffbed32635bf3f469201cf41fc1`

```dockerfile
```

-	Layers:
	-	`sha256:e3be46f705a36f51dc4f26657bd50c298f66898259b038f9f89ca03c1a15f3ea`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 2.2 MB (2157924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cea1b9f9a70d3586fce68d060b24281df987297ab421a61dd191e0d2f78bf9`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:d1df9a697e45da04ba01e6d485c870d21124652ee4697722c00f4b3032eaac02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (173982666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9bb2cbd1a6e56c7e57e5c86a35a9419d016cb4b659bd4f51f6c1803e3f8654`
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
# Thu, 12 Nov 2026 17:04:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:04:34 GMT
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
	-	`sha256:49e0307f1be0b1bab2ed3fe92e5137c438de28c7790bbf3120f9e99beda6acbe`  
		Last Modified: Thu, 12 Nov 2026 17:05:13 GMT  
		Size: 137.5 MB (137470759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:f4f84914ca9c76bf9376fb843a1833934cf1558871c671f8ca264a7a3d30d205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbcbe63ed77b19a965d87c8fe631240520d2554528aa3d789b4774223794c99`

```dockerfile
```

-	Layers:
	-	`sha256:c61c3ad7545449e3eb0859d27ba61c19490f11bba8011f39d64191bfbf4783de`  
		Last Modified: Thu, 12 Nov 2026 17:05:09 GMT  
		Size: 2.2 MB (2161214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36d02aa9f47d20cbda216fb9c573d67ec307946c211f81c5b5aea38ab4119588`  
		Last Modified: Thu, 12 Nov 2026 17:05:09 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:jre` - linux; s390x

```console
$ docker pull ibmjava@sha256:a3130b8ab0935e3dddf92f2334e3a89945e604dfbdc32b305958b660432c90ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168114512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5458d8c48e1b6562f980f4ce66610f0933b48530068e788b40b81e6dec65102f`
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
# Thu, 12 Nov 2026 17:19:50 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:19:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:19:50 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:21:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:21:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ee971bee4c45f08194cd2311c6f51955f945c5a0fa74935d1fe8a85ef452dc3b`  
		Last Modified: Tue, 10 Nov 2026 08:55:22 GMT  
		Size: 28.5 MB (28538219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64b559f9bb3caf51a4780c110eb775d5755bdb285a0ab1a8ae0ea706a273da2`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 1.4 MB (1410463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c4deace7930b9865edf222774fed9e467c71de12740ce762e253b6cda14bc8`  
		Last Modified: Thu, 12 Nov 2026 17:21:47 GMT  
		Size: 138.2 MB (138165830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:jre` - unknown; unknown

```console
$ docker pull ibmjava@sha256:99efd2955ec5d7e1f5785c2b1dc66083cbd2242f4d118b62fe40a55efa9e76bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd31bf34bb728a1b19b9e1deb811da05718dcfd9e84f29aecd6f61df2a093db5`

```dockerfile
```

-	Layers:
	-	`sha256:8b71f666d84ac7f410098001a65540f12a06bd1cd74b5dad5a3ec3641ee5e919`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 2.2 MB (2157871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5720117044c7115b8137c3b6d051f21d98e9a85e66ceeb9068c5e429c3745729`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:latest`

```console
$ docker pull ibmjava@sha256:9b543708bee7a882d1fd27b3b6bd08cd36688aecb84e6d1adb2930af9c70bed6
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
$ docker pull ibmjava@sha256:0f30dadba9b26210f4200e54b9e3093be7ca21f26348a781bfd674ebff023edc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.4 MB (168364396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1773e6b0b35567ba7254de14c9caa82b642937dd2c09f53bcb1f579beca58be8`
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
# Thu, 12 Nov 2026 17:04:22 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:04:22 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:04:22 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:05:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:05:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb49cd017182ac738b6e0406a6633a4d333730dade53919ad725ae1e2fcf9510`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 1.4 MB (1407366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dcc709562cc1e07dab930d7d23a32afff049b8601448bb82f2bfee8797b0ed`  
		Last Modified: Thu, 12 Nov 2026 17:05:18 GMT  
		Size: 136.9 MB (136887497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:78bdaf9aa9eca16a417be13658e9410bdf75ffc696dcc6edb09c770fc19b47d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fca47788c8ffcc13b61e9767f09834fab0ebffbed32635bf3f469201cf41fc1`

```dockerfile
```

-	Layers:
	-	`sha256:e3be46f705a36f51dc4f26657bd50c298f66898259b038f9f89ca03c1a15f3ea`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 2.2 MB (2157924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2cea1b9f9a70d3586fce68d060b24281df987297ab421a61dd191e0d2f78bf9`  
		Last Modified: Thu, 12 Nov 2026 17:05:15 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:d1df9a697e45da04ba01e6d485c870d21124652ee4697722c00f4b3032eaac02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.0 MB (173982666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b9bb2cbd1a6e56c7e57e5c86a35a9419d016cb4b659bd4f51f6c1803e3f8654`
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
# Thu, 12 Nov 2026 17:04:34 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:04:34 GMT
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
	-	`sha256:49e0307f1be0b1bab2ed3fe92e5137c438de28c7790bbf3120f9e99beda6acbe`  
		Last Modified: Thu, 12 Nov 2026 17:05:13 GMT  
		Size: 137.5 MB (137470759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:f4f84914ca9c76bf9376fb843a1833934cf1558871c671f8ca264a7a3d30d205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2174452 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9bbcbe63ed77b19a965d87c8fe631240520d2554528aa3d789b4774223794c99`

```dockerfile
```

-	Layers:
	-	`sha256:c61c3ad7545449e3eb0859d27ba61c19490f11bba8011f39d64191bfbf4783de`  
		Last Modified: Thu, 12 Nov 2026 17:05:09 GMT  
		Size: 2.2 MB (2161214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:36d02aa9f47d20cbda216fb9c573d67ec307946c211f81c5b5aea38ab4119588`  
		Last Modified: Thu, 12 Nov 2026 17:05:09 GMT  
		Size: 13.2 KB (13238 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:latest` - linux; s390x

```console
$ docker pull ibmjava@sha256:a3130b8ab0935e3dddf92f2334e3a89945e604dfbdc32b305958b660432c90ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **168.1 MB (168114512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5458d8c48e1b6562f980f4ce66610f0933b48530068e788b40b81e6dec65102f`
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
# Thu, 12 Nov 2026 17:19:50 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:19:50 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:19:50 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:21:04 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='950fde6cd01ee3d8ef2c2c51de27463b1044809fb9131d92f5ea4095878e8a3f';          YML_FILE='8.0/jre/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='9c448e74672217bffe705b6c6e3689c493cd8fdb25ef97e722d9c21526950b37';          YML_FILE='8.0/jre/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='eb3eec9f61f9bf433f5c545c74f4c156a37c43c5b10656c3ebb96b2d99436a32';          YML_FILE='8.0/jre/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:21:04 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:ee971bee4c45f08194cd2311c6f51955f945c5a0fa74935d1fe8a85ef452dc3b`  
		Last Modified: Tue, 10 Nov 2026 08:55:22 GMT  
		Size: 28.5 MB (28538219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64b559f9bb3caf51a4780c110eb775d5755bdb285a0ab1a8ae0ea706a273da2`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 1.4 MB (1410463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44c4deace7930b9865edf222774fed9e467c71de12740ce762e253b6cda14bc8`  
		Last Modified: Thu, 12 Nov 2026 17:21:47 GMT  
		Size: 138.2 MB (138165830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:latest` - unknown; unknown

```console
$ docker pull ibmjava@sha256:99efd2955ec5d7e1f5785c2b1dc66083cbd2242f4d118b62fe40a55efa9e76bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2171063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd31bf34bb728a1b19b9e1deb811da05718dcfd9e84f29aecd6f61df2a093db5`

```dockerfile
```

-	Layers:
	-	`sha256:8b71f666d84ac7f410098001a65540f12a06bd1cd74b5dad5a3ec3641ee5e919`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 2.2 MB (2157871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5720117044c7115b8137c3b6d051f21d98e9a85e66ceeb9068c5e429c3745729`  
		Last Modified: Thu, 12 Nov 2026 17:21:43 GMT  
		Size: 13.2 KB (13192 bytes)  
		MIME: application/vnd.in-toto+json

## `ibmjava:sdk`

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

### `ibmjava:sdk` - linux; amd64

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

### `ibmjava:sdk` - unknown; unknown

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

### `ibmjava:sdk` - linux; ppc64le

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

### `ibmjava:sdk` - unknown; unknown

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

### `ibmjava:sdk` - linux; s390x

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

### `ibmjava:sdk` - unknown; unknown

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

## `ibmjava:sfj`

```console
$ docker pull ibmjava@sha256:c9460f579ff21d462c307cd92ba7110669ad965cb975e3d9a7696a04b067992c
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
$ docker pull ibmjava@sha256:eb2d7077412d3fb7d0d24d44b5932515c948ade285618b8dea1342a851cc56cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.7 MB (102697534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa7451791847de72bbcde9e465b51c89babbe31c39692256b26edf46b01ba40d`
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
# Thu, 12 Nov 2026 17:05:08 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 12 Nov 2026 17:05:08 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 12 Nov 2026 17:05:08 GMT
ENV JAVA_VERSION=8.0.8.71
# Thu, 12 Nov 2026 17:05:31 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:05:31 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:02163de04dd1fb14a97b06804be3fbc51b564fa8744b8f97153744e0cba5de4c`  
		Last Modified: Tue, 10 Nov 2026 08:54:46 GMT  
		Size: 30.1 MB (30069533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6452123695e9695728b6ca82011a61946e92f744231e41d392a1fdc7a5c14d5`  
		Last Modified: Thu, 12 Nov 2026 17:05:42 GMT  
		Size: 1.4 MB (1407380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989b6500538f2cbcdec84edb380f966aaa38445d244b0c218537b59f821754ad`  
		Last Modified: Thu, 12 Nov 2026 17:05:44 GMT  
		Size: 71.2 MB (71220621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:6707704b1df4b2d7cf963f8612549624ce40351c9e49b43c1508dab3e38a0021
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e28d456b5d3dcfaeb6ad49e9f1efae7a309f62ec719e915d379a7de8b7fffcb`

```dockerfile
```

-	Layers:
	-	`sha256:665145a71d87a15493f52351dc7394508c664d2209cfee51132a0f55713eef6e`  
		Last Modified: Thu, 12 Nov 2026 17:05:42 GMT  
		Size: 2.1 MB (2140357 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:da30e0325d34cdcde1bd5d8d77c3c92729d658e1746f1ce25d680d8bce57932e`  
		Last Modified: Thu, 12 Nov 2026 17:05:42 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:f14e5479c60520047fbc17b31e231667127301fdfb5d1a96831fefbe2bfa0fc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108502434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5306920001765c86779f59957deda8bece87d759898bfaa506bc2808d5857ccb`
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
# Thu, 12 Nov 2026 17:04:13 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:04:13 GMT
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
	-	`sha256:4e20a8aef29b8dca186c397b958c8438db54e9d1b8d31baf4cb8263b53a95c76`  
		Last Modified: Thu, 12 Nov 2026 17:04:55 GMT  
		Size: 72.0 MB (71990527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:36be2a798796e774ca108961bd652cd7dea34ca247191f2a036d987f19dc8058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c74f125785d0bab65aca79c32ddc93ce650616148685e4cf76d17804b39c1b4c`

```dockerfile
```

-	Layers:
	-	`sha256:698467cff7629626bbee9603867bb7916f29ab6da3c9cb8842bce712aa7c3562`  
		Last Modified: Thu, 12 Nov 2026 17:04:53 GMT  
		Size: 2.1 MB (2144858 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:422965fc27b02fa21130b36b8c264740c0b6c955d2c3e2c145a68afffc144f74`  
		Last Modified: Thu, 12 Nov 2026 17:04:53 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:7cad557ee90196965eb9ab0cea97b287b01acb432d500c4db6313d11fe623ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104669392 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63fc72d4de0b3ac4379c4195b71012d5ac0a883876ad1bb7eaa6c0bf1aac3f19`
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
# Thu, 12 Nov 2026 17:20:23 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='a09e3e5c55a839b5a19a55de76db0ff4db474173da91d20d06a1409896a1c23a';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='87f8fd11be1217a752d579948df4a15ecd9f8d82c5bc687ddfe97904e2311369';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='ca078c1f555989d1f467d2bcf6fd44644087c3b4f5d3f559233f42871ccf2f37';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 12 Nov 2026 17:20:23 GMT
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
	-	`sha256:b497df64d9e7916042490d73513a8f473e55c8c7e4e18014e0e0c2af3b10e6ab`  
		Last Modified: Thu, 12 Nov 2026 17:20:51 GMT  
		Size: 74.7 MB (74720652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:de8ef212ec7ad1a38dc8e4838104caa872438c22338ea7533bf18170aaa3b908
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63ce9eb1894c4d5ad6cfdf23053b54963ea11ebcb75c4cdee9205518b91dae21`

```dockerfile
```

-	Layers:
	-	`sha256:7c1f42b0cf4ad4ead464907ee7eead7280f8dfaccb824ecc3c9042a4ea188353`  
		Last Modified: Thu, 12 Nov 2026 17:20:48 GMT  
		Size: 2.1 MB (2143979 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e727d5809b8af7cd073eff2fc035abbe212feeb8190657b5f423bf483b484ac2`  
		Last Modified: Thu, 12 Nov 2026 17:20:48 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
