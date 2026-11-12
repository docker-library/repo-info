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
