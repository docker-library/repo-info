## `ibmjava:8-sdk`

```console
$ docker pull ibmjava@sha256:5c5ec2a6224d2efd7ab3504f8a510fdc6c36d50613c5a0942fe2d77bf9c4fd9d
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
$ docker pull ibmjava@sha256:1672770ceadcbae0d64031cc434b7227cf8778dd78228c996b47bbc8856ee352
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.4 MB (205401360 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14795d1f52e49f457096db1cc106d12b410ffdb8863f5bdef430d7da63906152`
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
# Tue, 28 Jul 2026 20:51:43 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Tue, 28 Jul 2026 20:51:43 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 28 Jul 2026 20:51:43 GMT
ENV JAVA_VERSION=8.0.8.70
# Tue, 28 Jul 2026 20:51:53 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:53 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:d6834b4a794c03efa2c998853e64969fa8851b11b2ade63292268872a37759d0`  
		Last Modified: Mon, 29 Jun 2026 11:25:17 GMT  
		Size: 29.7 MB (29738881 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1b2a34851f8e4d5dda02bd181ef0e883fa54552544f97154b54a8833cd4ff91`  
		Last Modified: Tue, 28 Jul 2026 20:52:09 GMT  
		Size: 1.4 MB (1408907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcf520065bcc05354c1a4bd446e18d265c2d56c05b11dac5a702908d7a001c15`  
		Last Modified: Tue, 28 Jul 2026 20:52:13 GMT  
		Size: 174.3 MB (174253572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:d8b201b54c25824f5f55eb9dbb6d3d43d36ce624753d266d927bca8b0d5b3c85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3081433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e01d6e50ca56e1b984563114c7bdd1bf554e729eade2f58f1337f4c631d4e9f0`

```dockerfile
```

-	Layers:
	-	`sha256:94889b68df50caff4479d0353363123a26b202899d137f6e4a34839eb29e5e16`  
		Last Modified: Tue, 28 Jul 2026 20:52:09 GMT  
		Size: 3.1 MB (3068835 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6523a1ebd866399a0c720e283231901a9c7e0f4e61cbf46c8adcc20b8b43148a`  
		Last Modified: Tue, 28 Jul 2026 20:52:09 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; ppc64le

```console
$ docker pull ibmjava@sha256:b89eeb22e9c827574227ca77277b83517e45b3f61ea63533080134848c41a348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211163396 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a1ad74dc0b776d4510183ea2269cfa8a7715b3ef8080de6d4cfcf1742fd6be`
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
# Tue, 28 Jul 2026 20:51:02 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='3dbad870105877617434e8bc7be2f8254de9391add4920347e793aa616aacd00';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='2fa08a3a0bd0b40ea414d85cbe34691471693ca48b0c9056641eb79b27065cc0';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='b3cbe10f8eed41d4addec8de004e1a1be50282060b530a302816f57b234929e1';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Tue, 28 Jul 2026 20:51:02 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
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
	-	`sha256:1eabd7ce83d2a438576838fbb4651118d0844b940505271536f4c45a75c06086`  
		Last Modified: Tue, 28 Jul 2026 20:51:34 GMT  
		Size: 175.0 MB (175026616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:4d089fa404fc17ff4606cd1ebec508aaef7e48d9dee39682f0ccb48ede24c648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.1 MB (3067416 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbc6f1acb4338f2f16b869a7c398a07514b76e4fa5bfec0d0c00e60642976cf5`

```dockerfile
```

-	Layers:
	-	`sha256:536ee8fec6cc9235c95c83e744f21f66bd5c3eb078600626828b1debec40b0c9`  
		Last Modified: Tue, 28 Jul 2026 20:51:30 GMT  
		Size: 3.1 MB (3054784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00e594cfa4ebc9a62e0f61fe4f864075efd0f5db774898bae133a40d297be507`  
		Last Modified: Tue, 28 Jul 2026 20:51:30 GMT  
		Size: 12.6 KB (12632 bytes)  
		MIME: application/vnd.in-toto+json

### `ibmjava:8-sdk` - linux; s390x

```console
$ docker pull ibmjava@sha256:525bb581a605ff134a54b05278a7636802b36bc477c455563eb896ca07bdfa17
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **194.8 MB (194785399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66e1d23562412b48f8010524d5acbbda188c54c23842ed671130749bdcd517d4`
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
# Thu, 02 Jul 2026 02:24:01 GMT
MAINTAINER Jayashree Gopi <jayasg12@in.ibm.com> (@jayasg12)
# Thu, 02 Jul 2026 02:24:01 GMT
RUN apt-get update     && apt-get install -y --no-install-recommends wget ca-certificates     && rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 02:24:01 GMT
ENV JAVA_VERSION=8.0.8.65
# Thu, 02 Jul 2026 02:25:22 GMT
RUN set -eux;     ARCH="$(dpkg --print-architecture)";     case "${ARCH}" in        amd64|x86_64)          ESUM='0978a87ce0b78bf6530fe5b9bd9fb737ff04ecc8dae1c849cb1c42908b1095a8';          YML_FILE='8.0/sdk/linux/x86_64/index.yml';          ;;        ppc64el|ppc64le)          ESUM='731c2693424a66054fcc45624c411461ea8a62efd898a90f508bdbd20c0b6125';          YML_FILE='8.0/sdk/linux/ppc64le/index.yml';          ;;        s390x)          ESUM='8a1cfafb51e8cf4753df40fb9906d3571ae086ed33b1bbcf807c416beac37521';          YML_FILE='8.0/sdk/linux/s390x/index.yml';          ;;        *)          echo "Unsupported arch: ${ARCH}";          exit 1;          ;;     esac;     BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/";     wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE};     JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml);     wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.tgz ${JAVA_URL};     echo "${ESUM}  /tmp/ibm-java.tgz" | sha256sum -c -;     mkdir -p /opt/ibm/java;     tar -xf /tmp/ibm-java.tgz -C /opt/ibm/java --strip-components=1;     rm -f /tmp/index.yml;     rm -f /tmp/ibm-java.tgz; # buildkit
# Thu, 02 Jul 2026 02:25:22 GMT
ENV JAVA_HOME=/opt/ibm/java/jre PATH=/opt/ibm/java/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin IBM_JAVA_OPTIONS=-XX:+UseContainerSupport
```

-	Layers:
	-	`sha256:34e440c1d617a14c5bd409164ca055ea7353290a30638fa560b151e88ea9e046`  
		Last Modified: Mon, 29 Jun 2026 11:25:56 GMT  
		Size: 28.2 MB (28204131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077d98d70f7175644539ba931cd352f09866041f33524d55b14b62e62c1a8769`  
		Last Modified: Thu, 02 Jul 2026 02:24:49 GMT  
		Size: 1.4 MB (1411768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4a14236a6b733391151cbb12a4542696ca75e015a3a8bd782b5b3048b413f8`  
		Last Modified: Thu, 02 Jul 2026 02:25:48 GMT  
		Size: 165.2 MB (165169500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `ibmjava:8-sdk` - unknown; unknown

```console
$ docker pull ibmjava@sha256:c2894be3453f38cf956852100325fbff1e38a1177dc8b390a6bd03e0eca1c779
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.8 MB (2754699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d723bd8104274beb80ed41473c647175063bd0c6a45c9e626153d1b77253575`

```dockerfile
```

-	Layers:
	-	`sha256:115bfdfecd2a711b2b6e987ed89eb13a512a537a1addfa3c781724cbc3159e87`  
		Last Modified: Thu, 02 Jul 2026 02:25:46 GMT  
		Size: 2.7 MB (2742101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:65618a39b3f209a9271074706d4dc9d503a9ae061cda4cae350ca05294b79cdc`  
		Last Modified: Thu, 02 Jul 2026 02:25:46 GMT  
		Size: 12.6 KB (12598 bytes)  
		MIME: application/vnd.in-toto+json
