## `ibmjava:8-sfj`

```console
$ docker pull ibmjava@sha256:44aef1ab65f1007c3e1cfab095c4c0274a0c77da769d5cd91aa8fca19af236aa
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
$ docker pull ibmjava@sha256:169c398e7f38c28108e43393ee41291bf74fcba8a40b8bd19fe211153e219acd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.7 MB (102693342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef7c9b1214946a9c5751eb99c04ef0e2196a0e57138fa0646785ce004ea1c23d`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 11:07:30 GMT
ARG RELEASE
# Mon, 29 Jun 2026 11:07:30 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 11:07:30 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 11:07:32 GMT
ADD file:c5143b228eb55f19ed4d3b653ad68ec7afe54ded0247e090ce3afb9e5484adfb in / 
# Mon, 29 Jun 2026 11:07:32 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 20:51:06 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:51:06 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:51:06 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:18 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:18 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6939bb21e3bed6f38f4c01ff6807f9be688b1fb57c953243ad5ff38e436898dd`  
		Last Modified: Tue, 28 Jul 2026 20:51:29 GMT  
		Size: 1.4 MB (1408939 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f727309486a8283163d6b4e76915e53191e3636f10ca5fc19fd43982737623ad`  
		Last Modified: Tue, 28 Jul 2026 20:51:31 GMT  
		Size: 71.5 MB (71545522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:7f6fb715ad190ffb4985dcd5e1aaf24a7bfac82a5fe1c9dbd02fb4bf6a846921
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2152926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1998ae0eea278cbc4494be20a46a9657a125277785156e85e6502a2dd20f513`

```dockerfile
```

-	Layers:
	-	`sha256:6adcfeb8541a715dea5fe6befa9bb85fe8f9989aa94c4006f2699b0ce85aa72d`  
		Last Modified: Tue, 28 Jul 2026 20:51:29 GMT  
		Size: 2.1 MB (2140325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9dbbd92251dd8599bca3c7a9ddf38dd0978c6d76c44a4cdbffca34c35ea7b06`  
		Last Modified: Tue, 28 Jul 2026 20:51:28 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:f1ebfb83bd8fcfc8007e1865b8105e3d82b84314fbb25b617d4a888b2fc55b05
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.5 MB (108450093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ed23d311beddb721a2e6bb8d0f459c3787bd31acb4fe3f85af57e0a07b3b3c8a`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:35:02 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:35:02 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:35:02 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:35:06 GMT
ADD file:fe88ac7d2b59101d91924b906576ed0bd1506245791beb01e66dafe898d768bb in / 
# Mon, 29 Jun 2026 10:35:07 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 20:49:58 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:49:58 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:49:58 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:50:06 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:50:06 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:cf87e8e9427654cae1c380a7eb2a10971210431259802390d53728f83afd8afa`  
		Last Modified: Mon, 29 Jun 2026 11:25:41 GMT  
		Size: 34.6 MB (34641868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f187a8c0ad68f5a89a6a221f2ccd9af67c955a1add4c88670ea03a1e25541290`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 1.5 MB (1494912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8ac5ee629a4848d9074c06b44e50731b972f5e3e95e822207b5dcc6543e2079`  
		Last Modified: Tue, 28 Jul 2026 20:50:33 GMT  
		Size: 72.3 MB (72313313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:dbeef7d4bf1a6607a408be4418c000b7ccae62b659e612b131c180d8bd95fe83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2157461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1c7d3e705fb3e1bd900daac57230ce75c135a767133f8ecd71c5119dd6d71c22`

```dockerfile
```

-	Layers:
	-	`sha256:07bb3c1686583287af7d77413c73fdade4084213483edc73d6e7cbdf3e4d0da9`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 2.1 MB (2144826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d7d2d24b0db346b335c9292c925046b0d8d7aee155d214844f5e12328b06b07`  
		Last Modified: Tue, 28 Jul 2026 20:50:31 GMT  
		Size: 12.6 KB (12635 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sfj` - linux; s390x

```console
$ docker pull ibmjava@sha256:7ce27db62eb49f6d4a89723636baec717030d88030413d384ae8964c86109df4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104665325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9044132f0ced63480d476cfd681db7713398506bb47ba8f648641ab7a510440`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Mon, 29 Jun 2026 10:41:48 GMT
ARG RELEASE
# Mon, 29 Jun 2026 10:41:48 GMT
ARG LAUNCHPAD_BUILD_ARCH
# Mon, 29 Jun 2026 10:41:48 GMT
LABEL org.opencontainers.image.version=22.04
# Mon, 29 Jun 2026 10:41:49 GMT
ADD file:a7caac22d71edeca734e094edaefd29ba696f6b6850656befefab899becd4181 in / 
# Mon, 29 Jun 2026 10:41:49 GMT
CMD ["/bin/bash"]
# Tue, 28 Jul 2026 21:46:59 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 21:46:59 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 21:46:59 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 21:48:30 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='9294b4d1c8f648dc59c1237d7e5fd4c2a3236e29fb79f83e34c1de1c03522eaa';          YML_FILE='8.0/sfj/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='82a74387fe138a7f79260fb5a52fda243d1f875bf2955209d55db9952d60135e';          YML_FILE='8.0/sfj/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='a5512b6afa58e9a086713de9ef2ab42e80b1541eba51a32a76833b56ed508922';          YML_FILE='8.0/sfj/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 21:48:30 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/jre/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3562d6411d4ce28f47260485c9c8b80e5e6795ebef08c4387aeded00384ad97`  
		Last Modified: Tue, 28 Jul 2026 21:50:58 GMT  
		Size: 1.4 MB (1412414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ba10a9594e64eba536443af4b6146a8bf20fb91b81ce6790fbf656131e16587`  
		Last Modified: Tue, 28 Jul 2026 21:51:02 GMT  
		Size: 75.0 MB (75048780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sfj` - unknown; unknown

```console
$ docker pull ibmjava@sha256:f09b4c6e5d182383dba52d03e77bcd164a299c15124ffe142b6951a017328357
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2156548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd00ef02818ca8c6f9d51dc5f782bd91655ca4b63b95530804562e5ce995d90`

```dockerfile
```

-	Layers:
	-	`sha256:fde4330dce714f7bfd5f989f7661c4a4207a28711b27b41828607adf56db7476`  
		Last Modified: Tue, 28 Jul 2026 21:50:58 GMT  
		Size: 2.1 MB (2143947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ff05c1e3b323ee516bff80403749704982799e8f1c3fdd1ddf7179d1c753e945`  
		Last Modified: Tue, 28 Jul 2026 21:50:58 GMT  
		Size: 12.6 KB (12601 bytes)  
		MIME: application/vnd.in-toto+json
